package com.apptentive.android.sdk;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.p004v7.app.AppCompatActivity;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.conversation.ConversationDispatchTask;
import com.apptentive.android.sdk.module.engagement.EngagementModule;
import com.apptentive.android.sdk.notifications.ApptentiveNotification;
import com.apptentive.android.sdk.notifications.ApptentiveNotificationCenter;
import com.apptentive.android.sdk.notifications.ApptentiveNotificationObserver;
import com.apptentive.android.sdk.util.threading.DispatchQueue;
import com.apptentive.android.sdk.util.threading.DispatchTask;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/ApptentiveBaseActivity.class */
public abstract class ApptentiveBaseActivity extends AppCompatActivity implements ApptentiveNotificationObserver {
    /* JADX INFO: Access modifiers changed from: protected */
    public void dispatchOnMainQueue(DispatchTask dispatchTask) {
        DispatchQueue.mainQueue().dispatchAsync(dispatchTask);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void engageInternal(final String str) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.ApptentiveBaseActivity.1
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                return EngagementModule.engageInternal(ApptentiveBaseActivity.this, conversation, str);
            }
        }, "engage");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        registerNotifications();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unregisterNotification();
    }

    @Override // com.apptentive.android.sdk.notifications.ApptentiveNotificationObserver
    public void onReceiveNotification(ApptentiveNotification apptentiveNotification) {
    }

    protected void registerNotifications() {
        ApptentiveNotificationCenter.defaultCenter().addObserver(ApptentiveNotifications.NOTIFICATION_INTERACTIONS_SHOULD_DISMISS, this).addObserver(ApptentiveNotifications.NOTIFICATION_CONVERSATION_STATE_DID_CHANGE, this);
    }

    protected void unregisterNotification() {
        ApptentiveNotificationCenter.defaultCenter().removeObserver(this);
    }
}
