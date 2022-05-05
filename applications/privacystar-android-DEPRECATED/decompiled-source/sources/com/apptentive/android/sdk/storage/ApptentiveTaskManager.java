package com.apptentive.android.sdk.storage;

import android.content.Context;
import com.apptentive.android.sdk.ApptentiveHelper;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.ApptentiveNotifications;
import com.apptentive.android.sdk.comm.ApptentiveHttpClient;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.conversation.ConversationState;
import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.encryption.EncryptionKey;
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
    private final ApptentiveDatabaseHelper dbHelper;
    private final PayloadSender payloadSender;
    private boolean appInBackground = true;
    private final ThreadPoolExecutor singleThreadExecutor = new ThreadPoolExecutor(1, 1, 30, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadPoolExecutor.CallerRunsPolicy());

    public ApptentiveTaskManager(Context context, ApptentiveHttpClient apptentiveHttpClient, EncryptionKey encryptionKey) {
        this.dbHelper = new ApptentiveDatabaseHelper(context, encryptionKey);
        this.singleThreadExecutor.allowCoreThreadTimeOut(true);
        this.payloadSender = new PayloadSender(apptentiveHttpClient, new HttpRequestRetryPolicyDefault() { // from class: com.apptentive.android.sdk.storage.ApptentiveTaskManager.1
            @Override // com.apptentive.android.sdk.network.HttpRequestRetryPolicyDefault, com.apptentive.android.sdk.network.HttpRequestRetryPolicy
            public boolean shouldRetryRequest(int i, int i2) {
                return false;
            }
        });
        this.payloadSender.setListener(this);
        ApptentiveNotificationCenter.defaultCenter().addObserver(ApptentiveNotifications.NOTIFICATION_CONVERSATION_STATE_DID_CHANGE, this).addObserver(ApptentiveNotifications.NOTIFICATION_APP_ENTERED_BACKGROUND, this).addObserver(ApptentiveNotifications.NOTIFICATION_APP_ENTERED_FOREGROUND, this);
    }

    private PayloadData getOldestUnsentPayloadSync() {
        return this.dbHelper.getOldestUnsentPayload();
    }

    private void retrySending(long j) {
        ApptentiveLog.m415d(ApptentiveLogTag.PAYLOADS, "Retry sending payloads in %d ms", Long.valueOf(j));
        ApptentiveHelper.conversationQueue().dispatchAsync(new DispatchTask() { // from class: com.apptentive.android.sdk.storage.ApptentiveTaskManager.8
            @Override // com.apptentive.android.sdk.util.threading.DispatchTask
            protected void execute() {
                ApptentiveTaskManager.this.singleThreadExecutor.execute(new Runnable() { // from class: com.apptentive.android.sdk.storage.ApptentiveTaskManager.8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            ApptentiveLog.m415d(ApptentiveLogTag.PAYLOADS, "Retrying sending payloads", new Object[0]);
                            ApptentiveTaskManager.this.sendNextPayloadSync();
                        } catch (Exception e) {
                            ApptentiveLog.m408e(e, "Exception while trying to retry sending payloads", new Object[0]);
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
                    ApptentiveLog.m408e(e, "Exception while trying to send next payload", new Object[0]);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendNextPayloadSync() {
        if (this.appInBackground) {
            ApptentiveLog.m403v(ApptentiveLogTag.PAYLOADS, "Can't send the next payload: the app is in the background", new Object[0]);
        } else if (this.payloadSender.isSendingPayload()) {
            ApptentiveLog.m403v(ApptentiveLogTag.PAYLOADS, "Can't send the next payload: payload sender is busy", new Object[0]);
        } else {
            try {
                final PayloadData oldestUnsentPayloadSync = getOldestUnsentPayloadSync();
                if (oldestUnsentPayloadSync != null && this.payloadSender.sendPayload(oldestUnsentPayloadSync)) {
                    ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.storage.ApptentiveTaskManager.10
                        @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                        protected void execute() {
                            ApptentiveNotificationCenter.defaultCenter().postNotification(ApptentiveNotifications.NOTIFICATION_PAYLOAD_WILL_START_SEND, "payload", oldestUnsentPayloadSync);
                        }
                    });
                }
            } catch (Exception e) {
                ApptentiveLog.m408e(e, "Exception while peeking the next payload for sending", new Object[0]);
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

    @Override // com.apptentive.android.sdk.storage.PayloadStore
    public void addPayload(final Payload payload) {
        ApptentiveLog.m403v(ApptentiveLogTag.PAYLOADS, "Adding payload: %s", payload);
        this.singleThreadExecutor.execute(new Runnable() { // from class: com.apptentive.android.sdk.storage.ApptentiveTaskManager.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ApptentiveTaskManager.this.dbHelper.addPayload(payload);
                    ApptentiveTaskManager.this.sendNextPayloadSync();
                } catch (Exception e) {
                    ApptentiveLog.m408e(e, "Exception while adding a payload: %s", payload);
                }
            }
        });
    }

    @Override // com.apptentive.android.sdk.storage.PayloadStore
    public void deleteAllPayloads() {
        this.singleThreadExecutor.execute(new Runnable() { // from class: com.apptentive.android.sdk.storage.ApptentiveTaskManager.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ApptentiveTaskManager.this.dbHelper.deleteAllPayloads();
                } catch (Exception e) {
                    ApptentiveLog.m408e(e, "Exception while deleting all payloads", new Object[0]);
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
                    ApptentiveLog.m408e(e, "Exception while deleting associated file: %s", str);
                }
            }
        });
    }

    @Override // com.apptentive.android.sdk.storage.PayloadStore
    public void deletePayload(final String str) {
        if (str != null) {
            this.singleThreadExecutor.execute(new Runnable() { // from class: com.apptentive.android.sdk.storage.ApptentiveTaskManager.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ApptentiveTaskManager.this.dbHelper.deletePayload(str);
                        ApptentiveTaskManager.this.sendNextPayloadSync();
                    } catch (Exception e) {
                        ApptentiveLog.m408e(e, "Exception while deleting a payload: %s", str);
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
        ApptentiveNotificationCenter.defaultCenter().postNotification(ApptentiveNotifications.NOTIFICATION_PAYLOAD_DID_FINISH_SEND, "payload", payloadData, ApptentiveNotifications.NOTIFICATION_KEY_SUCCESSFUL, (str != null || z) ? Boolean.FALSE : Boolean.TRUE, ApptentiveNotifications.NOTIFICATION_KEY_RESPONSE_CODE, Integer.valueOf(i), ApptentiveNotifications.NOTIFICATION_KEY_RESPONSE_DATA, jSONObject);
        if (z) {
            ApptentiveLog.m403v(ApptentiveLogTag.PAYLOADS, "Payload sending was cancelled: %s", payloadData);
            return;
        }
        if (str != null) {
            ApptentiveLog.m411e(ApptentiveLogTag.PAYLOADS, "Payload sending failed: %s\n%s", payloadData, str);
            if (this.appInBackground) {
                ApptentiveLog.m403v(ApptentiveLogTag.PAYLOADS, "The app went to the background so we won't remove the payload from the queue", new Object[0]);
                retrySending(HttpRequestRetryPolicyDefault.DEFAULT_RETRY_TIMEOUT_MILLIS);
                return;
            } else if (i == -1) {
                ApptentiveLog.m403v(ApptentiveLogTag.PAYLOADS, "Payload failed to send due to a connection error.", new Object[0]);
                retrySending(HttpRequestRetryPolicyDefault.DEFAULT_RETRY_TIMEOUT_MILLIS);
                return;
            } else if (i >= 500) {
                ApptentiveLog.m403v(ApptentiveLogTag.PAYLOADS, "Payload failed to send due to a server error.", new Object[0]);
                retrySending(HttpRequestRetryPolicyDefault.DEFAULT_RETRY_TIMEOUT_MILLIS);
                return;
            }
        } else {
            ApptentiveLog.m403v(ApptentiveLogTag.PAYLOADS, "Payload was successfully sent: %s", payloadData);
        }
        deletePayload(payloadData.getNonce());
    }

    @Override // com.apptentive.android.sdk.notifications.ApptentiveNotificationObserver
    public void onReceiveNotification(ApptentiveNotification apptentiveNotification) {
        ApptentiveHelper.checkConversationQueue();
        if (apptentiveNotification.hasName(ApptentiveNotifications.NOTIFICATION_CONVERSATION_STATE_DID_CHANGE)) {
            Conversation conversation = (Conversation) apptentiveNotification.getUserInfo(ApptentiveNotifications.NOTIFICATION_KEY_CONVERSATION, Conversation.class);
            Assert.assertNotNull(conversation);
            Assert.assertNotEquals(conversation.getState(), ConversationState.UNDEFINED);
            if (conversation.hasActiveState()) {
                final String str = (String) Assert.notNull(conversation.getConversationId());
                final String str2 = (String) Assert.notNull(conversation.getConversationToken());
                final String str3 = (String) Assert.notNull(conversation.getLocalIdentifier());
                final boolean equals = ConversationState.LEGACY_PENDING.equals(conversation.getPrevState());
                ApptentiveLog.m415d(ApptentiveLogTag.CONVERSATION, "Conversation %s state changed %s -> %s.", str, conversation.getPrevState(), conversation.getState());
                if (conversation.hasState(ConversationState.ANONYMOUS)) {
                    this.singleThreadExecutor.execute(new Runnable() { // from class: com.apptentive.android.sdk.storage.ApptentiveTaskManager.11
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                ApptentiveTaskManager.this.dbHelper.updateIncompletePayloads(str, str2, str3, equals);
                                ApptentiveTaskManager.this.sendNextPayloadSync();
                            } catch (Exception e) {
                                ApptentiveLog.m410e(ApptentiveLogTag.CONVERSATION, e, "Exception while trying to update incomplete payloads", new Object[0]);
                            }
                        }
                    });
                }
            }
        } else if (apptentiveNotification.hasName(ApptentiveNotifications.NOTIFICATION_APP_ENTERED_FOREGROUND)) {
            this.appInBackground = false;
            sendNextPayload();
        } else if (apptentiveNotification.hasName(ApptentiveNotifications.NOTIFICATION_APP_ENTERED_BACKGROUND)) {
            this.appInBackground = true;
        }
    }

    public void reset(Context context) {
        this.dbHelper.reset(context);
    }
}
