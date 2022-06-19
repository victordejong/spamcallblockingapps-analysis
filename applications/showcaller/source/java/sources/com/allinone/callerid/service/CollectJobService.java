package com.allinone.callerid.service;

import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.os.Build;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p162i.p163a.p174i.AbstractC2836a;
import com.allinone.callerid.p162i.p163a.p174i.C2839c;
import com.allinone.callerid.util.C3718c0;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/CollectJobService.class */
public class CollectJobService extends JobService {

    /* renamed from: com.allinone.callerid.service.CollectJobService$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/CollectJobService$a.class */
    class C3578a implements AbstractC2836a {

        /* renamed from: a */
        final /* synthetic */ JobParameters f11539a;

        C3578a(JobParameters jobParameters) {
            CollectJobService.this = r4;
            this.f11539a = jobParameters;
        }

        @Override // com.allinone.callerid.p162i.p163a.p174i.AbstractC2836a
        /* renamed from: a */
        public void mo23879a(String str) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("collectinfo", "调度任务完成");
            }
            try {
                if (Build.VERSION.SDK_INT < 21) {
                    return;
                }
                JobScheduler jobScheduler = (JobScheduler) CollectJobService.this.getSystemService("jobscheduler");
                if (jobScheduler != null) {
                    jobScheduler.cancel(10086);
                }
                CollectJobService.this.jobFinished(this.f11539a, true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        if (jobParameters != null) {
            try {
                if (jobParameters.getJobId() != 10086) {
                    return true;
                }
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("collectinfo", "开始调度任务");
                }
                C2839c.m26518b(EZCallApplication.m26146c(), new C3578a(jobParameters));
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return true;
            }
        }
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        if (C3718c0.f11914a) {
            C3718c0.m24436a("collectinfo", "onStopJob");
            return true;
        }
        return true;
    }
}
