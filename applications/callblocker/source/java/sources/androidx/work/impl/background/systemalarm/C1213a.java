package androidx.work.impl.background.systemalarm;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import androidx.work.AbstractC1293l;
import androidx.work.impl.C1249i;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.p055b.AbstractC1177h;
import androidx.work.impl.p055b.C1176g;
import androidx.work.impl.utils.C1274c;
/* renamed from: androidx.work.impl.background.systemalarm.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/a.class */
public class C1213a {

    /* renamed from: a */
    private static final String f4077a = AbstractC1293l.m17541a("Alarms");

    /* renamed from: a */
    public static void m17764a(Context context, C1249i c1249i, String str) {
        AbstractC1177h mo17882r = c1249i.m17652c().mo17882r();
        C1176g mo17816a = mo17882r.mo17816a(str);
        if (mo17816a != null) {
            m17762a(context, str, mo17816a.f3991b);
            AbstractC1293l.m17543a().mo17539b(f4077a, String.format("Removing SystemIdInfo for workSpecId (%s)", str), new Throwable[0]);
            mo17882r.mo17815b(str);
        }
    }

    /* renamed from: a */
    public static void m17763a(Context context, C1249i c1249i, String str, long j) {
        WorkDatabase m17652c = c1249i.m17652c();
        AbstractC1177h mo17882r = m17652c.mo17882r();
        C1176g mo17816a = mo17882r.mo17816a(str);
        if (mo17816a != null) {
            m17762a(context, str, mo17816a.f3991b);
            m17761a(context, str, mo17816a.f3991b, j);
            return;
        }
        int m17574a = new C1274c(m17652c).m17574a();
        mo17882r.mo17817a(new C1176g(str, m17574a));
        m17761a(context, str, m17574a, j);
    }

    /* renamed from: a */
    private static void m17762a(Context context, String str, int i) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, C1214b.m17751b(context, str), 536870912);
        if (service == null || alarmManager == null) {
            return;
        }
        AbstractC1293l.m17543a().mo17539b(f4077a, String.format("Cancelling existing alarm with (workSpecId, systemId) (%s, %s)", str, Integer.valueOf(i)), new Throwable[0]);
        alarmManager.cancel(service);
    }

    /* renamed from: a */
    private static void m17761a(Context context, String str, int i, long j) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, C1214b.m17751b(context, str), 134217728);
        if (alarmManager != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                alarmManager.setExact(0, j, service);
            } else {
                alarmManager.set(0, j, service);
            }
        }
    }
}
