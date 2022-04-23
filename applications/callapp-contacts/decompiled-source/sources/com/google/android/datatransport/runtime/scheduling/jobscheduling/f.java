package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/f.class */
final /* synthetic */ class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final JobInfoSchedulerService f20562a;

    /* renamed from: b  reason: collision with root package name */
    private final JobParameters f20563b;

    private f(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        this.f20562a = jobInfoSchedulerService;
        this.f20563b = jobParameters;
    }

    public static Runnable a(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        return new f(jobInfoSchedulerService, jobParameters);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f20562a.jobFinished(this.f20563b, false);
    }
}
