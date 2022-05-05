package com.apptentive.android.sdk.storage;

import android.content.Context;
import com.apptentive.android.sdk.ApptentiveHelper;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.Encryption;
import com.apptentive.android.sdk.comm.ApptentiveHttpClient;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.conversation.ConversationState;
import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.model.Payload;
import com.apptentive.android.sdk.model.PayloadData;
import com.apptentive.android.sdk.model.StoredFile;
import com.apptentive.android.sdk.network.HttpRequestRetryPolicyDefault;
import com.apptentive.android.sdk.notifications.ApptentiveNotification;
import com.apptentive.android.sdk.notifications.ApptentiveNotificationCenter;
import com.apptentive.android.sdk.notifications.ApptentiveNotificationObserver;
import com.apptentive.android.sdk.storage.PayloadSender;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/ApptentiveTaskManager.class */
public class ApptentiveTaskManager implements PayloadStore, EventStore, ApptentiveNotificationObserver, PayloadSender.Listener {
    private boolean appInBackground = true;
    private final ApptentiveDatabaseHelper dbHelper;
    private final PayloadSender payloadSender;
    private final ThreadPoolExecutor singleThreadExecutor;

    /* renamed from: com.apptentive.android.sdk.storage.ApptentiveTaskManager$4 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/ApptentiveTaskManager$4.class */
    class RunnableC08874 implements Runnable {
        final /* synthetic */ ApptentiveTaskManager this$0;

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.this$0.dbHelper.deleteAllPayloads();
            } catch (Exception e) {
                ApptentiveLog.m15643e(ApptentiveLogTag.PAYLOADS, e, "Exception while deleting all payloads", new Object[0]);
                ErrorMetrics.logException(e);
            }
        }
    }

    public ApptentiveTaskManager(Context context, ApptentiveHttpClient apptentiveHttpClient, Encryption encryption) {
        this.dbHelper = new ApptentiveDatabaseHelper(context, encryption);
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadPoolExecutor.CallerRunsPolicy());
        this.singleThreadExecutor = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        PayloadSender payloadSender = new PayloadSender(apptentiveHttpClient, new HttpRequestRetryPolicyDefault(this) { // from class: com.apptentive.android.sdk.storage.ApptentiveTaskManager.1
            @Override // com.apptentive.android.sdk.network.HttpRequestRetryPolicyDefault, com.apptentive.android.sdk.network.HttpRequestRetryPolicy
            public boolean shouldRetryRequest(int i, int i2) {
                return false;
            }
        });
        this.payloadSender = payloadSender;
        payloadSender.setListener(this);
        ApptentiveNotificationCenter defaultCenter = ApptentiveNotificationCenter.defaultCenter();
        defaultCenter.addObserver("CONVERSATION_STATE_DID_CHANGE", this);
        defaultCenter.addObserver("APP_ENTERED_BACKGROUND", this);
        defaultCenter.addObserver("APP_ENTERED_FOREGROUND", this);
    }

    private PayloadData getOldestUnsentPayloadSync() {
        return this.dbHelper.getOldestUnsentPayload();
    }

    private void retrySending(long j) {
        ApptentiveLog.m15646d(ApptentiveLogTag.PAYLOADS, "Retry sending payloads in %d ms", Long.valueOf(j));
        ApptentiveHelper.conversationQueue().dispatchAsync(new DispatchTask() { // from class: com.apptentive.android.sdk.storage.ApptentiveTaskManager.8
            @Override // com.apptentive.android.sdk.util.threading.DispatchTask
            protected void execute() {
                ApptentiveTaskManager.this.singleThreadExecutor.execute(new Runnable() { // from class: com.apptentive.android.sdk.storage.ApptentiveTaskManager.8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            ApptentiveLog.m15646d(ApptentiveLogTag.PAYLOADS, "Retrying sending payloads", new Object[0]);
                            ApptentiveTaskManager.this.sendNextPayloadSync();
                        } catch (Exception e) {
                            ApptentiveLog.m15643e(ApptentiveLogTag.PAYLOADS, e, "Exception while trying to retry sending payloads", new Object[0]);
                            ErrorMetrics.logException(e);
                        }
                    }
                });
            }
        }, j);
    }

    private void sendNextPayload() {
        this.singleThreadExecutor.execute(new Runnable() { // from class: com.apptentive.android.sdk.storage.ApptentiveTaskManager.9
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ApptentiveTaskManager.this.sendNextPayloadSync();
                } catch (Exception e) {
                    ApptentiveLog.m15641e(e, "Exception while trying to send next payload", new Object[0]);
                    ErrorMetrics.logException(e);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendNextPayloadSync() {
        if (this.appInBackground) {
            ApptentiveLog.m15638v(ApptentiveLogTag.PAYLOADS, "Can't send the next payload: the app is in the background", new Object[0]);
        } else if (this.payloadSender.isSendingPayload()) {
            ApptentiveLog.m15638v(ApptentiveLogTag.PAYLOADS, "Can't send the next payload: payload sender is busy", new Object[0]);
        } else {
            try {
                final PayloadData oldestUnsentPayloadSync = getOldestUnsentPayloadSync();
                if (oldestUnsentPayloadSync != null && this.payloadSender.sendPayload(oldestUnsentPayloadSync)) {
                    ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask(this) { // from class: com.apptentive.android.sdk.storage.ApptentiveTaskManager.10
                        @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                        protected void execute() {
                            ApptentiveNotificationCenter.defaultCenter().postNotification("PAYLOAD_WILL_START_SEND", "payload", oldestUnsentPayloadSync);
                        }
                    });
                }
            } catch (Exception e) {
                ApptentiveLog.m15641e(e, "Exception while peeking the next payload for sending", new Object[0]);
                ErrorMetrics.logException(e);
            }
        }
    }

    public Future<Boolean> addCompoundMessageFiles(final List<StoredFile> list) throws Exception {
        return this.singleThreadExecutor.submit(new Callable<Boolean>() { // from class: com.apptentive.android.sdk.storage.ApptentiveTaskManager.7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Boolean call() throws Exception {
                return Boolean.valueOf(ApptentiveTaskManager.this.dbHelper.addCompoundMessageFiles(list));
            }
        });
    }

    public void addPayload(final Payload payload) {
        ApptentiveLog.m15638v(ApptentiveLogTag.PAYLOADS, "Adding payload: %s", payload);
        this.singleThreadExecutor.execute(new Runnable() { // from class: com.apptentive.android.sdk.storage.ApptentiveTaskManager.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ApptentiveTaskManager.this.dbHelper.addPayload(payload);
                    ApptentiveTaskManager.this.sendNextPayloadSync();
                } catch (Exception e) {
                    ApptentiveLog.m15643e(ApptentiveLogTag.PAYLOADS, e, "Exception while adding a payload: %s", payload);
                    ErrorMetrics.logException(e);
                }
            }
        });
    }

    public void deleteAssociatedFiles(final String str) {
        this.singleThreadExecutor.execute(new Runnable() { // from class: com.apptentive.android.sdk.storage.ApptentiveTaskManager.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ApptentiveTaskManager.this.dbHelper.deleteAssociatedFiles(str);
                } catch (Exception e) {
                    ApptentiveLog.m15643e(ApptentiveLogTag.PAYLOADS, e, "Exception while deleting associated file: %s", str);
                    ErrorMetrics.logException(e);
                }
            }
        });
    }

    public void deletePayload(final String str) {
        if (str != null) {
            this.singleThreadExecutor.execute(new Runnable() { // from class: com.apptentive.android.sdk.storage.ApptentiveTaskManager.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ApptentiveTaskManager.this.dbHelper.deletePayload(str);
                        ApptentiveTaskManager.this.sendNextPayloadSync();
                    } catch (Exception e) {
                        ApptentiveLog.m15643e(ApptentiveLogTag.PAYLOADS, e, "Exception while deleting a payload: %s", str);
                        ErrorMetrics.logException(e);
                    }
                }
            });
        }
    }

    public Future<List<StoredFile>> getAssociatedFiles(final String str) throws Exception {
        return this.singleThreadExecutor.submit(new Callable<List<StoredFile>>() { // from class: com.apptentive.android.sdk.storage.ApptentiveTaskManager.6
            @Override // java.util.concurrent.Callable
            public List<StoredFile> call() throws Exception {
                return ApptentiveTaskManager.this.dbHelper.getAssociatedFiles(str);
            }
        });
    }

    @Override // com.apptentive.android.sdk.storage.PayloadSender.Listener
    public void onFinishSending(PayloadSender payloadSender, PayloadData payloadData, boolean z, String str, int i, JSONObject jSONObject) {
        ApptentiveNotificationCenter.defaultCenter().postNotification("PAYLOAD_DID_FINISH_SEND", "payload", payloadData, "successful", (str != null || z) ? Boolean.FALSE : Boolean.TRUE, "responseCode", Integer.valueOf(i), "responseData", jSONObject);
        if (z) {
            ApptentiveLog.m15638v(ApptentiveLogTag.PAYLOADS, "Payload sending was cancelled: %s", payloadData);
            return;
        }
        if (str != null) {
            ApptentiveLog.m15644e(ApptentiveLogTag.PAYLOADS, "Payload sending failed: %s\n%s", payloadData, str);
            if (this.appInBackground) {
                ApptentiveLog.m15638v(ApptentiveLogTag.PAYLOADS, "The app went to the background so we won't remove the payload from the queue", new Object[0]);
                retrySending(5000L);
                return;
            } else if (i == -1) {
                ApptentiveLog.m15638v(ApptentiveLogTag.PAYLOADS, "Payload failed to send due to a connection error.", new Object[0]);
                retrySending(5000L);
                return;
            } else if (i >= 500) {
                ApptentiveLog.m15638v(ApptentiveLogTag.PAYLOADS, "Payload failed to send due to a server error.", new Object[0]);
                retrySending(5000L);
                return;
            }
        } else {
            ApptentiveLog.m15638v(ApptentiveLogTag.PAYLOADS, "Payload was successfully sent: %s", payloadData);
        }
        deletePayload(payloadData.getNonce());
    }

    @Override // com.apptentive.android.sdk.notifications.ApptentiveNotificationObserver
    public void onReceiveNotification(ApptentiveNotification apptentiveNotification) {
        ApptentiveHelper.checkConversationQueue();
        if (apptentiveNotification.hasName("CONVERSATION_STATE_DID_CHANGE")) {
            Conversation conversation = (Conversation) apptentiveNotification.getUserInfo("conversation", Conversation.class);
            Assert.assertNotNull(conversation);
            Assert.assertNotEquals(conversation.getState(), ConversationState.UNDEFINED);
            if (conversation.hasActiveState()) {
                String conversationId = conversation.getConversationId();
                Assert.notNull(conversationId);
                final String str = conversationId;
                String conversationToken = conversation.getConversationToken();
                Assert.notNull(conversationToken);
                final String str2 = conversationToken;
                String localIdentifier = conversation.getLocalIdentifier();
                Assert.notNull(localIdentifier);
                final String str3 = localIdentifier;
                final boolean equals = ConversationState.LEGACY_PENDING.equals(conversation.getPrevState());
                ApptentiveLog.m15646d(ApptentiveLogTag.CONVERSATION, "Conversation %s state changed %s -> %s.", str, conversation.getPrevState(), conversation.getState());
                if (conversation.hasState(ConversationState.ANONYMOUS)) {
                    this.singleThreadExecutor.execute(new Runnable() { // from class: com.apptentive.android.sdk.storage.ApptentiveTaskManager.11
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                ApptentiveTaskManager.this.dbHelper.updateIncompletePayloads(str, str2, str3, equals);
                                ApptentiveTaskManager.this.sendNextPayloadSync();
                            } catch (Exception e) {
                                ApptentiveLog.m15643e(ApptentiveLogTag.CONVERSATION, e, "Exception while trying to update incomplete payloads", new Object[0]);
                                ErrorMetrics.logException(e);
                            }
                        }
                    });
                }
            }
        } else if (apptentiveNotification.hasName("APP_ENTERED_FOREGROUND")) {
            this.appInBackground = false;
            sendNextPayload();
        } else if (apptentiveNotification.hasName("APP_ENTERED_BACKGROUND")) {
            this.appInBackground = true;
        }
    }
}
