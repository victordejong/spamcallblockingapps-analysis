package com.callerid.block.util;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Build;
import androidx.core.app.C0253i;
import com.callerid.block.R$color;
import com.callerid.block.R$drawable;
import com.callerid.block.R$mipmap;
import com.callerid.block.R$string;
import com.callerid.block.main.MainActivity;
/* renamed from: com.callerid.block.util.h0 */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/h0.class */
public class C1181h0 {
    /* renamed from: a */
    public static void m9844a(Context context) {
        if (!C1216t0.m9591U()) {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            Intent intent = new Intent(context, MainActivity.class);
            intent.putExtra("download_db", true);
            PendingIntent activity = PendingIntent.getActivity(context, 1, intent, 134217728);
            C0253i.C0256e eVar = new C0253i.C0256e(context, context.getResources().getString(2131755055));
            eVar.m13615j(context.getResources().getString(R$string.offline_download_title));
            eVar.m13616i(context.getResources().getString(R$string.offline_download_content));
            eVar.m13617h(activity);
            eVar.m13601x(context.getResources().getString(2131755055));
            eVar.m13625A(System.currentTimeMillis());
            eVar.m13607r(false);
            eVar.m13611n(BitmapFactory.decodeResource(context.getResources(), R$mipmap.ic_launcher));
            eVar.m13620e(true);
            try {
                int i = Build.VERSION.SDK_INT;
                if (i >= 26) {
                    NotificationChannel notificationChannel = new NotificationChannel("com.callerid.block_notfication_N", context.getResources().getString(2131755055), 3);
                    if (notificationManager != null) {
                        notificationManager.createNotificationChannel(notificationChannel);
                        eVar.m13619f("com.callerid.block_notfication_N");
                    }
                }
                if (i >= 16) {
                    eVar.m13606s(0);
                }
                if (i >= 21) {
                    try {
                        context.getDrawable(R$drawable.icon_small);
                        eVar.m13604u(R$drawable.icon_small);
                        eVar.m13618g(context.getResources().getColor(R$color.colorPrimary));
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                } else {
                    eVar.m13604u(R$drawable.icon_small_normal);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (notificationManager != null) {
                notificationManager.notify(3, eVar.m13624a());
            }
        }
    }

    /* renamed from: b */
    public static void m9843b(Context context) {
        if (!C1216t0.m9591U()) {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            Intent intent = new Intent(context, MainActivity.class);
            intent.putExtra("update_db", true);
            PendingIntent activity = PendingIntent.getActivity(context, 1, intent, 134217728);
            C0253i.C0256e eVar = new C0253i.C0256e(context, context.getResources().getString(2131755055));
            eVar.m13615j(context.getResources().getString(R$string.offline_update_title));
            eVar.m13616i(context.getResources().getString(R$string.offline_update_content));
            eVar.m13617h(activity);
            eVar.m13601x(context.getResources().getString(2131755055));
            eVar.m13625A(System.currentTimeMillis());
            eVar.m13607r(false);
            eVar.m13611n(BitmapFactory.decodeResource(context.getResources(), R$mipmap.ic_launcher));
            eVar.m13620e(true);
            try {
                int i = Build.VERSION.SDK_INT;
                if (i >= 26) {
                    NotificationChannel notificationChannel = new NotificationChannel("com.callerid.block_notfication_N", context.getResources().getString(2131755055), 3);
                    if (notificationManager != null) {
                        notificationManager.createNotificationChannel(notificationChannel);
                        eVar.m13619f("com.callerid.block_notfication_N");
                    }
                }
                if (i >= 16) {
                    eVar.m13606s(0);
                }
                if (i >= 21) {
                    try {
                        context.getDrawable(R$drawable.icon_small);
                        eVar.m13604u(R$drawable.icon_small);
                        eVar.m13618g(context.getResources().getColor(R$color.colorPrimary));
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                } else {
                    eVar.m13604u(R$drawable.icon_small_normal);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (notificationManager != null) {
                notificationManager.notify(3, eVar.m13624a());
            }
        }
    }
}
