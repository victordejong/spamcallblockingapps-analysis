package com.millennialmedia.internal.task.handshake;

import android.annotation.TargetApi;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import com.millennialmedia.internal.task.JobSchedulerTask;
import com.millennialmedia.internal.utils.EnvironmentUtils;
@TargetApi(23)
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/task/handshake/HandshakeRequestJobSchedulerTask.class */
public class HandshakeRequestJobSchedulerTask extends JobSchedulerTask {
    private static final int DEFAULT_JOB_ID = 15;
    private static final String JOB_ID_RESOURCE_NAME = "handshake_job_id";
    private static final String JOB_ID_RESOURCE_TYPE = "integer";
    private static final String TAG = "HandshakeRequestJobSchedulerTask";

    @Override // com.millennialmedia.internal.task.Task
    public void execute(long j) {
        Context applicationContext = EnvironmentUtils.getApplicationContext();
        JobScheduler jobScheduler = (JobScheduler) applicationContext.getSystemService("jobscheduler");
        JobInfo.Builder requiredNetworkType = new JobInfo.Builder(retrieveJobId(), new ComponentName(applicationContext, HandshakeRequestService.class)).setRequiredNetworkType(1);
        if (j > 0) {
            requiredNetworkType.setMinimumLatency(j);
        }
        jobScheduler.schedule(requiredNetworkType.build());
    }

    @Override // com.millennialmedia.internal.task.JobSchedulerTask
    public int getDefaultJobId() {
        return 15;
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
