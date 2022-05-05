package com.privacystar.core.service.jobs;

import android.support.annotation.NonNull;
import com.birbit.android.jobqueue.JobManager;
import com.birbit.android.jobqueue.scheduling.FrameworkJobSchedulerService;
import com.privacystar.core.PSApplication;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/jobs/JobService.class */
public class JobService extends FrameworkJobSchedulerService {
    @Override // com.birbit.android.jobqueue.scheduling.FrameworkJobSchedulerService
    @NonNull
    protected JobManager getJobManager() {
        return PSApplication.getInstance().getJobManager();
    }
}
