package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import com.google.android.datatransport.h.r;
import com.google.android.datatransport.p062h.AbstractC1304m;
import com.google.android.datatransport.p062h.p070z.C1327a;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService.class */
public class JobInfoSchedulerService extends JobService {
    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i = jobParameters.getExtras().getInt("priority");
        int i2 = jobParameters.getExtras().getInt("attemptNumber");
        r.f(getApplicationContext());
        AbstractC1304m.AbstractC1305a m9209a = AbstractC1304m.m9209a();
        m9209a.m9203b(string);
        m9209a.m9201d(C1327a.m9132b(i));
        if (string2 != null) {
            m9209a.m9202c(Base64.decode(string2, 0));
        }
        r.c().e().m9075g(m9209a.m9204a(), i2, RunnableC1339f.m9083a(this, jobParameters));
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
