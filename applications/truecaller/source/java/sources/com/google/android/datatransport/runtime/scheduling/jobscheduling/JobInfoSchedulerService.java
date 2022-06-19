package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.huawei.hms.push.constant.RemoteMessageConst;
import p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24158r;
import p193e.p1577m.p1578a.p1580b.p1583j.C24144j;
import p193e.p1577m.p1578a.p1580b.p1583j.C24163v;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.C24074t;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.RunnableC24053d;
import p193e.p1577m.p1578a.p1580b.p1583j.p1592f0.C24138a;
/* loaded from: classes2-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService.class */
public class JobInfoSchedulerService extends JobService {
    @Override // android.app.job.JobService
    public boolean onStartJob(final JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i = jobParameters.getExtras().getInt(RemoteMessageConst.Notification.PRIORITY);
        int i2 = jobParameters.getExtras().getInt("attemptNumber");
        C24163v.m5516c(getApplicationContext());
        AbstractC24158r.AbstractC24159a m5527a = AbstractC24158r.m5527a();
        m5527a.mo5522b(string);
        m5527a.mo5521c(C24138a.m5547b(i));
        if (string2 != null) {
            ((C24144j.C24146b) m5527a).f66864b = Base64.decode(string2, 0);
        }
        C24074t c24074t = C24163v.m5518a().f66897d;
        c24074t.f66736e.execute(new RunnableC24053d(c24074t, m5527a.mo5523a(), i2, new Runnable() { // from class: e.m.a.b.j.c0.h.c
            @Override // java.lang.Runnable
            public final void run() {
                JobInfoSchedulerService.this.jobFinished(jobParameters, false);
            }
        }));
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
