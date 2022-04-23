package androidx.work.impl;

import android.content.Context;
import android.os.Build;
import androidx.work.Configuration;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.impl.background.systemjob.b;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.d;
import androidx.work.k;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6083a = k.a("Schedulers");

    private f() {
    }

    private static e a(Context context) {
        try {
            e eVar = (e) Class.forName("androidx.work.impl.background.gcm.GcmScheduler").getConstructor(Context.class).newInstance(context);
            k.a();
            String.format("Created %s", "androidx.work.impl.background.gcm.GcmScheduler");
            return eVar;
        } catch (Throwable th) {
            k.a();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static e a(Context context, j jVar) {
        e eVar;
        if (Build.VERSION.SDK_INT >= 23) {
            eVar = new b(context, jVar);
            d.a(context, SystemJobService.class, true);
            k.a();
        } else {
            e a2 = a(context);
            eVar = a2;
            if (a2 == null) {
                eVar = new androidx.work.impl.background.systemalarm.f(context);
                d.a(context, SystemAlarmService.class, true);
                k.a();
            }
        }
        return eVar;
    }

    public static void a(Configuration configuration, WorkDatabase workDatabase, List<e> list) {
        if (list != null && list.size() != 0) {
            WorkSpecDao j = workDatabase.j();
            workDatabase.e();
            try {
                List<WorkSpec> eligibleWorkForScheduling = j.getEligibleWorkForScheduling(configuration.getMaxSchedulerLimit());
                List<WorkSpec> allEligibleWorkSpecsForScheduling = j.getAllEligibleWorkSpecsForScheduling(200);
                if (eligibleWorkForScheduling != null && eligibleWorkForScheduling.size() > 0) {
                    long currentTimeMillis = System.currentTimeMillis();
                    for (WorkSpec workSpec : eligibleWorkForScheduling) {
                        j.markWorkSpecScheduled(workSpec.id, currentTimeMillis);
                    }
                }
                workDatabase.g();
                if (eligibleWorkForScheduling != null && eligibleWorkForScheduling.size() > 0) {
                    WorkSpec[] workSpecArr = (WorkSpec[]) eligibleWorkForScheduling.toArray(new WorkSpec[eligibleWorkForScheduling.size()]);
                    for (e eVar : list) {
                        if (eVar.a()) {
                            eVar.a(workSpecArr);
                        }
                    }
                }
                if (allEligibleWorkSpecsForScheduling != null && allEligibleWorkSpecsForScheduling.size() > 0) {
                    WorkSpec[] workSpecArr2 = (WorkSpec[]) allEligibleWorkSpecsForScheduling.toArray(new WorkSpec[allEligibleWorkSpecsForScheduling.size()]);
                    for (e eVar2 : list) {
                        if (!eVar2.a()) {
                            eVar2.a(workSpecArr2);
                        }
                    }
                }
            } finally {
                workDatabase.f();
            }
        }
    }
}
