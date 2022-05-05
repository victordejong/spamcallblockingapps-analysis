package p459j.p460a.p474c0.p488f;

import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$string;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p491g.AbstractC12126w;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.C14173t4;
/* renamed from: j.a.c0.f.o */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/o.class */
public class C11843o {
    /* renamed from: a */
    public static void m8051a() {
        NotificationManagerCompat.from(AbstractC11516a.m9413n().mo9412a()).cancel(m8050b(), 3);
    }

    /* renamed from: b */
    public static String m8050b() {
        return AbstractC11516a.m9413n().mo9412a().getPackageName() + ":smsstoragelow";
    }

    /* renamed from: c */
    public static void m8049c() {
        if (C12810o.m5232m()) {
            m8047e();
        }
    }

    /* renamed from: d */
    public static void m8048d() {
        if (C12810o.m5233l()) {
            m8051a();
        }
    }

    /* renamed from: e */
    public static void m8047e() {
        Context a = AbstractC11516a.m9413n().mo9412a();
        Resources resources = a.getResources();
        PendingIntent a2 = AbstractC12126w.m7095a().mo7089a(a);
        NotificationCompat.Builder a3 = C14173t4.m2307a(a);
        a3.setContentTitle(resources.getString(R$string.sms_storage_low_title)).setTicker(resources.getString(R$string.sms_storage_low_notification_ticker)).setSmallIcon(R$drawable.ic_failed_light).setPriority(0).setOngoing(true).setAutoCancel(false).setContentIntent(a2);
        NotificationCompat.BigTextStyle bigTextStyle = new NotificationCompat.BigTextStyle(a3);
        bigTextStyle.bigText(resources.getString(R$string.sms_storage_low_text));
        NotificationManagerCompat.from(AbstractC11516a.m9413n().mo9412a()).notify(m8050b(), 3, bigTextStyle.build());
    }
}
