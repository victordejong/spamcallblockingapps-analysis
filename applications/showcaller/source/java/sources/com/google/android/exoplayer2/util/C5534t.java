package com.google.android.exoplayer2.util;

import android.annotation.SuppressLint;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
@SuppressLint({"InlinedApi"})
/* renamed from: com.google.android.exoplayer2.util.t */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/t.class */
public final class C5534t {
    /* renamed from: a */
    public static void m18711a(Context context, String str, int i, int i2, int i3) {
        if (C5515h0.f17876a >= 26) {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            NotificationChannel notificationChannel = new NotificationChannel(str, context.getString(i), i3);
            if (i2 != 0) {
                notificationChannel.setDescription(context.getString(i2));
            }
            notificationManager.createNotificationChannel(notificationChannel);
        }
    }
}
