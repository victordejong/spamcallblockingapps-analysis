package com.apptentive.android.sdk.module.messagecenter;

import androidx.annotation.NonNull;
import com.apptentive.android.sdk.ApptentiveHelper;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.model.ApptentiveMessage;
import com.apptentive.android.sdk.model.Configuration;
import com.apptentive.android.sdk.module.messagecenter.MessageManager;
import com.apptentive.android.sdk.notifications.ApptentiveNotificationCenter;
import com.apptentive.android.sdk.util.Destroyable;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/MessagePollingWorker.class */
public class MessagePollingWorker implements Destroyable, MessageManager.MessageFetchListener {
    private final long backgroundPollingInterval;
    private final Configuration conf;
    private final long foregroundPollingInterval;
    private boolean messageCenterInForeground;
    private final MessageManager messageManager;
    private DispatchTask messagePollingTask;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MessagePollingWorker(MessageManager messageManager) {
        if (messageManager != null) {
            this.messageManager = messageManager;
            Configuration load = Configuration.load();
            this.conf = load;
            this.backgroundPollingInterval = load.getMessageCenterBgPoll() * 1000;
            this.foregroundPollingInterval = this.conf.getMessageCenterFgPoll() * 1000;
            ApptentiveLog.m15638v(ApptentiveLogTag.MESSAGES, "Message Polling Worker: bg=%d, fg=%d", Long.valueOf(this.backgroundPollingInterval), Long.valueOf(this.foregroundPollingInterval));
            return;
        }
        throw new IllegalArgumentException("Message manager is null");
    }

    @NonNull
    private DispatchTask createPollingTask() {
        return new DispatchTask() { // from class: com.apptentive.android.sdk.module.messagecenter.MessagePollingWorker.1
            @Override // com.apptentive.android.sdk.util.threading.DispatchTask
            protected void execute() {
                Assert.assertTrue(MessagePollingWorker.this.isPolling(), "Not polling messages");
                if (ApptentiveInternal.canShowMessageCenterInternal(MessagePollingWorker.this.getConversation())) {
                    ApptentiveLog.m15646d(ApptentiveLogTag.MESSAGES, "Checking server for new messages...", new Object[0]);
                    MessagePollingWorker.this.messageManager.fetchAndStoreMessages(MessagePollingWorker.this.messageCenterInForeground, MessagePollingWorker.this.conf.isMessageCenterNotificationPopupEnabled(), MessagePollingWorker.this);
                    return;
                }
                ApptentiveLog.m15635w(ApptentiveLogTag.MESSAGES, "Unable to fetch messages: message center can't be show at this time", new Object[0]);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Conversation getConversation() {
        return this.messageManager.getConversation();
    }

    private String getLocalConversationIdentifier() {
        return getConversation().getLocalIdentifier();
    }

    private long getPollingInterval() {
        return this.messageCenterInForeground ? this.foregroundPollingInterval : this.backgroundPollingInterval;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPolling() {
        return this.messagePollingTask != null;
    }

    private void notifyStartPolling(long j) {
        ApptentiveNotificationCenter.defaultCenter().postNotification("MESSAGES_STARTED_POLLING", "interval", Long.valueOf(j));
    }

    private void notifyStopPolling() {
        ApptentiveNotificationCenter.defaultCenter().postNotification("MESSAGES_STOPPED_POLLING");
    }

    private void startPolling(boolean z) {
        if (z) {
            stopPolling();
        }
        if (!isPolling()) {
            ApptentiveLog.m15638v(ApptentiveLogTag.MESSAGES, "Start polling messages (%s)", getLocalConversationIdentifier());
            DispatchTask createPollingTask = createPollingTask();
            this.messagePollingTask = createPollingTask;
            ApptentiveHelper.dispatchOnConversationQueueOnce(createPollingTask, 0L);
            notifyStartPolling(getPollingInterval());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void appWentToBackground() {
        stopPolling();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void appWentToForeground() {
        startPolling();
    }

    public void destroy() {
        stopPolling();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isMessageCenterInForeground() {
        return this.messageCenterInForeground;
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.MessageManager.MessageFetchListener
    public void onFetchFinish(MessageManager messageManager, List<ApptentiveMessage> list) {
        if (isPolling()) {
            long pollingInterval = getPollingInterval();
            ApptentiveLog.m15638v(ApptentiveLogTag.MESSAGES, "Scheduled polling messages in %d sec", Long.valueOf(pollingInterval / 1000));
            ApptentiveHelper.dispatchOnConversationQueueOnce(this.messagePollingTask, pollingInterval);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMessageCenterInForeground(boolean z) {
        this.messageCenterInForeground = z;
        if (z) {
            startPolling(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startPolling() {
        startPolling(false);
    }

    void stopPolling() {
        if (isPolling()) {
            ApptentiveLog.m15638v(ApptentiveLogTag.MESSAGES, "Stop polling messages (%s)", getLocalConversationIdentifier());
            this.messagePollingTask.cancel();
            this.messagePollingTask = null;
            notifyStopPolling();
        }
    }
}
