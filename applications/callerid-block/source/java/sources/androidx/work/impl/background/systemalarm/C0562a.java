package androidx.work.impl.background.systemalarm;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import androidx.work.AbstractC0555f;
import androidx.work.impl.h;
import androidx.work.impl.p009l.AbstractC0586e;
import androidx.work.impl.p009l.C0585d;
import androidx.work.impl.utils.C0598c;
/* renamed from: androidx.work.impl.background.systemalarm.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/a.class */
class C0562a {

    /* renamed from: a */
    private static final String f2997a = AbstractC0555f.m11738f("Alarms");

    /* renamed from: a */
    public static void m11732a(Context context, h hVar, String str) {
        AbstractC0586e w = hVar.n().w();
        C0585d m11671b = w.m11671b(str);
        if (m11671b != null) {
            m11731b(context, str, m11671b.f3082b);
            AbstractC0555f.m11741c().m11743a(f2997a, String.format("Removing SystemIdInfo for workSpecId (%s)", str), new Throwable[0]);
            w.m11670c(str);
        }
    }

    /* renamed from: b */
    private static void m11731b(Context context, String str, int i) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, b.c(context, str), 536870912);
        if (service == null || alarmManager == null) {
            return;
        }
        AbstractC0555f.m11741c().m11743a(f2997a, String.format("Cancelling existing alarm with (workSpecId, systemId) (%s, %s)", str, Integer.valueOf(i)), new Throwable[0]);
        alarmManager.cancel(service);
    }

    /* renamed from: c */
    public static void m11730c(Context context, h hVar, String str, long j) {
        AbstractC0586e w = hVar.n().w();
        C0585d m11671b = w.m11671b(str);
        if (m11671b != null) {
            m11731b(context, str, m11671b.f3082b);
            m11729d(context, str, m11671b.f3082b, j);
            return;
        }
        int m11613b = new C0598c(context).m11613b();
        w.m11672a(new C0585d(str, m11613b));
        m11729d(context, str, m11613b, j);
    }

    /* renamed from: d */
    private static void m11729d(Context context, String str, int i, long j) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, b.c(context, str), 1073741824);
        if (alarmManager != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                alarmManager.setExact(0, j, service);
            } else {
                alarmManager.set(0, j, service);
            }
        }
    }
}
