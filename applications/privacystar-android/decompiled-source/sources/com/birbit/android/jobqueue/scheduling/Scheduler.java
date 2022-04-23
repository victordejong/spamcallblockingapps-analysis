package com.birbit.android.jobqueue.scheduling;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/scheduling/Scheduler.class */
public abstract class Scheduler {
    private Callback callback;
    private Context context;

    /* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/scheduling/Scheduler$Callback.class */
    public interface Callback {
        boolean start(SchedulerConstraint schedulerConstraint);

        boolean stop(SchedulerConstraint schedulerConstraint);
    }

    public abstract void cancelAll();

    /* JADX INFO: Access modifiers changed from: package-private */
    public Context getApplicationContext() {
        return this.context;
    }

    public void init(Context context, Callback callback) {
        this.context = context.getApplicationContext();
        this.callback = callback;
    }

    public abstract void onFinished(SchedulerConstraint schedulerConstraint, boolean z);

    public abstract void request(SchedulerConstraint schedulerConstraint);

    public final boolean start(SchedulerConstraint schedulerConstraint) {
        if (this.callback != null) {
            return this.callback.start(schedulerConstraint);
        }
        throw new IllegalStateException("JobManager callback is not configured");
    }

    public final boolean stop(SchedulerConstraint schedulerConstraint) {
        if (this.callback != null) {
            return this.callback.stop(schedulerConstraint);
        }
        throw new IllegalStateException("JobManager callback is not configured");
    }
}
