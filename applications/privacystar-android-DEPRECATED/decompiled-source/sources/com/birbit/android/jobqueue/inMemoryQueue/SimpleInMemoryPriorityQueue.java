package com.birbit.android.jobqueue.inMemoryQueue;

import android.support.annotation.NonNull;
import com.birbit.android.jobqueue.Constraint;
import com.birbit.android.jobqueue.JobHolder;
import com.birbit.android.jobqueue.JobQueue;
import com.birbit.android.jobqueue.config.Configuration;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/inMemoryQueue/SimpleInMemoryPriorityQueue.class */
public class SimpleInMemoryPriorityQueue implements JobQueue {
    private final long sessionId;
    private final TreeSet<JobHolder> jobs = new TreeSet<>(new Comparator<JobHolder>() { // from class: com.birbit.android.jobqueue.inMemoryQueue.SimpleInMemoryPriorityQueue.1
        private int compareInt(int i, int i2) {
            if (i > i2) {
                return -1;
            }
            return i2 > i ? 1 : 0;
        }

        private int compareLong(long j, long j2) {
            if (j > j2) {
                return -1;
            }
            return j2 > j ? 1 : 0;
        }

        public int compare(JobHolder jobHolder, JobHolder jobHolder2) {
            if (jobHolder.getJob().getId().equals(jobHolder2.getJob().getId())) {
                return 0;
            }
            int compareInt = compareInt(jobHolder.getPriority(), jobHolder2.getPriority());
            if (compareInt != 0) {
                return compareInt;
            }
            int i = -compareLong(jobHolder.getCreatedNs(), jobHolder2.getCreatedNs());
            return i != 0 ? i : -compareLong(jobHolder.getInsertionOrder().longValue(), jobHolder2.getInsertionOrder().longValue());
        }
    });
    private final Map<String, JobHolder> idCache = new HashMap();
    private final AtomicLong insertionOrderCounter = new AtomicLong(0);
    private final List<String> reusedList = new ArrayList();

    public SimpleInMemoryPriorityQueue(Configuration configuration, long j) {
        this.sessionId = j;
    }

    private static boolean matches(JobHolder jobHolder, Constraint constraint, boolean z) {
        if (!(constraint.getNowInNs() >= jobHolder.getDeadlineNs() || (z && jobHolder.hasDeadline())) && constraint.getMaxNetworkType() < jobHolder.getRequiredNetworkType()) {
            return false;
        }
        if (constraint.getTimeLimit() != null && jobHolder.getDelayUntilNs() > constraint.getTimeLimit().longValue()) {
            return false;
        }
        if ((jobHolder.getGroupId() != null && constraint.getExcludeGroups().contains(jobHolder.getGroupId())) || constraint.getExcludeJobIds().contains(jobHolder.getId())) {
            return false;
        }
        if (constraint.getTagConstraint() != null) {
            return jobHolder.getTags() != null && !constraint.getTags().isEmpty() && constraint.getTagConstraint().matches(constraint.getTags(), jobHolder.getTags());
        }
        return true;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void clear() {
        this.jobs.clear();
        this.idCache.clear();
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public int count() {
        return this.jobs.size();
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public int countReadyJobs(@NonNull Constraint constraint) {
        this.reusedList.clear();
        Iterator<JobHolder> it = this.jobs.iterator();
        int i = 0;
        while (it.hasNext()) {
            JobHolder next = it.next();
            String groupId = next.getGroupId();
            if (groupId == null || !this.reusedList.contains(groupId)) {
                if (matches(next, constraint, false)) {
                    int i2 = i + 1;
                    i = i2;
                    if (groupId != null) {
                        this.reusedList.add(groupId);
                        i = i2;
                    }
                }
            }
        }
        this.reusedList.clear();
        return i;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public JobHolder findJobById(@NonNull String str) {
        return this.idCache.get(str);
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    @NonNull
    public Set<JobHolder> findJobs(@NonNull Constraint constraint) {
        HashSet hashSet = new HashSet();
        Iterator<JobHolder> it = this.jobs.iterator();
        while (it.hasNext()) {
            JobHolder next = it.next();
            if (matches(next, constraint, false)) {
                hashSet.add(next);
            }
        }
        return hashSet;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public Long getNextJobDelayUntilNs(@NonNull Constraint constraint) {
        Iterator<JobHolder> it = this.jobs.iterator();
        Long l = null;
        while (it.hasNext()) {
            JobHolder next = it.next();
            boolean z = true;
            if (matches(next, constraint, true)) {
                if (!next.hasDelay() || !matches(next, constraint, false)) {
                    z = false;
                }
                boolean hasDeadline = next.hasDeadline();
                long min = hasDeadline == z ? Math.min(next.getDeadlineNs(), next.getDelayUntilNs()) : hasDeadline ? next.getDeadlineNs() : next.getDelayUntilNs();
                if (l == null || min < l.longValue()) {
                    l = Long.valueOf(min);
                }
            }
        }
        return l;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public boolean insert(@NonNull JobHolder jobHolder) {
        jobHolder.setInsertionOrder(this.insertionOrderCounter.incrementAndGet());
        if (this.idCache.get(jobHolder.getId()) != null) {
            throw new IllegalArgumentException("cannot add a job with the same id twice");
        }
        this.idCache.put(jobHolder.getId(), jobHolder);
        this.jobs.add(jobHolder);
        return true;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public boolean insertOrReplace(@NonNull JobHolder jobHolder) {
        if (jobHolder.getInsertionOrder() == null) {
            return insert(jobHolder);
        }
        JobHolder jobHolder2 = this.idCache.get(jobHolder.getId());
        if (jobHolder2 != null) {
            remove(jobHolder2);
        }
        this.idCache.put(jobHolder.getId(), jobHolder);
        this.jobs.add(jobHolder);
        return true;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public JobHolder nextJobAndIncRunCount(@NonNull Constraint constraint) {
        Iterator<JobHolder> it = this.jobs.iterator();
        while (it.hasNext()) {
            JobHolder next = it.next();
            if (matches(next, constraint, false)) {
                remove(next);
                next.setRunCount(next.getRunCount() + 1);
                next.setRunningSessionId(this.sessionId);
                return next;
            }
        }
        return null;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void onJobCancelled(JobHolder jobHolder) {
        remove(jobHolder);
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void remove(@NonNull JobHolder jobHolder) {
        this.idCache.remove(jobHolder.getId());
        this.jobs.remove(jobHolder);
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void substitute(@NonNull JobHolder jobHolder, @NonNull JobHolder jobHolder2) {
        remove(jobHolder2);
        insert(jobHolder);
    }
}
