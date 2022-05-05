package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import androidx.annotation.RequiresApi;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import p081h.p203i.p204a.p206b.p209j.AbstractC6580m;
import p081h.p203i.p204a.p206b.p209j.C6586r;
import p081h.p203i.p204a.p206b.p209j.p211b0.C6561a;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.RunnableC6633f;
@RequiresApi(api = 21)
/* loaded from: classes2-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService.class */
public class JobInfoSchedulerService extends JobService {
    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i = jobParameters.getExtras().getInt(IapProductRealmObject.PRIORITY);
        int i2 = jobParameters.getExtras().getInt("attemptNumber");
        C6586r.m22281a(getApplicationContext());
        AbstractC6580m.AbstractC6581a d = AbstractC6580m.m22292d();
        d.mo22289a(string);
        d.mo22290a(C6561a.m22343a(i));
        if (string2 != null) {
            d.mo22288a(Base64.decode(string2, 0));
        }
        C6586r.m22277b().m22282a().m22183a(d.mo22291a(), i2, RunnableC6633f.m22212a(this, jobParameters));
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
