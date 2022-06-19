package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/f.class */
final /* synthetic */ class RunnableC10807f implements Runnable {

    /* renamed from: a */
    private final JobInfoSchedulerService f34724a;

    /* renamed from: b */
    private final JobParameters f34725b;

    private RunnableC10807f(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        this.f34724a = jobInfoSchedulerService;
        this.f34725b = jobParameters;
    }

    /* renamed from: a */
    public static Runnable m22349a(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        return new RunnableC10807f(jobInfoSchedulerService, jobParameters);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34724a.jobFinished(this.f34725b, false);
    }
}
