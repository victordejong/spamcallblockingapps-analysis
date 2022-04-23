package com.callerid.block.service;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Build;
import com.callerid.block.p056k.p057a.C1084e;
import com.callerid.block.util.C1227w;
/* loaded from: classes-dex2jar.jar:com/callerid/block/service/OfflineJobService.class */
public class OfflineJobService extends JobService {
    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        if (Build.VERSION.SDK_INT < 21 || jobParameters == null || jobParameters.getJobId() != 718) {
            return false;
        }
        if (C1227w.f5084a) {
            C1227w.m9527a("wbb", "开始调度任务");
        }
        C1084e.m10176j(new a(this, jobParameters));
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }
}
