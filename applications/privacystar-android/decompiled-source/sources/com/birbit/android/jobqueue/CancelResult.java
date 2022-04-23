package com.birbit.android.jobqueue;

import java.util.Collection;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/CancelResult.class */
public class CancelResult {
    private Collection<Job> cancelledJobs;
    private Collection<Job> failedToCancel;

    /* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/CancelResult$AsyncCancelCallback.class */
    public interface AsyncCancelCallback {
        void onCancelled(CancelResult cancelResult);
    }

    public CancelResult(Collection<Job> collection, Collection<Job> collection2) {
        this.cancelledJobs = collection;
        this.failedToCancel = collection2;
    }

    public Collection<Job> getCancelledJobs() {
        return this.cancelledJobs;
    }

    public Collection<Job> getFailedToCancel() {
        return this.failedToCancel;
    }
}
