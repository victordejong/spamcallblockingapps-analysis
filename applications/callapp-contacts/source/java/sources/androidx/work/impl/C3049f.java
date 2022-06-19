package androidx.work.impl;

import android.content.Context;
import android.os.Build;
import androidx.work.AbstractC3145k;
import androidx.work.Configuration;
import androidx.work.impl.background.systemalarm.C3041f;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import androidx.work.impl.background.systemjob.C3044b;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.C3123d;
import java.util.List;
/* renamed from: androidx.work.impl.f */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/f.class */
public final class C3049f {

    /* renamed from: a */
    private static final String f11299a = AbstractC3145k.m39275a("Schedulers");

    private C3049f() {
    }

    /* renamed from: a */
    private static AbstractC3048e m39385a(Context context) {
        try {
            AbstractC3048e abstractC3048e = (AbstractC3048e) Class.forName("androidx.work.impl.background.gcm.GcmScheduler").getConstructor(Context.class).newInstance(context);
            AbstractC3145k.m39277a();
            String.format("Created %s", "androidx.work.impl.background.gcm.GcmScheduler");
            return abstractC3048e;
        } catch (Throwable th) {
            AbstractC3145k.m39277a();
            return null;
        }
    }

    /* renamed from: a */
    public static AbstractC3048e m39384a(Context context, C3068j c3068j) {
        C3044b c3044b;
        if (Build.VERSION.SDK_INT >= 23) {
            c3044b = new C3044b(context, c3068j);
            C3123d.m39295a(context, SystemJobService.class, true);
            AbstractC3145k.m39277a();
        } else {
            AbstractC3048e m39385a = m39385a(context);
            c3044b = m39385a;
            if (m39385a == null) {
                c3044b = new C3041f(context);
                C3123d.m39295a(context, SystemAlarmService.class, true);
                AbstractC3145k.m39277a();
            }
        }
        return c3044b;
    }

    /* renamed from: a */
    public static void m39383a(Configuration configuration, WorkDatabase workDatabase, List<AbstractC3048e> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        WorkSpecDao mo39474j = workDatabase.mo39474j();
        workDatabase.m39959e();
        try {
            List<WorkSpec> eligibleWorkForScheduling = mo39474j.getEligibleWorkForScheduling(configuration.getMaxSchedulerLimit());
            List<WorkSpec> allEligibleWorkSpecsForScheduling = mo39474j.getAllEligibleWorkSpecsForScheduling(200);
            if (eligibleWorkForScheduling != null && eligibleWorkForScheduling.size() > 0) {
                long currentTimeMillis = System.currentTimeMillis();
                for (WorkSpec workSpec : eligibleWorkForScheduling) {
                    mo39474j.markWorkSpecScheduled(workSpec.f11397id, currentTimeMillis);
                }
            }
            workDatabase.m39957g();
            if (eligibleWorkForScheduling != null && eligibleWorkForScheduling.size() > 0) {
                WorkSpec[] workSpecArr = (WorkSpec[]) eligibleWorkForScheduling.toArray(new WorkSpec[eligibleWorkForScheduling.size()]);
                for (AbstractC3048e abstractC3048e : list) {
                    if (abstractC3048e.mo39388a()) {
                        abstractC3048e.mo39386a(workSpecArr);
                    }
                }
            }
            if (allEligibleWorkSpecsForScheduling == null || allEligibleWorkSpecsForScheduling.size() <= 0) {
                return;
            }
            WorkSpec[] workSpecArr2 = (WorkSpec[]) allEligibleWorkSpecsForScheduling.toArray(new WorkSpec[allEligibleWorkSpecsForScheduling.size()]);
            for (AbstractC3048e abstractC3048e2 : list) {
                if (!abstractC3048e2.mo39388a()) {
                    abstractC3048e2.mo39386a(workSpecArr2);
                }
            }
        } finally {
            workDatabase.m39958f();
        }
    }
}
