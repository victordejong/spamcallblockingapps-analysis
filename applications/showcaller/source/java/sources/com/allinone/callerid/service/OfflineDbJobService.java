package com.allinone.callerid.service;

import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.os.Build;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p200l.p201a.AbstractC3041d;
import com.allinone.callerid.p200l.p201a.C3045f;
import com.allinone.callerid.util.C3718c0;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/OfflineDbJobService.class */
public class OfflineDbJobService extends JobService {

    /* renamed from: com.allinone.callerid.service.OfflineDbJobService$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/OfflineDbJobService$a.class */
    class C3584a implements AbstractC3041d {

        /* renamed from: a */
        final /* synthetic */ JobParameters f11552a;

        C3584a(JobParameters jobParameters) {
            OfflineDbJobService.this = r4;
            this.f11552a = jobParameters;
        }

        @Override // com.allinone.callerid.p200l.p201a.AbstractC3041d
        /* renamed from: a */
        public void mo24848a() {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("checkupdate", "onSuccess");
            }
        }

        @Override // com.allinone.callerid.p200l.p201a.AbstractC3041d
        /* renamed from: b */
        public void mo24847b() {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("checkupdate", "onEnd");
            }
            try {
                JobScheduler jobScheduler = (JobScheduler) OfflineDbJobService.this.getSystemService("jobscheduler");
                if (jobScheduler != null) {
                    jobScheduler.cancel(970);
                }
                OfflineDbJobService.this.jobFinished(this.f11552a, true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        if (Build.VERSION.SDK_INT < 21 || jobParameters == null || jobParameters.getJobId() != 970) {
            return false;
        }
        if (C3718c0.f11914a) {
            C3718c0.m24436a("checkupdate", "开始DB调度任务");
        }
        C3045f.m26164h(EZCallApplication.m26146c(), true, new C3584a(jobParameters));
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }
}
