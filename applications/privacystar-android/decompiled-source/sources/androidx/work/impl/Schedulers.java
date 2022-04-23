package androidx.work.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.impl.background.systemalarm.SystemAlarmScheduler;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import androidx.work.impl.background.systemjob.SystemJobScheduler;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.PackageManagerHelper;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/Schedulers.class */
public class Schedulers {
    private static final String TAG = Logger.tagWithPrefix("Schedulers");

    private Schedulers() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    @SuppressLint({"NewApi"})
    public static Scheduler createBestAvailableBackgroundScheduler(@NonNull Context context, @NonNull WorkManagerImpl workManagerImpl) {
        Scheduler scheduler;
        boolean z = true;
        if (Build.VERSION.SDK_INT >= 23) {
            scheduler = new SystemJobScheduler(context, workManagerImpl);
            PackageManagerHelper.setComponentEnabled(context, SystemJobService.class, true);
            Logger.get().debug(TAG, "Created SystemJobScheduler and enabled SystemJobService", new Throwable[0]);
            z = false;
        } else {
            scheduler = new SystemAlarmScheduler(context);
            Logger.get().debug(TAG, "Created SystemAlarmScheduler", new Throwable[0]);
        }
        PackageManagerHelper.setComponentEnabled(context, SystemAlarmService.class, z);
        return scheduler;
    }

    public static void schedule(@NonNull Configuration configuration, @NonNull WorkDatabase workDatabase, List<Scheduler> list) {
        if (list != null && list.size() != 0) {
            WorkSpecDao workSpecDao = workDatabase.workSpecDao();
            workDatabase.beginTransaction();
            try {
                List<WorkSpec> eligibleWorkForScheduling = workSpecDao.getEligibleWorkForScheduling(configuration.getMaxSchedulerLimit());
                if (eligibleWorkForScheduling != null && eligibleWorkForScheduling.size() > 0) {
                    long currentTimeMillis = System.currentTimeMillis();
                    for (WorkSpec workSpec : eligibleWorkForScheduling) {
                        workSpecDao.markWorkSpecScheduled(workSpec.f48id, currentTimeMillis);
                    }
                }
                workDatabase.setTransactionSuccessful();
                if (eligibleWorkForScheduling != null && eligibleWorkForScheduling.size() > 0) {
                    WorkSpec[] workSpecArr = (WorkSpec[]) eligibleWorkForScheduling.toArray(new WorkSpec[0]);
                    for (Scheduler scheduler : list) {
                        scheduler.schedule(workSpecArr);
                    }
                }
            } finally {
                workDatabase.endTransaction();
            }
        }
    }
}
