package com.millennialmedia.internal.task.reporting;

import android.annotation.TargetApi;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import com.millennialmedia.internal.task.JobSchedulerTask;
import com.millennialmedia.internal.utils.EnvironmentUtils;
@TargetApi(23)
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/task/reporting/PlacementReportingJobSchedulerTask.class */
public class PlacementReportingJobSchedulerTask extends JobSchedulerTask {
    private static final int DEFAULT_JOB_ID = 17;
    private static final String JOB_ID_RESOURCE_NAME = "placement_reporting_job_id";
    private static final String JOB_ID_RESOURCE_TYPE = "integer";
    private static final String TAG = "PlacementReportingJobSchedulerTask";

    @Override // com.millennialmedia.internal.task.Task
    public void execute(long j) {
        Context applicationContext = EnvironmentUtils.getApplicationContext();
        JobScheduler jobScheduler = (JobScheduler) applicationContext.getSystemService("jobscheduler");
        JobInfo.Builder requiredNetworkType = new JobInfo.Builder(retrieveJobId(), new ComponentName(applicationContext, PlacementReportingService.class)).setRequiredNetworkType(1);
        if (j > 0) {
            requiredNetworkType.setMinimumLatency(j);
        }
        jobScheduler.schedule(requiredNetworkType.build());
    }

    @Override // com.millennialmedia.internal.task.JobSchedulerTask
    public int getDefaultJobId() {
        return 17;
    }

    @Override // com.millennialmedia.internal.task.JobSchedulerTask
    public String getJobIdResourceName() {
        return JOB_ID_RESOURCE_NAME;
    }

    @Override // com.millennialmedia.internal.task.JobSchedulerTask
    public String getJobIdResourceType() {
        return JOB_ID_RESOURCE_TYPE;
    }

    @Override // com.millennialmedia.internal.task.JobSchedulerTask
    public String getTagName() {
        return TAG;
    }
}
