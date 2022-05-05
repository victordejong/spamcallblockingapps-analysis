package p081h.p203i.p204a.p206b.p209j.p217y.p218j;

import android.app.job.JobParameters;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
/* renamed from: h.i.a.b.j.y.j.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/j/f.class */
public final /* synthetic */ class RunnableC6633f implements Runnable {

    /* renamed from: a */
    public final JobInfoSchedulerService f16467a;

    /* renamed from: b */
    public final JobParameters f16468b;

    public RunnableC6633f(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        this.f16467a = jobInfoSchedulerService;
        this.f16468b = jobParameters;
    }

    /* renamed from: a */
    public static Runnable m22212a(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        return new RunnableC6633f(jobInfoSchedulerService, jobParameters);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f16467a.jobFinished(this.f16468b, false);
    }
}
