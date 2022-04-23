package com.callerid.block.service;

import android.app.job.JobParameters;
import android.app.job.JobService;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.p040h.p041a.p045e.C0994c;
import com.callerid.block.util.C1227w;
/* loaded from: classes-dex2jar.jar:com/callerid/block/service/CollectJobService.class */
public class CollectJobService extends JobService {
    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        if (jobParameters == null) {
            return true;
        }
        try {
            if (jobParameters.getJobId() != 10088) {
                return true;
            }
            if (C1227w.f5084a) {
                C1227w.m9527a("collectinfo", "开始调度任务");
            }
            C0994c.m10386b(EZCallApplication.m10163c(), new a(this, jobParameters));
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        if (!C1227w.f5084a) {
            return true;
        }
        C1227w.m9527a("collectinfo", "onStopJob");
        return true;
    }
}
