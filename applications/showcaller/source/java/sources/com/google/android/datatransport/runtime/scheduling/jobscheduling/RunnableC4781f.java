package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.f */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/f.class */
final /* synthetic */ class RunnableC4781f implements Runnable {

    /* renamed from: d */
    private final JobInfoSchedulerService f14405d;

    /* renamed from: e */
    private final JobParameters f14406e;

    private RunnableC4781f(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        this.f14405d = jobInfoSchedulerService;
        this.f14406e = jobParameters;
    }

    /* renamed from: a */
    public static Runnable m21788a(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        return new RunnableC4781f(jobInfoSchedulerService, jobParameters);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f14405d.jobFinished(this.f14406e, false);
    }
}
