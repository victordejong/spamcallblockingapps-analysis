package p131c.p161d.p170b.p188c.p203g1;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
/* renamed from: c.d.b.c.g1.t */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/t.class */
public final class C2902t {
    /* renamed from: a */
    public static void m28567a(Context context, String str, int i, int i2, int i3) {
        if (C2885h0.f10477a >= 26) {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            NotificationChannel notificationChannel = new NotificationChannel(str, context.getString(i), i3);
            if (i2 != 0) {
                notificationChannel.setDescription(context.getString(i2));
            }
            notificationManager.createNotificationChannel(notificationChannel);
        }
    }
}
