package com.allinone.callerid.util;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Build;
import androidx.core.app.C0565h;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$string;
import com.allinone.callerid.mvc.controller.nodisturb.NoDisturbActivity;
/* renamed from: com.allinone.callerid.util.l0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/l0.class */
public class C3799l0 {
    /* renamed from: a */
    public static void m24110a(Context context) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (notificationManager != null) {
            notificationManager.cancel(100103);
        }
    }

    /* renamed from: b */
    public static void m24109b(Context context) {
        try {
            if (C3767h1.m24228q0()) {
                return;
            }
            C0565h.C0574e c0574e = new C0565h.C0574e(context, "Showcaller");
            Intent intent = new Intent(context, NoDisturbActivity.class);
            intent.addFlags(268435456);
            c0574e.m33421i(PendingIntent.getActivity(context, 0, intent, 201326592)).m33415o(BitmapFactory.decodeResource(context.getResources(), R$drawable.not_disturb_icon)).m33419k(context.getResources().getString(R$string.Do_not_disturb_turned_on)).m33411s(true).m33429a(0, context.getResources().getString(R$string.TUEN_OFF), PendingIntent.getBroadcast(context, 0, new Intent("com.allinone.callerid.DISTURB_NOTIFICATION_TUENOFF"), 201326592));
            int i = Build.VERSION.SDK_INT;
            if (i >= 21) {
                try {
                    context.getDrawable(R$drawable.not_disturb_small_white);
                    c0574e.m33408v(R$drawable.not_disturb_small_white);
                    c0574e.m33422h(context.getResources().getColor(2131099706));
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            } else {
                c0574e.m33408v(R$drawable.not_disturb_small);
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (i >= 26) {
                NotificationChannel notificationChannel = new NotificationChannel("com.allinone.callerid_notfication_N", "Showcaller", 3);
                if (notificationManager != null) {
                    notificationChannel.setShowBadge(false);
                    notificationChannel.enableVibration(false);
                    notificationChannel.setVibrationPattern(new long[]{0});
                    notificationManager.createNotificationChannel(notificationChannel);
                    c0574e.m33423g("com.allinone.callerid_notfication_N");
                }
            }
            if (notificationManager == null) {
                return;
            }
            notificationManager.notify(100103, c0574e.m33428b());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
