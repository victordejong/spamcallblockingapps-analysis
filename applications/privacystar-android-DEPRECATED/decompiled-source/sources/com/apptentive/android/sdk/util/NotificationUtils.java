package com.apptentive.android.sdk.util;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.p001v4.app.NotificationManagerCompat;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/NotificationUtils.class */
public class NotificationUtils {
    public static boolean isNotificationChannelEnabled(Context context, @NonNull String str) {
        if (Build.VERSION.SDK_INT < 26) {
            return NotificationManagerCompat.from(context).areNotificationsEnabled();
        }
        boolean z = false;
        if (StringUtils.isNullOrEmpty(str)) {
            return false;
        }
        NotificationChannel notificationChannel = ((NotificationManager) context.getSystemService("notification")).getNotificationChannel(str);
        if (notificationChannel == null || notificationChannel.getImportance() != 0) {
            z = true;
        }
        return z;
    }
}
