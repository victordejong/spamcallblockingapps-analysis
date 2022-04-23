package com.birbit.android.jobqueue.callback;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.birbit.android.jobqueue.Job;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/callback/JobManagerCallbackAdapter.class */
public class JobManagerCallbackAdapter implements JobManagerCallback {
    @Override // com.birbit.android.jobqueue.callback.JobManagerCallback
    public void onAfterJobRun(@NonNull Job job, int i) {
    }

    @Override // com.birbit.android.jobqueue.callback.JobManagerCallback
    public void onDone(@NonNull Job job) {
    }

    @Override // com.birbit.android.jobqueue.callback.JobManagerCallback
    public void onJobAdded(@NonNull Job job) {
    }

    @Override // com.birbit.android.jobqueue.callback.JobManagerCallback
    public void onJobCancelled(@NonNull Job job, boolean z, @Nullable Throwable th) {
    }

    @Override // com.birbit.android.jobqueue.callback.JobManagerCallback
    public void onJobRun(@NonNull Job job, int i) {
    }
}
