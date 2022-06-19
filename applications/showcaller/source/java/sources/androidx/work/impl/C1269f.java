package androidx.work.impl;

import android.content.Context;
import android.os.Build;
import androidx.work.AbstractC1404j;
import androidx.work.C1230a;
import androidx.work.impl.background.systemalarm.C1261f;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import androidx.work.impl.background.systemjob.C1264b;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.impl.p018n.AbstractC1347q;
import androidx.work.impl.p018n.C1344p;
import androidx.work.impl.utils.C1370d;
import java.util.List;
/* renamed from: androidx.work.impl.f */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/f.class */
public class C1269f {

    /* renamed from: a */
    private static final String f5392a = AbstractC1404j.m30159f("Schedulers");

    /* renamed from: a */
    public static AbstractC1268e m30436a(Context context, C1289j c1289j) {
        C1264b c1264b;
        if (Build.VERSION.SDK_INT >= 23) {
            c1264b = new C1264b(context, c1289j);
            C1370d.m30215a(context, SystemJobService.class, true);
            AbstractC1404j.m30161c().mo30158a(f5392a, "Created SystemJobScheduler and enabled SystemJobService", new Throwable[0]);
        } else {
            AbstractC1268e m30434c = m30434c(context);
            c1264b = m30434c;
            if (m30434c == null) {
                c1264b = new C1261f(context);
                C1370d.m30215a(context, SystemAlarmService.class, true);
                AbstractC1404j.m30161c().mo30158a(f5392a, "Created SystemAlarmScheduler", new Throwable[0]);
            }
        }
        return c1264b;
    }

    /* renamed from: b */
    public static void m30435b(C1230a c1230a, WorkDatabase workDatabase, List<AbstractC1268e> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        AbstractC1347q mo30527B = workDatabase.mo30527B();
        workDatabase.m31293c();
        try {
            List<C1344p> mo30277f = mo30527B.mo30277f(c1230a.m30590h());
            List<C1344p> mo30263t = mo30527B.mo30263t(200);
            if (mo30277f != null && mo30277f.size() > 0) {
                long currentTimeMillis = System.currentTimeMillis();
                for (C1344p c1344p : mo30277f) {
                    mo30527B.mo30280c(c1344p.f5578c, currentTimeMillis);
                }
            }
            workDatabase.m31280r();
            if (mo30277f != null && mo30277f.size() > 0) {
                C1344p[] c1344pArr = (C1344p[]) mo30277f.toArray(new C1344p[mo30277f.size()]);
                for (AbstractC1268e abstractC1268e : list) {
                    if (abstractC1268e.mo30357c()) {
                        abstractC1268e.mo30358a(c1344pArr);
                    }
                }
            }
            if (mo30263t == null || mo30263t.size() <= 0) {
                return;
            }
            C1344p[] c1344pArr2 = (C1344p[]) mo30263t.toArray(new C1344p[mo30263t.size()]);
            for (AbstractC1268e abstractC1268e2 : list) {
                if (!abstractC1268e2.mo30357c()) {
                    abstractC1268e2.mo30358a(c1344pArr2);
                }
            }
        } finally {
            workDatabase.m31291g();
        }
    }

    /* renamed from: c */
    private static AbstractC1268e m30434c(Context context) {
        try {
            AbstractC1268e abstractC1268e = (AbstractC1268e) Class.forName("androidx.work.impl.background.gcm.GcmScheduler").getConstructor(Context.class).newInstance(context);
            AbstractC1404j.m30161c().mo30158a(f5392a, String.format("Created %s", "androidx.work.impl.background.gcm.GcmScheduler"), new Throwable[0]);
            return abstractC1268e;
        } catch (Throwable th) {
            AbstractC1404j.m30161c().mo30158a(f5392a, "Unable to create GCM Scheduler", th);
            return null;
        }
    }
}
