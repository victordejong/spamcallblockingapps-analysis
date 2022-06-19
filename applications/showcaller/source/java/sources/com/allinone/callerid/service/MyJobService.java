package com.allinone.callerid.service;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/MyJobService.class */
public class MyJobService extends JobService {
    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        Log.d("MyJobService", "Performing long running task in scheduled job");
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }
}
