package com.apptentive.android.sdk.module.engagement.notification;

import android.app.NotificationChannel;
import androidx.annotation.RequiresApi;
@RequiresApi
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/notification/NotificationChannelHolder.class */
public class NotificationChannelHolder {
    private static NotificationChannel instance;

    static {
        NotificationChannel notificationChannel = new NotificationChannel("com.apptentive.notification.channel.DEFAULT", "Apptentive Notifications", 3);
        notificationChannel.setDescription("Channel description");
        notificationChannel.enableLights(true);
        notificationChannel.setLightColor(-65536);
        notificationChannel.enableVibration(true);
        instance = notificationChannel;
    }

    public static NotificationChannel getInstance() {
        return instance;
    }
}
