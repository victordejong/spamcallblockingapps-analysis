package com.allinone.callerid.service;

import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.os.Build;
import com.allinone.callerid.p200l.p201a.AbstractC3041d;
import com.allinone.callerid.p200l.p201a.C3045f;
import com.allinone.callerid.util.C3718c0;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/OfflineJobService.class */
public class OfflineJobService extends JobService {

    /* renamed from: com.allinone.callerid.service.OfflineJobService$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/OfflineJobService$a.class */
    class C3585a implements AbstractC3041d {

        /* renamed from: a */
        final /* synthetic */ JobParameters f11554a;

        C3585a(JobParameters jobParameters) {
            OfflineJobService.this = r4;
            this.f11554a = jobParameters;
        }

        @Override // com.allinone.callerid.p200l.p201a.AbstractC3041d
        /* renamed from: a */
        public void mo24848a() {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "onSuccess");
            }
        }

        @Override // com.allinone.callerid.p200l.p201a.AbstractC3041d
        /* renamed from: b */
        public void mo24847b() {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "onEnd");
            }
            try {
                JobScheduler jobScheduler = (JobScheduler) OfflineJobService.this.getSystemService("jobscheduler");
                if (jobScheduler != null) {
                    jobScheduler.cancel(718);
                }
                OfflineJobService.this.jobFinished(this.f11554a, true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        if (Build.VERSION.SDK_INT < 21 || jobParameters == null || jobParameters.getJobId() != 718) {
            return false;
        }
        if (C3718c0.f11914a) {
            C3718c0.m24436a("wbb", "开始调度任务");
        }
        C3045f.m26162j(new C3585a(jobParameters));
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }
}
