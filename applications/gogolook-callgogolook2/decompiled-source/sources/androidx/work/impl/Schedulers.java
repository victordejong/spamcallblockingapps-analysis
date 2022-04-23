package androidx.work.impl;

import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
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
    public static final String GCM_SCHEDULER = "androidx.work.impl.background.gcm.GcmScheduler";
    public static final String TAG = Logger.tagWithPrefix("Schedulers");

    @NonNull
    public static Scheduler createBestAvailableBackgroundScheduler(@NonNull Context context, @NonNull WorkManagerImpl workManagerImpl) {
        Scheduler scheduler;
        if (Build.VERSION.SDK_INT >= 23) {
            scheduler = new SystemJobScheduler(context, workManagerImpl);
            PackageManagerHelper.setComponentEnabled(context, SystemJobService.class, true);
            Logger.get().debug(TAG, "Created SystemJobScheduler and enabled SystemJobService", new Throwable[0]);
        } else {
            Scheduler tryCreateGcmBasedScheduler = tryCreateGcmBasedScheduler(context);
            scheduler = tryCreateGcmBasedScheduler;
            if (tryCreateGcmBasedScheduler == null) {
                scheduler = new SystemAlarmScheduler(context);
                PackageManagerHelper.setComponentEnabled(context, SystemAlarmService.class, true);
                Logger.get().debug(TAG, "Created SystemAlarmScheduler", new Throwable[0]);
            }
        }
        return scheduler;
    }

    public static void schedule(@NonNull Configuration configuration, @NonNull WorkDatabase workDatabase, List<Scheduler> list) {
        if (list != null && list.size() != 0) {
            WorkSpecDao workSpecDao = workDatabase.workSpecDao();
            workDatabase.beginTransaction();
            try {
                List<WorkSpec> eligibleWorkForScheduling = workSpecDao.getEligibleWorkForScheduling(configuration.getMaxSchedulerLimit());
                List<WorkSpec> allEligibleWorkSpecsForScheduling = workSpecDao.getAllEligibleWorkSpecsForScheduling();
                if (eligibleWorkForScheduling != null && eligibleWorkForScheduling.size() > 0) {
                    long currentTimeMillis = System.currentTimeMillis();
                    for (WorkSpec workSpec : eligibleWorkForScheduling) {
                        workSpecDao.markWorkSpecScheduled(workSpec.f130id, currentTimeMillis);
                    }
                }
                workDatabase.setTransactionSuccessful();
                if (eligibleWorkForScheduling != null && eligibleWorkForScheduling.size() > 0) {
                    WorkSpec[] workSpecArr = (WorkSpec[]) eligibleWorkForScheduling.toArray(new WorkSpec[eligibleWorkForScheduling.size()]);
                    for (Scheduler scheduler : list) {
                        if (scheduler.hasLimitedSchedulingSlots()) {
                            scheduler.schedule(workSpecArr);
                        }
                    }
                }
                if (allEligibleWorkSpecsForScheduling != null && allEligibleWorkSpecsForScheduling.size() > 0) {
                    WorkSpec[] workSpecArr2 = (WorkSpec[]) allEligibleWorkSpecsForScheduling.toArray(new WorkSpec[allEligibleWorkSpecsForScheduling.size()]);
                    for (Scheduler scheduler2 : list) {
                        if (!scheduler2.hasLimitedSchedulingSlots()) {
                            scheduler2.schedule(workSpecArr2);
                        }
                    }
                }
            } finally {
                workDatabase.endTransaction();
            }
        }
    }

    @Nullable
    public static Scheduler tryCreateGcmBasedScheduler(@NonNull Context context) {
        try {
            Scheduler scheduler = (Scheduler) Class.forName(GCM_SCHEDULER).getConstructor(Context.class).newInstance(context);
            Logger.get().debug(TAG, String.format("Created %s", GCM_SCHEDULER), new Throwable[0]);
            return scheduler;
        } catch (Throwable th) {
            Logger.get().debug(TAG, "Unable to create GCM Scheduler", th);
            return null;
        }
    }
}
