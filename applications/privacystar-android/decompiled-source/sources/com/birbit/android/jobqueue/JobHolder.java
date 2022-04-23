package com.birbit.android.jobqueue;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.birbit.android.jobqueue.timer.Timer;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/JobHolder.class */
public class JobHolder {
    public static final int RUN_RESULT_FAIL_FOR_CANCEL = 3;
    public static final int RUN_RESULT_FAIL_RUN_LIMIT = 2;
    public static final int RUN_RESULT_FAIL_SHOULD_RE_RUN = 5;
    public static final int RUN_RESULT_FAIL_SINGLE_ID = 6;
    public static final int RUN_RESULT_HIT_DEADLINE = 7;
    public static final int RUN_RESULT_SUCCESS = 1;
    public static final int RUN_RESULT_TRY_AGAIN = 4;
    private boolean cancelOnDeadline;
    private volatile boolean cancelled;
    private volatile boolean cancelledSingleId;
    private long createdNs;
    private long deadlineNs;
    private long delayUntilNs;
    public final String groupId;

    /* renamed from: id */
    public final String f86id;
    private Long insertionOrder;
    final transient Job job;
    public final boolean persistent;
    private int priority;
    int requiredNetworkType;
    RetryConstraint retryConstraint;
    private int runCount;
    private long runningSessionId;
    protected final Set<String> tags;
    @Nullable
    private Throwable throwable;

    /* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/JobHolder$Builder.class */
    public static class Builder {
        private static final int FLAG_CREATED_NS = 32;
        private static final int FLAG_DEADLINE = 128;
        private static final int FLAG_DELAY_UNTIL = 64;
        private static final int FLAG_GROUP_ID = 8;
        private static final int FLAG_ID = 4;
        private static final int FLAG_JOB = 16;
        private static final int FLAG_PERSISTENT = 2;
        private static final int FLAG_PRIORITY = 1;
        private static final int FLAG_REQ_NETWORK = 1024;
        private static final int FLAG_RUNNING_SESSION_ID = 256;
        private static final int FLAG_TAGS = 512;
        private static final int REQUIRED_FLAGS = 2047;
        private long createdNs;
        private String groupId;

        /* renamed from: id */
        private String f87id;
        private Long insertionOrder;
        private Job job;
        private boolean persistent;
        private int priority;
        private int requiredNetworkType;
        private long runningSessionId;
        private Set<String> tags;
        private int runCount = 0;
        private long delayUntilNs = Long.MIN_VALUE;
        private long deadlineNs = Long.MAX_VALUE;
        private boolean cancelOnDeadline = false;
        private int providedFlags = 0;

        public JobHolder build() {
            if (this.job == null) {
                throw new IllegalArgumentException("must provide a job");
            }
            int i = this.providedFlags & REQUIRED_FLAGS;
            if (i != REQUIRED_FLAGS) {
                throw new IllegalArgumentException("must provide all required fields. your result:" + Long.toBinaryString(i));
            }
            JobHolder jobHolder = new JobHolder(this.f87id, this.persistent, this.priority, this.groupId, this.runCount, this.job, this.createdNs, this.delayUntilNs, this.runningSessionId, this.tags, this.requiredNetworkType, this.deadlineNs, this.cancelOnDeadline);
            if (this.insertionOrder != null) {
                jobHolder.setInsertionOrder(this.insertionOrder.longValue());
            }
            this.job.updateFromJobHolder(jobHolder);
            return jobHolder;
        }

        public Builder createdNs(long j) {
            this.createdNs = j;
            this.providedFlags |= 32;
            return this;
        }

        public Builder deadline(long j, boolean z) {
            this.deadlineNs = j;
            this.cancelOnDeadline = z;
            this.providedFlags |= 128;
            return this;
        }

        public Builder delayUntilNs(long j) {
            this.delayUntilNs = j;
            this.providedFlags |= 64;
            return this;
        }

        public Builder groupId(String str) {
            this.groupId = str;
            this.providedFlags |= 8;
            return this;
        }

        /* renamed from: id */
        public Builder m394id(String str) {
            this.f87id = str;
            this.providedFlags |= 4;
            return this;
        }

        public Builder insertionOrder(long j) {
            this.insertionOrder = Long.valueOf(j);
            return this;
        }

        public Builder job(Job job) {
            this.job = job;
            this.providedFlags |= 16;
            return this;
        }

        public Builder persistent(boolean z) {
            this.persistent = z;
            this.providedFlags |= 2;
            return this;
        }

        public Builder priority(int i) {
            this.priority = i;
            this.providedFlags |= 1;
            return this;
        }

        public Builder requiredNetworkType(int i) {
            this.requiredNetworkType = i;
            this.providedFlags |= 1024;
            return this;
        }

        public Builder runCount(int i) {
            this.runCount = i;
            return this;
        }

        public Builder runningSessionId(long j) {
            this.runningSessionId = j;
            this.providedFlags |= 256;
            return this;
        }

        public Builder tags(Set<String> set) {
            this.tags = set;
            this.providedFlags |= 512;
            return this;
        }
    }

    private JobHolder(String str, boolean z, int i, String str2, int i2, Job job, long j, long j2, long j3, Set<String> set, int i3, long j4, boolean z2) {
        this.f86id = str;
        this.persistent = z;
        this.priority = i;
        this.groupId = str2;
        this.runCount = i2;
        this.createdNs = j;
        this.delayUntilNs = j2;
        this.job = job;
        this.runningSessionId = j3;
        this.requiredNetworkType = i3;
        this.tags = set;
        this.deadlineNs = j4;
        this.cancelOnDeadline = z2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof JobHolder)) {
            return false;
        }
        return this.f86id.equals(((JobHolder) obj).f86id);
    }

    public long getCreatedNs() {
        return this.createdNs;
    }

    public long getDeadlineNs() {
        return this.deadlineNs;
    }

    public long getDelayUntilNs() {
        return this.delayUntilNs;
    }

    public String getGroupId() {
        return this.groupId;
    }

    @NonNull
    public String getId() {
        return this.f86id;
    }

    public Long getInsertionOrder() {
        return this.insertionOrder;
    }

    public Job getJob() {
        return this.job;
    }

    public int getPriority() {
        return this.priority;
    }

    public int getRequiredNetworkType() {
        return this.requiredNetworkType;
    }

    public RetryConstraint getRetryConstraint() {
        return this.retryConstraint;
    }

    public int getRunCount() {
        return this.runCount;
    }

    public long getRunningSessionId() {
        return this.runningSessionId;
    }

    public final String getSingleInstanceId() {
        if (this.tags == null) {
            return null;
        }
        for (String str : this.tags) {
            if (str.startsWith("job-single-id:")) {
                return str;
            }
        }
        return null;
    }

    public Set<String> getTags() {
        return this.tags;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Throwable getThrowable() {
        return this.throwable;
    }

    public boolean hasDeadline() {
        return this.deadlineNs != Long.MAX_VALUE;
    }

    public boolean hasDelay() {
        return this.delayUntilNs != Long.MIN_VALUE;
    }

    public boolean hasTags() {
        return this.tags != null && this.tags.size() > 0;
    }

    public int hashCode() {
        return this.f86id.hashCode();
    }

    public boolean isCancelled() {
        return this.cancelled;
    }

    public boolean isCancelledSingleId() {
        return this.cancelledSingleId;
    }

    public void markAsCancelled() {
        this.cancelled = true;
        this.job.cancelled = true;
    }

    public void markAsCancelledSingleId() {
        this.cancelledSingleId = true;
        markAsCancelled();
    }

    public void onCancel(int i) {
        this.job.onCancel(i, this.throwable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int safeRun(int i, Timer timer) {
        return this.job.safeRun(this, i, timer);
    }

    public void setApplicationContext(Context context) {
        this.job.setApplicationContext(context);
    }

    public void setDeadlineIsReached(boolean z) {
        this.job.setDeadlineReached(z);
    }

    public void setDelayUntilNs(long j) {
        this.delayUntilNs = j;
    }

    public void setInsertionOrder(long j) {
        this.insertionOrder = Long.valueOf(j);
    }

    public void setPriority(int i) {
        this.priority = i;
        this.job.priority = this.priority;
    }

    public void setRunCount(int i) {
        this.runCount = i;
    }

    public void setRunningSessionId(long j) {
        this.runningSessionId = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setThrowable(@Nullable Throwable th) {
        this.throwable = th;
    }

    public boolean shouldCancelOnDeadline() {
        return this.cancelOnDeadline;
    }
}
