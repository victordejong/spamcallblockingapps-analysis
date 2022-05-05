package com.birbit.android.jobqueue.scheduling;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.birbit.android.jobqueue.JobManager;
import com.birbit.android.jobqueue.log.JqLog;
import com.google.android.gms.gcm.GcmTaskService;
import com.google.android.gms.gcm.TaskParams;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/scheduling/GcmJobSchedulerService.class */
public abstract class GcmJobSchedulerService extends GcmTaskService {
    public static GcmScheduler createSchedulerFor(Context context, Class<? extends GcmJobSchedulerService> cls) {
        if (GcmJobSchedulerService.class != cls) {
            return new GcmScheduler(context.getApplicationContext(), cls);
        }
        throw new IllegalArgumentException("You must create a service that extends GcmJobSchedulerService");
    }

    @NonNull
    protected abstract JobManager getJobManager();

    @Nullable
    protected GcmScheduler getScheduler() {
        Scheduler scheduler = getJobManager().getScheduler();
        if (scheduler instanceof GcmScheduler) {
            return (GcmScheduler) scheduler;
        }
        JqLog.m391e("GcmJobSchedulerService has been created but the JobManager does not have a scheduler created by GcmJobSchedulerService.", new Object[0]);
        return null;
    }

    @Override // com.google.android.gms.gcm.GcmTaskService
    public int onRunTask(TaskParams taskParams) {
        GcmScheduler scheduler = getScheduler();
        if (scheduler != null) {
            return scheduler.onStartJob(taskParams);
        }
        JqLog.m391e("RunTask on GcmJobSchedulerService has been called but it does not have a scheduler. Make sure you've initialized JobManager before the service might be created.", new Object[0]);
        return 2;
    }
}
