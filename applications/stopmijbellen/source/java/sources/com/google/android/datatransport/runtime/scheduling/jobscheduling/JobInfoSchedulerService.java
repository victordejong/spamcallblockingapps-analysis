package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import p028c3.C0816a;
import p250u2.AbstractC4469i;
import p250u2.C4456b;
import p250u2.C4474m;
import p293y2.C4997n;
import p293y2.RunnableC4984d;
import p293y2.RunnableC4990g;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService.class */
public class JobInfoSchedulerService extends JobService {

    /* renamed from: a */
    public static final /* synthetic */ int f6216a = 0;

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i = jobParameters.getExtras().getInt("priority");
        int i2 = jobParameters.getExtras().getInt("attemptNumber");
        C4474m.m883b(getApplicationContext());
        AbstractC4469i.AbstractC4470a m893a = AbstractC4469i.m893a();
        m893a.mo888b(string);
        m893a.mo887c(C0816a.m7344b(i));
        if (string2 != null) {
            ((C4456b.C4458b) m893a).f13835b = Base64.decode(string2, 0);
        }
        C4997n c4997n = C4474m.m884a().f13859d;
        c4997n.f15224e.execute(new RunnableC4990g(c4997n, m893a.mo889a(), i2, new RunnableC4984d(this, jobParameters, 0)));
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
