package com.privacystar.core.service.jobs;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.birbit.android.jobqueue.Job;
import com.birbit.android.jobqueue.Params;
import com.birbit.android.jobqueue.RetryConstraint;
import com.privacystar.core.data.providers.LogProvider;
import com.privacystar.core.data.providers.LogProviderCB;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/jobs/ActivityLogProcessingJob.class */
public class ActivityLogProcessingJob extends Job {
    private LogProvider logProvider;
    private LogProviderCB logProviderCB;

    public ActivityLogProcessingJob(LogProvider logProvider, LogProviderCB logProviderCB) {
        super(new Params(999).setPersistent(false).setGroupId(JobConstants.GROUP_ACTIVITY_PROCESSING));
        this.logProvider = logProvider;
        this.logProviderCB = logProviderCB;
    }

    @Override // com.birbit.android.jobqueue.Job
    public void onAdded() {
        Timber.m37d("Processed a LogProvider to perform setup on.", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.birbit.android.jobqueue.Job
    public void onCancel(int i, @Nullable Throwable th) {
    }

    @Override // com.birbit.android.jobqueue.Job
    public void onRun() throws Throwable {
        Timber.m37d("Executing LogProvider setup.", new Object[0]);
        boolean upVar = this.logProvider.setup();
        if (this.logProviderCB != null) {
            this.logProviderCB.logProviderLoaded(this.logProvider, upVar);
        }
    }

    @Override // com.birbit.android.jobqueue.Job
    protected RetryConstraint shouldReRunOnThrowable(@NonNull Throwable th, int i, int i2) {
        return RetryConstraint.CANCEL;
    }
}
