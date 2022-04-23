package com.apptentive.android.sdk.module.engagement.notification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.debug.ErrorMetrics;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/notification/ApptentiveNotificationInteractionBroadcastReceiver.class */
public class ApptentiveNotificationInteractionBroadcastReceiver extends BroadcastReceiver {
    private static final InteractionNotificationBroadcastReceiverHandler DEFAULT_HANDLER = new DefaultInteractionNotificationBroadcastReceiverHandler();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            DEFAULT_HANDLER.handleBroadcast(context, intent);
        } catch (Exception e) {
            ApptentiveLog.m15634w(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, e, "Error handling Apptentive Interaction Notification broadcast.", new Object[0]);
            ErrorMetrics.logException(e);
        }
    }
}
