package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import com.google.android.datatransport.p232h.AbstractC4673m;
import com.google.android.datatransport.p232h.C4679r;
import com.google.android.datatransport.p232h.p240z.C4754a;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService.class */
public class JobInfoSchedulerService extends JobService {
    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i = jobParameters.getExtras().getInt("priority");
        int i2 = jobParameters.getExtras().getInt("attemptNumber");
        C4679r.m22008f(getApplicationContext());
        AbstractC4673m.AbstractC4674a mo22016d = AbstractC4673m.m22024a().mo22018b(string).mo22016d(C4754a.m21845b(i));
        if (string2 != null) {
            mo22016d.mo22017c(Base64.decode(string2, 0));
        }
        C4679r.m22011c().m22009e().m21776g(mo22016d.mo22019a(), i2, RunnableC4781f.m21788a(this, jobParameters));
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
