package p131c.p161d.p170b.p173b.p176i.p184y.p185j;

import android.app.job.JobParameters;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
/* renamed from: c.d.b.b.i.y.j.f */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/j/f.class */
public final /* synthetic */ class RunnableC2621f implements Runnable {

    /* renamed from: a */
    public final JobInfoSchedulerService f9706a;

    /* renamed from: b */
    public final JobParameters f9707b;

    public RunnableC2621f(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        this.f9706a = jobInfoSchedulerService;
        this.f9707b = jobParameters;
    }

    /* renamed from: a */
    public static Runnable m29425a(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        return new RunnableC2621f(jobInfoSchedulerService, jobParameters);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f9706a.jobFinished(this.f9707b, false);
    }
}
