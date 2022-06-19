package androidx.work.impl;

import android.content.Context;
import android.os.Build;
import androidx.work.AbstractC1293l;
import androidx.work.C1126b;
import androidx.work.impl.background.systemalarm.C1222f;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import androidx.work.impl.background.systemjob.C1225b;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.impl.p055b.AbstractC1194q;
import androidx.work.impl.p055b.C1191p;
import androidx.work.impl.utils.C1275d;
import java.util.List;
/* renamed from: androidx.work.impl.e */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/e.class */
public class C1229e {

    /* renamed from: a */
    private static final String f4141a = AbstractC1293l.m17541a("Schedulers");

    /* renamed from: a */
    private static AbstractC1228d m17702a(Context context) {
        AbstractC1228d abstractC1228d;
        try {
            abstractC1228d = (AbstractC1228d) Class.forName("androidx.work.impl.background.gcm.GcmScheduler").getConstructor(Context.class).newInstance(context);
            AbstractC1293l.m17543a().mo17539b(f4141a, String.format("Created %s", "androidx.work.impl.background.gcm.GcmScheduler"), new Throwable[0]);
        } catch (Throwable th) {
            AbstractC1293l.m17543a().mo17539b(f4141a, "Unable to create GCM Scheduler", th);
            abstractC1228d = null;
        }
        return abstractC1228d;
    }

    /* renamed from: a */
    public static AbstractC1228d m17701a(Context context, C1249i c1249i) {
        C1225b c1225b;
        if (Build.VERSION.SDK_INT >= 23) {
            c1225b = new C1225b(context, c1249i);
            C1275d.m17569a(context, SystemJobService.class, true);
            AbstractC1293l.m17543a().mo17539b(f4141a, "Created SystemJobScheduler and enabled SystemJobService", new Throwable[0]);
        } else {
            AbstractC1228d m17702a = m17702a(context);
            c1225b = m17702a;
            if (m17702a == null) {
                c1225b = new C1222f(context);
                C1275d.m17569a(context, SystemAlarmService.class, true);
                AbstractC1293l.m17543a().mo17539b(f4141a, "Created SystemAlarmScheduler", new Throwable[0]);
            }
        }
        return c1225b;
    }

    /* renamed from: a */
    public static void m17700a(C1126b c1126b, WorkDatabase workDatabase, List<AbstractC1228d> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        AbstractC1194q mo17885o = workDatabase.mo17885o();
        workDatabase.m18291g();
        try {
            List<C1191p> mo17801a = mo17885o.mo17801a(c1126b.m17950h());
            if (mo17801a != null && mo17801a.size() > 0) {
                long currentTimeMillis = System.currentTimeMillis();
                for (C1191p c1191p : mo17801a) {
                    mo17885o.mo17793b(c1191p.f4013a, currentTimeMillis);
                }
            }
            workDatabase.m18288j();
            if (mo17801a == null || mo17801a.size() <= 0) {
                return;
            }
            C1191p[] c1191pArr = (C1191p[]) mo17801a.toArray(new C1191p[0]);
            for (AbstractC1228d abstractC1228d : list) {
                abstractC1228d.mo17703a(c1191pArr);
            }
        } finally {
            workDatabase.m18290h();
        }
    }
}
