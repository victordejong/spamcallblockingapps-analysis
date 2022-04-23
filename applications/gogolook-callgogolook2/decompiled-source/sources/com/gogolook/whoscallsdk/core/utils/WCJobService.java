package com.gogolook.whoscallsdk.core.utils;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import p081h.p160h.p179e.p180a.AbstractC6342c;
import p081h.p160h.p179e.p180a.C6334a;
import p081h.p160h.p179e.p180a.p186m.AsyncTaskC6383i;
import p081h.p160h.p179e.p180a.p190p.C6438i;
import p081h.p160h.p179e.p180a.p190p.C6441l;
@TargetApi(21)
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/core/utils/WCJobService.class */
public class WCJobService extends JobService {

    /* renamed from: com.gogolook.whoscallsdk.core.utils.WCJobService$a */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/core/utils/WCJobService$a.class */
    public class C3533a extends AbstractC6342c {

        /* renamed from: a */
        public final /* synthetic */ JobParameters f6163a;

        public C3533a(JobParameters jobParameters) {
            this.f6163a = jobParameters;
        }

        @Override // p081h.p160h.p179e.p180a.AbstractC6342c
        /* renamed from: a */
        public void mo23197a() {
            C6438i.m22579c("[Job] job finished");
            WCJobService.this.jobFinished(this.f6163a, false);
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        int i = jobParameters.getExtras().getInt("JobType");
        C6438i.m22579c("[Job] onStartJob, jobType = " + i);
        C6441l.m22565a(this);
        if (i != 1) {
            return false;
        }
        C6334a.m23211s().m23264a(new AsyncTaskC6383i(new C3533a(jobParameters)));
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }
}
