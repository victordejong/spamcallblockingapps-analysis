package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import com.google.android.datatransport.runtime.AbstractC10738l;
import com.google.android.datatransport.runtime.C10744q;
import com.google.android.datatransport.runtime.p321e.C10727a;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService.class */
public class JobInfoSchedulerService extends JobService {
    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i = jobParameters.getExtras().getInt("priority");
        int i2 = jobParameters.getExtras().getInt("attemptNumber");
        C10744q.m22440a(getApplicationContext());
        AbstractC10738l.AbstractC10739a mo22445a = AbstractC10738l.m22447d().mo22444a(string).mo22445a(C10727a.m22488a(i));
        if (string2 != null) {
            mo22445a.mo22443a(Base64.decode(string2, 0));
        }
        C10744q.m22441a().f34607a.m22333a(mo22445a.mo22446a(), i2, RunnableC10807f.m22349a(this, jobParameters));
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
