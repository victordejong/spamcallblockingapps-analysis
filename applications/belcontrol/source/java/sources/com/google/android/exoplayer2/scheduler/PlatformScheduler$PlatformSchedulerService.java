package com.google.android.exoplayer2.scheduler;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import android.os.PersistableBundle;
import com.google.android.exoplayer2.util.Util;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/scheduler/PlatformScheduler$PlatformSchedulerService.class */
public final class PlatformScheduler$PlatformSchedulerService extends JobService {
    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        PlatformScheduler.access$000("PlatformSchedulerService started");
        PersistableBundle extras = jobParameters.getExtras();
        if (!new Requirements(extras.getInt("requirements")).checkRequirements(this)) {
            PlatformScheduler.access$000("Requirements are not met");
            jobFinished(jobParameters, true);
            return false;
        }
        PlatformScheduler.access$000("Requirements are met");
        String string = extras.getString("service_action");
        String string2 = extras.getString("service_package");
        Intent intent = new Intent(string).setPackage(string2);
        PlatformScheduler.access$000("Starting service action: " + string + " package: " + string2);
        Util.startForegroundService(this, intent);
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }
}
