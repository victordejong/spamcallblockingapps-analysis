package com.allinone.callerid.service;

import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.os.Build;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3810q;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/KeepAliveJobService.class */
public class KeepAliveJobService extends JobService {

    /* renamed from: com.allinone.callerid.service.KeepAliveJobService$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/KeepAliveJobService$a.class */
    class RunnableC3579a implements Runnable {
        RunnableC3579a() {
            KeepAliveJobService.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3810q.m24071b().m24070c("start_job");
            if (C3711a1.m24544f()) {
                if (!C3767h1.m24222t0(KeepAliveJobService.this.getApplicationContext(), MyService.class.getName())) {
                    C3810q.m24071b().m24070c("start_job_not_alive");
                    return;
                }
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("alive", "服务还活着");
                }
                C3810q.m24071b().m24070c("is_alived");
                C3711a1.m24630I0(false);
            }
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        try {
            if (Build.VERSION.SDK_INT < 21 || jobParameters == null || jobParameters.getJobId() != 6666) {
                return false;
            }
            if (C3718c0.f11914a) {
                C3718c0.m24436a("alive", "开始调度任务");
            }
            C3772i0.m24190a().f12015b.execute(new RunnableC3579a());
            try {
                JobScheduler jobScheduler = (JobScheduler) getSystemService("jobscheduler");
                if (jobScheduler != null) {
                    jobScheduler.cancel(6666);
                }
                jobFinished(jobParameters, true);
                return false;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }
}
