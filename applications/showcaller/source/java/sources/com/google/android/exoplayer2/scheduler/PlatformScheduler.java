package com.google.android.exoplayer2.scheduler;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import android.os.PersistableBundle;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
@TargetApi(21)
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/scheduler/PlatformScheduler.class */
public final class PlatformScheduler implements AbstractC5199c {

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/scheduler/PlatformScheduler$PlatformSchedulerService.class */
    public static final class PlatformSchedulerService extends JobService {
        @Override // android.app.job.JobService
        public boolean onStartJob(JobParameters jobParameters) {
            PlatformScheduler.m20187c("PlatformSchedulerService started");
            PersistableBundle extras = jobParameters.getExtras();
            if (!new Requirements(extras.getInt("requirements")).m20186a(this)) {
                PlatformScheduler.m20187c("Requirements are not met");
                jobFinished(jobParameters, true);
                return false;
            }
            PlatformScheduler.m20187c("Requirements are met");
            String string = extras.getString("service_action");
            String string2 = extras.getString("service_package");
            Intent intent = new Intent((String) C5508e.m18911e(string)).setPackage(string2);
            PlatformScheduler.m20187c("Starting service action: " + string + " package: " + string2);
            C5515h0.m18812q0(this, intent);
            return false;
        }

        @Override // android.app.job.JobService
        public boolean onStopJob(JobParameters jobParameters) {
            return false;
        }
    }

    /* renamed from: c */
    public static void m20187c(String str) {
    }
}
