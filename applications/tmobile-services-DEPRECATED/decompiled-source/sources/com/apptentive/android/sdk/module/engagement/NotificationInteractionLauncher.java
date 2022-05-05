package com.apptentive.android.sdk.module.engagement;

import android.content.Context;
import android.content.Intent;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.module.engagement.interaction.model.Interaction;
import com.apptentive.android.sdk.module.engagement.notification.ApptentiveNotificationInteractionBroadcastReceiver;
import com.apptentive.android.sdk.util.NotificationUtils;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/NotificationInteractionLauncher.class */
class NotificationInteractionLauncher implements InteractionLauncher {
    @Override // com.apptentive.android.sdk.module.engagement.InteractionLauncher
    public boolean launch(Context context, Interaction interaction) {
        if (!NotificationUtils.isNotificationChannelEnabled(context, "com.apptentive.notification.channel.DEFAULT")) {
            ApptentiveLog.m15644e(ApptentiveLogTag.NOTIFICATIONS, "Unable to engage notification interaction: notification channel is disabled", new Object[0]);
            return false;
        }
        Intent intent = new Intent(context, ApptentiveNotificationInteractionBroadcastReceiver.class);
        intent.setAction("com.apptentive.notification.action.DISPLAY");
        intent.putExtra("com.apptentive.notification.extra.INTERACTION_TYPE", interaction.getType().name());
        intent.putExtra("com.apptentive.notification.extra.INTERACTION_DEFINITION", interaction.toString());
        context.sendBroadcast(intent);
        return true;
    }
}
