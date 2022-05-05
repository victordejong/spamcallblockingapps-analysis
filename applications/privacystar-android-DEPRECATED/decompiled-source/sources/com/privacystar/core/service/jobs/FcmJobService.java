package com.privacystar.core.service.jobs;

import android.support.annotation.NonNull;
import com.birbit.android.jobqueue.JobManager;
import com.birbit.android.jobqueue.scheduling.GcmJobSchedulerService;
import com.privacystar.core.PSApplication;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/jobs/FcmJobService.class */
public class FcmJobService extends GcmJobSchedulerService {
    @Override // com.birbit.android.jobqueue.scheduling.GcmJobSchedulerService
    @NonNull
    protected JobManager getJobManager() {
        return PSApplication.getInstance().getJobManager();
    }
}
