package p131c.p431l.p432a.p468n.p469s.p471b;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.os.Build;
import com.netqin.p525cm.main.p529ui.NqApplication;
import p012b.p042i.p043h.C0857h;
/* renamed from: c.l.a.n.s.b.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/n/s/b/a.class */
public class C6863a {

    /* renamed from: a */
    public static String f21054a = "CB_NOTIFICATION";

    /* renamed from: a */
    public static void m19522a(Notification notification, Context context, Intent intent, String str, String str2, PendingIntent pendingIntent, int i, int i2) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (Build.VERSION.SDK_INT >= 26 && notificationManager != null) {
            String str3 = f21054a;
            notificationManager.createNotificationChannel(new NotificationChannel(str3, str3, 2));
        }
        C0857h.C0861d dVar = new C0857h.C0861d(context, f21054a);
        dVar.m35748a(pendingIntent);
        dVar.m35737b(str);
        dVar.m35744a((CharSequence) str2);
        dVar.m35749a(System.currentTimeMillis());
        dVar.m35734c(2131165510);
        dVar.m35752a(Color.parseColor("#3F51B5"));
        dVar.m35738b(BitmapFactory.decodeResource(NqApplication.m3303b().getResources(), 2131492864));
        Notification a = dVar.m35753a();
        a.flags = i;
        try {
            notificationManager.notify(i2, a);
        } catch (SecurityException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static void m19521a(Context context, int i) {
        ((NotificationManager) context.getSystemService("notification")).cancel(i);
    }
}
