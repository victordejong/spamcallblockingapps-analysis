package com.allinone.callerid.service;

import android.annotation.TargetApi;
import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3720d;
import java.lang.ref.WeakReference;
@TargetApi(21)
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/MultiJobService.class */
public class MultiJobService extends JobService {

    /* renamed from: d */
    private HandlerC3581b f11542d = new HandlerC3581b();

    /* renamed from: com.allinone.callerid.service.MultiJobService$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/MultiJobService$b.class */
    private static class HandlerC3581b extends Handler {

        /* renamed from: a */
        private WeakReference<MultiJobService> f11543a;

        private HandlerC3581b(MultiJobService multiJobService) {
            this.f11543a = new WeakReference<>(multiJobService);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            MultiJobService multiJobService = this.f11543a.get();
            if (multiJobService != null) {
                ((JobScheduler) multiJobService.getSystemService("jobscheduler")).cancel(0);
                multiJobService.jobFinished((JobParameters) message.obj, true);
                C3720d.m24429a(multiJobService.getApplicationContext());
            }
            super.handleMessage(message);
        }
    }

    /* renamed from: a */
    public void m24855a() {
        if (C3718c0.f11914a) {
            C3718c0.m24436a("wakeapp", "scheduleJob");
        }
        JobInfo.Builder builder = new JobInfo.Builder(0, new ComponentName(this, MultiJobService.class));
        builder.setRequiredNetworkType(1);
        builder.setPersisted(true);
        builder.setRequiresCharging(false);
        builder.setRequiresDeviceIdle(true);
        builder.setMinimumLatency(1000L);
        builder.setOverrideDeadline(1800000L);
        ((JobScheduler) getSystemService("jobscheduler")).schedule(builder.build());
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (C3718c0.f11914a) {
            C3718c0.m24436a("wakeapp", "onStartCommand");
        }
        m24855a();
        return 2;
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        if (C3718c0.f11914a) {
            C3718c0.m24436a("wakeapp", "onStartJob" + jobParameters.getJobId());
        }
        if (jobParameters == null || jobParameters.getJobId() != 10059) {
            Message obtain = Message.obtain();
            obtain.obj = jobParameters;
            this.f11542d.sendMessage(obtain);
            return true;
        }
        if (C3718c0.f11914a) {
            C3718c0.m24436a("wakeapp", "执行后台上传");
        }
        JobScheduler jobScheduler = (JobScheduler) getSystemService("jobscheduler");
        if (jobScheduler != null) {
            jobScheduler.cancel(10059);
        }
        jobFinished(jobParameters, true);
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        if (C3718c0.f11914a) {
            C3718c0.m24436a("wakeapp", "onStopJob");
        }
        this.f11542d.removeMessages(0);
        return true;
    }
}
