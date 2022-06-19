package androidx.work.impl.background.systemalarm;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import androidx.work.AbstractC1404j;
import androidx.work.impl.C1289j;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.p018n.AbstractC1330h;
import androidx.work.impl.p018n.C1329g;
import androidx.work.impl.utils.C1369c;
/* renamed from: androidx.work.impl.background.systemalarm.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/a.class */
public class C1252a {

    /* renamed from: a */
    private static final String f5325a = AbstractC1404j.m30159f("Alarms");

    /* renamed from: a */
    public static void m30498a(Context context, C1289j c1289j, String str) {
        AbstractC1330h mo30510y = c1289j.m30388o().mo30510y();
        C1329g mo30296c = mo30510y.mo30296c(str);
        if (mo30296c != null) {
            m30497b(context, str, mo30296c.f5556b);
            AbstractC1404j.m30161c().mo30158a(f5325a, String.format("Removing SystemIdInfo for workSpecId (%s)", str), new Throwable[0]);
            mo30510y.mo30295d(str);
        }
    }

    /* renamed from: b */
    private static void m30497b(Context context, String str, int i) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, C1253b.m30493b(context, str), Build.VERSION.SDK_INT >= 23 ? 603979776 : 536870912);
        if (service == null || alarmManager == null) {
            return;
        }
        AbstractC1404j.m30161c().mo30158a(f5325a, String.format("Cancelling existing alarm with (workSpecId, systemId) (%s, %s)", str, Integer.valueOf(i)), new Throwable[0]);
        alarmManager.cancel(service);
    }

    /* renamed from: c */
    public static void m30496c(Context context, C1289j c1289j, String str, long j) {
        WorkDatabase m30388o = c1289j.m30388o();
        AbstractC1330h mo30510y = m30388o.mo30510y();
        C1329g mo30296c = mo30510y.mo30296c(str);
        if (mo30296c != null) {
            m30497b(context, str, mo30296c.f5556b);
            m30495d(context, str, mo30296c.f5556b, j);
            return;
        }
        int m30219b = new C1369c(m30388o).m30219b();
        mo30510y.mo30297b(new C1329g(str, m30219b));
        m30495d(context, str, m30219b, j);
    }

    /* renamed from: d */
    private static void m30495d(Context context, String str, int i, long j) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        int i2 = Build.VERSION.SDK_INT;
        PendingIntent service = PendingIntent.getService(context, i, C1253b.m30493b(context, str), i2 >= 23 ? 201326592 : 134217728);
        if (alarmManager != null) {
            if (i2 >= 19) {
                alarmManager.setExact(0, j, service);
            } else {
                alarmManager.set(0, j, service);
            }
        }
    }
}
