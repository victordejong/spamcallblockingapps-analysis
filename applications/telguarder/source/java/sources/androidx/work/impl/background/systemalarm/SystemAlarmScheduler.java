package androidx.work.impl.background.systemalarm;

import android.content.Context;
import androidx.work.Logger;
import androidx.work.impl.Scheduler;
import androidx.work.impl.model.WorkSpec;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/SystemAlarmScheduler.class */
public class SystemAlarmScheduler implements Scheduler {
    private static final String TAG = Logger.tagWithPrefix("SystemAlarmScheduler");
    private final Context mContext;

    public SystemAlarmScheduler(Context context) {
        this.mContext = context.getApplicationContext();
    }

    private void scheduleWorkSpec(WorkSpec workSpec) {
        Logger.get().debug(TAG, String.format("Scheduling work with workSpecId %s", workSpec.f77id), new Throwable[0]);
        this.mContext.startService(CommandHandler.createScheduleWorkIntent(this.mContext, workSpec.f77id));
    }

    @Override // androidx.work.impl.Scheduler
    public void cancel(String str) {
        this.mContext.startService(CommandHandler.createStopWorkIntent(this.mContext, str));
    }

    @Override // androidx.work.impl.Scheduler
    public void schedule(WorkSpec... workSpecArr) {
        for (WorkSpec workSpec : workSpecArr) {
            scheduleWorkSpec(workSpec);
        }
    }
}
