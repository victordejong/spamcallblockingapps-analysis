package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.f */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/f.class */
final /* synthetic */ class RunnableC1339f implements Runnable {

    /* renamed from: b */
    private final JobInfoSchedulerService f5413b;

    /* renamed from: c */
    private final JobParameters f5414c;

    private RunnableC1339f(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        this.f5413b = jobInfoSchedulerService;
        this.f5414c = jobParameters;
    }

    /* renamed from: a */
    public static Runnable m9083a(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        return new RunnableC1339f(jobInfoSchedulerService, jobParameters);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f5413b.jobFinished(this.f5414c, false);
    }
}
