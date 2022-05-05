package com.apptentive.android.sdk.module.engagement.notification;

import android.app.NotificationChannel;
import android.support.annotation.RequiresApi;
import android.support.p001v4.internal.view.SupportMenu;
import com.apptentive.android.sdk.util.Constants;
@RequiresApi(26)
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/notification/NotificationChannelHolder.class */
public class NotificationChannelHolder {
    private static NotificationChannel instance;

    static {
        NotificationChannel notificationChannel = new NotificationChannel(Constants.NOTIFICATION_CHANNEL_DEFAULT, "Apptentive Notifications", 3);
        notificationChannel.setDescription("Channel description");
        notificationChannel.enableLights(true);
        notificationChannel.setLightColor(SupportMenu.CATEGORY_MASK);
        notificationChannel.enableVibration(true);
        instance = notificationChannel;
    }

    public static NotificationChannel getInstance() {
        return instance;
    }
}
