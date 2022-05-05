package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService$$Lambda$1.class */
final /* synthetic */ class JobInfoSchedulerService$$Lambda$1 implements Runnable {

    /* renamed from: f */
    private final JobInfoSchedulerService f6725f;

    /* renamed from: g */
    private final JobParameters f6726g;

    private JobInfoSchedulerService$$Lambda$1(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        this.f6725f = jobInfoSchedulerService;
        this.f6726g = jobParameters;
    }

    /* renamed from: a */
    public static Runnable m15347a(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        return new JobInfoSchedulerService$$Lambda$1(jobInfoSchedulerService, jobParameters);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f6725f.jobFinished(this.f6726g, false);
    }
}
