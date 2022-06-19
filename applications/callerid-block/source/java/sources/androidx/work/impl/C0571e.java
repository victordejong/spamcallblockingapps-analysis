package androidx.work.impl;

import android.content.Context;
import android.os.Build;
import androidx.work.AbstractC0555f;
import androidx.work.C0545a;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import androidx.work.impl.background.systemalarm.f;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.impl.background.systemjob.b;
import androidx.work.impl.p009l.AbstractC0591k;
import androidx.work.impl.p009l.C0589j;
import androidx.work.impl.utils.C0599d;
import java.util.List;
/* renamed from: androidx.work.impl.e */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/e.class */
public class C0571e {

    /* renamed from: a */
    private static final String f3023a = AbstractC0555f.m11738f("Schedulers");

    /* renamed from: a */
    static AbstractC0570d m11717a(Context context, h hVar) {
        b bVar;
        if (Build.VERSION.SDK_INT >= 23) {
            bVar = new b(context, hVar);
            C0599d.m11609a(context, SystemJobService.class, true);
            AbstractC0555f.m11741c().m11743a(f3023a, "Created SystemJobScheduler and enabled SystemJobService", new Throwable[0]);
        } else {
            b m11715c = m11715c(context);
            bVar = m11715c;
            if (m11715c == null) {
                bVar = new f(context);
                C0599d.m11609a(context, SystemAlarmService.class, true);
                AbstractC0555f.m11741c().m11743a(f3023a, "Created SystemAlarmScheduler", new Throwable[0]);
            }
        }
        return bVar;
    }

    /* renamed from: b */
    public static void m11716b(C0545a c0545a, WorkDatabase workDatabase, List<AbstractC0570d> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        AbstractC0591k y = workDatabase.y();
        workDatabase.m12319c();
        try {
            List<C0589j> m11657h = y.m11657h(c0545a.m11792d());
            if (m11657h != null && m11657h.size() > 0) {
                long currentTimeMillis = System.currentTimeMillis();
                for (C0589j c0589j : m11657h) {
                    y.m11661d(c0589j.f3085a, currentTimeMillis);
                }
            }
            workDatabase.m12305q();
            if (m11657h == null || m11657h.size() <= 0) {
                return;
            }
            C0589j[] c0589jArr = (C0589j[]) m11657h.toArray(new C0589j[0]);
            for (AbstractC0570d abstractC0570d : list) {
                abstractC0570d.m11718c(c0589jArr);
            }
        } finally {
            workDatabase.m12315g();
        }
    }

    /* renamed from: c */
    private static AbstractC0570d m11715c(Context context) {
        try {
            AbstractC0570d abstractC0570d = (AbstractC0570d) Class.forName("androidx.work.impl.background.gcm.GcmScheduler").getConstructor(Context.class).newInstance(context);
            AbstractC0555f.m11741c().m11743a(f3023a, String.format("Created %s", "androidx.work.impl.background.gcm.GcmScheduler"), new Throwable[0]);
            return abstractC0570d;
        } catch (Throwable th) {
            AbstractC0555f.m11741c().m11743a(f3023a, "Unable to create GCM Scheduler", th);
            return null;
        }
    }
}
