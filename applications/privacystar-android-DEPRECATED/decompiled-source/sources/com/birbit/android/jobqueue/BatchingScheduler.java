package com.birbit.android.jobqueue;

import android.content.Context;
import android.support.annotation.Nullable;
import com.birbit.android.jobqueue.scheduling.Scheduler;
import com.birbit.android.jobqueue.scheduling.SchedulerConstraint;
import com.birbit.android.jobqueue.timer.Timer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/BatchingScheduler.class */
public class BatchingScheduler extends Scheduler {
    public static final long DEFAULT_BATCHING_PERIOD_IN_MS = TimeUnit.SECONDS.toMillis(900);
    final long batchingDurationInMs;
    final long batchingDurationInNs;
    private final List<ConstraintWrapper> constraints;
    private final Scheduler delegate;
    private final Timer timer;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/BatchingScheduler$ConstraintWrapper.class */
    public static class ConstraintWrapper {
        final SchedulerConstraint constraint;
        @Nullable
        final Long deadlineNs;
        final long delayUntilNs;

        public ConstraintWrapper(long j, @Nullable Long l, SchedulerConstraint schedulerConstraint) {
            this.delayUntilNs = j;
            this.deadlineNs = l;
            this.constraint = schedulerConstraint;
        }
    }

    public BatchingScheduler(Scheduler scheduler, Timer timer) {
        this(scheduler, timer, DEFAULT_BATCHING_PERIOD_IN_MS);
    }

    public BatchingScheduler(Scheduler scheduler, Timer timer, long j) {
        this.constraints = new ArrayList();
        this.delegate = scheduler;
        this.timer = timer;
        this.batchingDurationInMs = j;
        this.batchingDurationInNs = TimeUnit.MILLISECONDS.toNanos(j);
    }

    private boolean addToConstraints(SchedulerConstraint schedulerConstraint) {
        Long l;
        long nanoTime = this.timer.nanoTime();
        long nanos = TimeUnit.MILLISECONDS.toNanos(schedulerConstraint.getDelayInMs());
        Long l2 = null;
        Long valueOf = schedulerConstraint.getOverrideDeadlineInMs() == null ? null : Long.valueOf(TimeUnit.MILLISECONDS.toNanos(schedulerConstraint.getOverrideDeadlineInMs().longValue()) + nanoTime);
        synchronized (this.constraints) {
            Iterator<ConstraintWrapper> it = this.constraints.iterator();
            do {
                if (!it.hasNext()) {
                    long delayInMs = ((schedulerConstraint.getDelayInMs() / this.batchingDurationInMs) + 1) * this.batchingDurationInMs;
                    schedulerConstraint.setDelayInMs(delayInMs);
                    if (schedulerConstraint.getOverrideDeadlineInMs() != null) {
                        l = Long.valueOf(((schedulerConstraint.getOverrideDeadlineInMs().longValue() / this.batchingDurationInMs) + 1) * this.batchingDurationInMs);
                        schedulerConstraint.setOverrideDeadlineInMs(l);
                    } else {
                        l = null;
                    }
                    List<ConstraintWrapper> list = this.constraints;
                    long nanos2 = TimeUnit.MILLISECONDS.toNanos(delayInMs);
                    if (l != null) {
                        l2 = Long.valueOf(nanoTime + TimeUnit.MILLISECONDS.toNanos(l.longValue()));
                    }
                    list.add(new ConstraintWrapper(nanos2 + nanoTime, l2, schedulerConstraint));
                    return true;
                }
            } while (!covers(it.next(), schedulerConstraint, nanos + nanoTime, valueOf));
            return false;
        }
    }

    private boolean covers(ConstraintWrapper constraintWrapper, SchedulerConstraint schedulerConstraint, long j, Long l) {
        if (constraintWrapper.constraint.getNetworkStatus() != schedulerConstraint.getNetworkStatus()) {
            return false;
        }
        if (l != null) {
            if (constraintWrapper.deadlineNs == null) {
                return false;
            }
            long longValue = constraintWrapper.deadlineNs.longValue() - l.longValue();
            if (longValue < 1 || longValue > this.batchingDurationInNs) {
                return false;
            }
        } else if (constraintWrapper.deadlineNs != null) {
            return false;
        }
        long j2 = constraintWrapper.delayUntilNs - j;
        boolean z = false;
        if (j2 > 0) {
            z = false;
            if (j2 <= this.batchingDurationInNs) {
                z = true;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeFromConstraints(SchedulerConstraint schedulerConstraint) {
        synchronized (this.constraints) {
            for (int size = this.constraints.size() - 1; size >= 0; size--) {
                if (this.constraints.get(size).constraint.getUuid().equals(schedulerConstraint.getUuid())) {
                    this.constraints.remove(size);
                }
            }
        }
    }

    @Override // com.birbit.android.jobqueue.scheduling.Scheduler
    public void cancelAll() {
        synchronized (this.constraints) {
            this.constraints.clear();
        }
        this.delegate.cancelAll();
    }

    @Override // com.birbit.android.jobqueue.scheduling.Scheduler
    public void init(Context context, Scheduler.Callback callback) {
        super.init(context, callback);
        this.delegate.init(context, new Scheduler.Callback() { // from class: com.birbit.android.jobqueue.BatchingScheduler.1
            @Override // com.birbit.android.jobqueue.scheduling.Scheduler.Callback
            public boolean start(SchedulerConstraint schedulerConstraint) {
                BatchingScheduler.this.removeFromConstraints(schedulerConstraint);
                return BatchingScheduler.this.start(schedulerConstraint);
            }

            @Override // com.birbit.android.jobqueue.scheduling.Scheduler.Callback
            public boolean stop(SchedulerConstraint schedulerConstraint) {
                return BatchingScheduler.this.stop(schedulerConstraint);
            }
        });
    }

    @Override // com.birbit.android.jobqueue.scheduling.Scheduler
    public void onFinished(SchedulerConstraint schedulerConstraint, boolean z) {
        removeFromConstraints(schedulerConstraint);
        this.delegate.onFinished(schedulerConstraint, false);
        if (z) {
            request(schedulerConstraint);
        }
    }

    @Override // com.birbit.android.jobqueue.scheduling.Scheduler
    public void request(SchedulerConstraint schedulerConstraint) {
        if (addToConstraints(schedulerConstraint)) {
            this.delegate.request(schedulerConstraint);
        }
    }
}
