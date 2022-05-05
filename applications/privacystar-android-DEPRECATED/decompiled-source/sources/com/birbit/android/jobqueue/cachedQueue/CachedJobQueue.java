package com.birbit.android.jobqueue.cachedQueue;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.birbit.android.jobqueue.Constraint;
import com.birbit.android.jobqueue.JobHolder;
import com.birbit.android.jobqueue.JobQueue;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/cachedQueue/CachedJobQueue.class */
public class CachedJobQueue implements JobQueue {
    private Integer cachedCount;
    private JobQueue delegate;

    public CachedJobQueue(JobQueue jobQueue) {
        this.delegate = jobQueue;
    }

    private void invalidateCache() {
        this.cachedCount = null;
    }

    private boolean isEmpty() {
        return this.cachedCount != null && this.cachedCount.intValue() == 0;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void clear() {
        invalidateCache();
        this.delegate.clear();
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public int count() {
        if (this.cachedCount == null) {
            this.cachedCount = Integer.valueOf(this.delegate.count());
        }
        return this.cachedCount.intValue();
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public int countReadyJobs(@NonNull Constraint constraint) {
        if (isEmpty()) {
            return 0;
        }
        return this.delegate.countReadyJobs(constraint);
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    @Nullable
    public JobHolder findJobById(@NonNull String str) {
        return this.delegate.findJobById(str);
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    @NonNull
    public Set<JobHolder> findJobs(@NonNull Constraint constraint) {
        return this.delegate.findJobs(constraint);
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public Long getNextJobDelayUntilNs(@NonNull Constraint constraint) {
        return this.delegate.getNextJobDelayUntilNs(constraint);
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public boolean insert(@NonNull JobHolder jobHolder) {
        invalidateCache();
        return this.delegate.insert(jobHolder);
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public boolean insertOrReplace(@NonNull JobHolder jobHolder) {
        invalidateCache();
        return this.delegate.insertOrReplace(jobHolder);
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public JobHolder nextJobAndIncRunCount(@NonNull Constraint constraint) {
        if (isEmpty()) {
            return null;
        }
        JobHolder nextJobAndIncRunCount = this.delegate.nextJobAndIncRunCount(constraint);
        if (!(nextJobAndIncRunCount == null || this.cachedCount == null)) {
            this.cachedCount = Integer.valueOf(this.cachedCount.intValue() - 1);
        }
        return nextJobAndIncRunCount;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void onJobCancelled(@NonNull JobHolder jobHolder) {
        invalidateCache();
        this.delegate.onJobCancelled(jobHolder);
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void remove(@NonNull JobHolder jobHolder) {
        invalidateCache();
        this.delegate.remove(jobHolder);
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void substitute(@NonNull JobHolder jobHolder, @NonNull JobHolder jobHolder2) {
        invalidateCache();
        this.delegate.substitute(jobHolder, jobHolder2);
    }
}
