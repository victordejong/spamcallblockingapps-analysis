package com.birbit.android.jobqueue;

import android.content.Context;
import android.support.annotation.Nullable;
import com.birbit.android.jobqueue.JobHolder;
import com.birbit.android.jobqueue.callback.JobManagerCallback;
import com.birbit.android.jobqueue.config.Configuration;
import com.birbit.android.jobqueue.log.JqLog;
import com.birbit.android.jobqueue.messaging.Message;
import com.birbit.android.jobqueue.messaging.MessageFactory;
import com.birbit.android.jobqueue.messaging.MessageQueueConsumer;
import com.birbit.android.jobqueue.messaging.PriorityMessageQueue;
import com.birbit.android.jobqueue.messaging.Type;
import com.birbit.android.jobqueue.messaging.message.AddJobMessage;
import com.birbit.android.jobqueue.messaging.message.CancelMessage;
import com.birbit.android.jobqueue.messaging.message.CommandMessage;
import com.birbit.android.jobqueue.messaging.message.ConstraintChangeMessage;
import com.birbit.android.jobqueue.messaging.message.JobConsumerIdleMessage;
import com.birbit.android.jobqueue.messaging.message.PublicQueryMessage;
import com.birbit.android.jobqueue.messaging.message.RunJobResultMessage;
import com.birbit.android.jobqueue.messaging.message.SchedulerMessage;
import com.birbit.android.jobqueue.network.NetworkEventProvider;
import com.birbit.android.jobqueue.network.NetworkUtil;
import com.birbit.android.jobqueue.p005di.DependencyInjector;
import com.birbit.android.jobqueue.scheduling.Scheduler;
import com.birbit.android.jobqueue.scheduling.SchedulerConstraint;
import com.birbit.android.jobqueue.timer.Timer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/JobManagerThread.class */
public class JobManagerThread implements Runnable, NetworkEventProvider.Listener {
    public static final long NOT_DELAYED_JOB_DELAY = Long.MIN_VALUE;
    public static final long NOT_RUNNING_SESSION_ID = Long.MIN_VALUE;
    public static final long NS_PER_MS = 1000000;
    private final Context appContext;
    final CallbackManager callbackManager;
    final ConsumerManager consumerManager;
    private final DependencyInjector dependencyInjector;
    private final MessageFactory messageFactory;
    final PriorityMessageQueue messageQueue;
    private final NetworkUtil networkUtil;
    final JobQueue nonPersistentJobQueue;
    @Nullable
    private List<CancelHandler> pendingCancelHandlers;
    @Nullable
    private List<SchedulerConstraint> pendingSchedulerCallbacks;
    final JobQueue persistentJobQueue;
    @Nullable
    Scheduler scheduler;
    private final long sessionId;
    final Timer timer;
    final Constraint queryConstraint = new Constraint();
    private boolean running = true;
    private boolean shouldCancelAllScheduledWhenEmpty = false;
    private boolean canScheduleConstraintChangeOnIdle = true;

    /* renamed from: com.birbit.android.jobqueue.JobManagerThread$2 */
    /* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/JobManagerThread$2.class */
    static /* synthetic */ class C09312 {
        static final /* synthetic */ int[] $SwitchMap$com$birbit$android$jobqueue$messaging$Type = new int[Type.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$com$birbit$android$jobqueue$messaging$Type[Type.ADD_JOB.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$birbit$android$jobqueue$messaging$Type[Type.JOB_CONSUMER_IDLE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$birbit$android$jobqueue$messaging$Type[Type.RUN_JOB_RESULT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$birbit$android$jobqueue$messaging$Type[Type.CONSTRAINT_CHANGE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$birbit$android$jobqueue$messaging$Type[Type.CANCEL.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$birbit$android$jobqueue$messaging$Type[Type.PUBLIC_QUERY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$birbit$android$jobqueue$messaging$Type[Type.COMMAND.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$birbit$android$jobqueue$messaging$Type[Type.SCHEDULER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JobManagerThread(Configuration configuration, PriorityMessageQueue priorityMessageQueue, MessageFactory messageFactory) {
        this.messageQueue = priorityMessageQueue;
        if (configuration.getCustomLogger() != null) {
            JqLog.setCustomLogger(configuration.getCustomLogger());
        }
        this.messageFactory = messageFactory;
        this.timer = configuration.getTimer();
        this.appContext = configuration.getAppContext();
        this.sessionId = this.timer.nanoTime();
        this.scheduler = configuration.getScheduler();
        if (this.scheduler != null && configuration.batchSchedulerRequests() && !(this.scheduler instanceof BatchingScheduler)) {
            this.scheduler = new BatchingScheduler(this.scheduler, this.timer);
        }
        this.persistentJobQueue = configuration.getQueueFactory().createPersistentQueue(configuration, this.sessionId);
        this.nonPersistentJobQueue = configuration.getQueueFactory().createNonPersistent(configuration, this.sessionId);
        this.networkUtil = configuration.getNetworkUtil();
        this.dependencyInjector = configuration.getDependencyInjector();
        if (this.networkUtil instanceof NetworkEventProvider) {
            ((NetworkEventProvider) this.networkUtil).setListener(this);
        }
        this.consumerManager = new ConsumerManager(this, this.timer, messageFactory, configuration);
        this.callbackManager = new CallbackManager(messageFactory, this.timer);
    }

    private void cancelSafely(JobHolder jobHolder, int i) {
        try {
            jobHolder.onCancel(i);
        } catch (Throwable th) {
            JqLog.m390e(th, "job's onCancel did throw an exception, ignoring...", new Object[0]);
        }
        this.callbackManager.notifyOnCancel(jobHolder.getJob(), false, jobHolder.getThrowable());
    }

    private void clear() {
        this.nonPersistentJobQueue.clear();
        this.persistentJobQueue.clear();
    }

    private int countReadyJobs(int i) {
        Collection<String> safe = this.consumerManager.runningJobGroups.getSafe();
        this.queryConstraint.clear();
        this.queryConstraint.setNowInNs(this.timer.nanoTime());
        this.queryConstraint.setMaxNetworkType(i);
        this.queryConstraint.setExcludeGroups(safe);
        this.queryConstraint.setExcludeRunning(true);
        this.queryConstraint.setTimeLimit(Long.valueOf(this.timer.nanoTime()));
        return this.nonPersistentJobQueue.countReadyJobs(this.queryConstraint) + 0 + this.persistentJobQueue.countReadyJobs(this.queryConstraint);
    }

    private JobHolder findJobBySingleId(String str) {
        if (str == null) {
            return null;
        }
        this.queryConstraint.clear();
        this.queryConstraint.setTags(new String[]{str});
        this.queryConstraint.setTagConstraint(TagConstraint.ANY);
        this.queryConstraint.setMaxNetworkType(2);
        Set<JobHolder> findJobs = this.nonPersistentJobQueue.findJobs(this.queryConstraint);
        findJobs.addAll(this.persistentJobQueue.findJobs(this.queryConstraint));
        if (findJobs.isEmpty()) {
            return null;
        }
        for (JobHolder jobHolder : findJobs) {
            if (!this.consumerManager.isJobRunning(jobHolder.getId())) {
                return jobHolder;
            }
        }
        return findJobs.iterator().next();
    }

    private JobStatus getJobStatus(String str) {
        if (this.consumerManager.isJobRunning(str)) {
            return JobStatus.RUNNING;
        }
        JobHolder findJobById = this.nonPersistentJobQueue.findJobById(str);
        JobHolder jobHolder = findJobById;
        if (findJobById == null) {
            jobHolder = this.persistentJobQueue.findJobById(str);
        }
        if (jobHolder == null) {
            return JobStatus.UNKNOWN;
        }
        int networkStatus = getNetworkStatus();
        long nanoTime = this.timer.nanoTime();
        if (networkStatus >= jobHolder.requiredNetworkType && jobHolder.getDelayUntilNs() <= nanoTime) {
            return JobStatus.WAITING_READY;
        }
        return JobStatus.WAITING_NOT_READY;
    }

    private int getNetworkStatus() {
        return this.networkUtil == null ? 2 : this.networkUtil.getNetworkStatus(this.appContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAddJob(AddJobMessage addJobMessage) {
        Job job = addJobMessage.getJob();
        long nanoTime = this.timer.nanoTime();
        JobHolder build = new JobHolder.Builder().priority(job.getPriority()).job(job).groupId(job.getRunGroupId()).createdNs(nanoTime).delayUntilNs(job.getDelayInMs() > 0 ? (job.getDelayInMs() * 1000000) + nanoTime : Long.MIN_VALUE).m394id(job.getId()).tags(job.getTags()).persistent(job.isPersistent()).runCount(0).deadline(job.getDeadlineInMs() > 0 ? (job.getDeadlineInMs() * 1000000) + nanoTime : Long.MAX_VALUE, job.shouldCancelOnDeadline()).requiredNetworkType(job.requiredNetworkType).runningSessionId(Long.MIN_VALUE).build();
        JobHolder findJobBySingleId = findJobBySingleId(job.getSingleInstanceId());
        boolean z = findJobBySingleId == null || this.consumerManager.isJobRunning(findJobBySingleId.getId());
        if (z) {
            JobQueue jobQueue = job.isPersistent() ? this.persistentJobQueue : this.nonPersistentJobQueue;
            if (findJobBySingleId != null) {
                this.consumerManager.markJobsCancelledSingleId(TagConstraint.ANY, new String[]{job.getSingleInstanceId()});
                jobQueue.substitute(build, findJobBySingleId);
            } else {
                jobQueue.insert(build);
            }
            if (JqLog.isDebugEnabled()) {
                JqLog.m392d("added job class: %s priority: %d delay: %d group : %s persistent: %s", job.getClass().getSimpleName(), Integer.valueOf(job.getPriority()), Long.valueOf(job.getDelayInMs()), job.getRunGroupId(), Boolean.valueOf(job.isPersistent()));
            }
        } else {
            JqLog.m392d("another job with same singleId: %s was already queued", job.getSingleInstanceId());
        }
        if (this.dependencyInjector != null) {
            this.dependencyInjector.inject(job);
        }
        build.setApplicationContext(this.appContext);
        build.getJob().onAdded();
        this.callbackManager.notifyOnAdded(build.getJob());
        if (z) {
            this.consumerManager.onJobAdded();
            if (job.isPersistent()) {
                scheduleWakeUpFor(build, nanoTime);
                return;
            }
            return;
        }
        cancelSafely(build, 1);
        this.callbackManager.notifyOnDone(build.getJob());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCancel(CancelMessage cancelMessage) {
        CancelHandler cancelHandler = new CancelHandler(cancelMessage.getConstraint(), cancelMessage.getTags(), cancelMessage.getCallback());
        cancelHandler.query(this, this.consumerManager);
        if (cancelHandler.isDone()) {
            cancelHandler.commit(this);
            return;
        }
        if (this.pendingCancelHandlers == null) {
            this.pendingCancelHandlers = new ArrayList();
        }
        this.pendingCancelHandlers.add(cancelHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCommand(CommandMessage commandMessage) {
        if (commandMessage.getWhat() == 1) {
            this.messageQueue.stop();
            this.messageQueue.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePublicQuery(PublicQueryMessage publicQueryMessage) {
        int what = publicQueryMessage.getWhat();
        if (what != 101) {
            switch (what) {
                case 0:
                    publicQueryMessage.getCallback().onResult(count());
                    return;
                case 1:
                    publicQueryMessage.getCallback().onResult(countReadyJobs(getNetworkStatus()));
                    return;
                case 2:
                    JqLog.m392d("handling start request...", new Object[0]);
                    if (!this.running) {
                        this.running = true;
                        this.consumerManager.handleConstraintChange();
                        return;
                    }
                    return;
                case 3:
                    JqLog.m392d("handling stop request...", new Object[0]);
                    this.running = false;
                    this.consumerManager.handleStop();
                    return;
                case 4:
                    publicQueryMessage.getCallback().onResult(getJobStatus(publicQueryMessage.getStringArg()).ordinal());
                    return;
                case 5:
                    clear();
                    if (publicQueryMessage.getCallback() != null) {
                        publicQueryMessage.getCallback().onResult(0);
                        return;
                    }
                    return;
                case 6:
                    publicQueryMessage.getCallback().onResult(this.consumerManager.getWorkerCount());
                    return;
                default:
                    throw new IllegalArgumentException("cannot handle public query with type " + publicQueryMessage.getWhat());
            }
        } else {
            publicQueryMessage.getCallback().onResult(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRunJobResult(RunJobResultMessage runJobResultMessage) {
        RetryConstraint retryConstraint;
        int result = runJobResultMessage.getResult();
        JobHolder jobHolder = runJobResultMessage.getJobHolder();
        this.callbackManager.notifyOnRun(jobHolder.getJob(), result);
        int i = 0;
        switch (result) {
            case 1:
                removeJob(jobHolder);
                retryConstraint = null;
                break;
            case 2:
                cancelSafely(jobHolder, 2);
                removeJob(jobHolder);
                retryConstraint = null;
                break;
            case 3:
                JqLog.m392d("running job failed and cancelled, doing nothing. Will be removed after it's onCancel is called by the CancelHandler", new Object[0]);
                retryConstraint = null;
                break;
            case 4:
                retryConstraint = jobHolder.getRetryConstraint();
                insertOrReplace(jobHolder);
                break;
            case 5:
                cancelSafely(jobHolder, 5);
                removeJob(jobHolder);
                retryConstraint = null;
                break;
            case 6:
                cancelSafely(jobHolder, 6);
                removeJob(jobHolder);
                retryConstraint = null;
                break;
            case 7:
                cancelSafely(jobHolder, 7);
                removeJob(jobHolder);
                retryConstraint = null;
                break;
            default:
                throw new IllegalArgumentException("unknown job holder result");
        }
        this.consumerManager.handleRunJobResult(runJobResultMessage, jobHolder, retryConstraint);
        this.callbackManager.notifyAfterRun(jobHolder.getJob(), result);
        if (this.pendingCancelHandlers != null) {
            int size = this.pendingCancelHandlers.size();
            while (i < size) {
                CancelHandler cancelHandler = this.pendingCancelHandlers.get(i);
                cancelHandler.onJobRun(jobHolder, result);
                int i2 = i;
                size = size;
                if (cancelHandler.isDone()) {
                    cancelHandler.commit(this);
                    this.pendingCancelHandlers.remove(i);
                    i2 = i - 1;
                    size--;
                }
                i = i2 + 1;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSchedulerMessage(SchedulerMessage schedulerMessage) {
        int what = schedulerMessage.getWhat();
        if (what == 1) {
            handleSchedulerStart(schedulerMessage.getConstraint());
        } else if (what == 2) {
            handleSchedulerStop(schedulerMessage.getConstraint());
        } else {
            throw new IllegalArgumentException("Unknown scheduler message with what " + what);
        }
    }

    private void handleSchedulerStart(SchedulerConstraint schedulerConstraint) {
        if (!isRunning()) {
            if (this.scheduler != null) {
                this.scheduler.onFinished(schedulerConstraint, true);
            }
        } else if (hasJobsWithSchedulerConstraint(schedulerConstraint)) {
            if (this.pendingSchedulerCallbacks == null) {
                this.pendingSchedulerCallbacks = new ArrayList();
            }
            this.pendingSchedulerCallbacks.add(schedulerConstraint);
            this.consumerManager.handleConstraintChange();
        } else if (this.scheduler != null) {
            this.scheduler.onFinished(schedulerConstraint, false);
        }
    }

    private void handleSchedulerStop(SchedulerConstraint schedulerConstraint) {
        List<SchedulerConstraint> list = this.pendingSchedulerCallbacks;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (list.get(size).getUuid().equals(schedulerConstraint.getUuid())) {
                    list.remove(size);
                }
            }
        }
        if (this.scheduler != null && hasJobsWithSchedulerConstraint(schedulerConstraint)) {
            this.scheduler.request(schedulerConstraint);
        }
    }

    private boolean hasJobsWithSchedulerConstraint(SchedulerConstraint schedulerConstraint) {
        boolean z = true;
        if (this.consumerManager.hasJobsWithSchedulerConstraint(schedulerConstraint)) {
            return true;
        }
        this.queryConstraint.clear();
        this.queryConstraint.setNowInNs(this.timer.nanoTime());
        this.queryConstraint.setMaxNetworkType(schedulerConstraint.getNetworkStatus());
        if (this.persistentJobQueue.countReadyJobs(this.queryConstraint) <= 0) {
            z = false;
        }
        return z;
    }

    private void insertOrReplace(JobHolder jobHolder) {
        RetryConstraint retryConstraint = jobHolder.getRetryConstraint();
        if (retryConstraint == null) {
            reAddJob(jobHolder);
            return;
        }
        if (retryConstraint.getNewPriority() != null) {
            jobHolder.setPriority(retryConstraint.getNewPriority().intValue());
        }
        long j = -1;
        if (retryConstraint.getNewDelayInMs() != null) {
            j = retryConstraint.getNewDelayInMs().longValue();
        }
        jobHolder.setDelayUntilNs(j > 0 ? this.timer.nanoTime() + (j * 1000000) : Long.MIN_VALUE);
        reAddJob(jobHolder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeSchedulersIfIdle() {
        if (!(this.scheduler == null || this.pendingSchedulerCallbacks == null || this.pendingSchedulerCallbacks.isEmpty() || !this.consumerManager.areAllConsumersIdle())) {
            for (int size = this.pendingSchedulerCallbacks.size() - 1; size >= 0; size--) {
                SchedulerConstraint remove = this.pendingSchedulerCallbacks.remove(size);
                this.scheduler.onFinished(remove, hasJobsWithSchedulerConstraint(remove));
            }
        }
    }

    private void reAddJob(JobHolder jobHolder) {
        if (jobHolder.isCancelled()) {
            JqLog.m392d("not re-adding cancelled job " + jobHolder, new Object[0]);
        } else if (jobHolder.getJob().isPersistent()) {
            this.persistentJobQueue.insertOrReplace(jobHolder);
        } else {
            this.nonPersistentJobQueue.insertOrReplace(jobHolder);
        }
    }

    private void removeJob(JobHolder jobHolder) {
        if (jobHolder.getJob().isPersistent()) {
            this.persistentJobQueue.remove(jobHolder);
        } else {
            this.nonPersistentJobQueue.remove(jobHolder);
        }
        this.callbackManager.notifyOnDone(jobHolder.getJob());
    }

    private void scheduleWakeUpFor(JobHolder jobHolder, long j) {
        if (this.scheduler != null) {
            int i = jobHolder.requiredNetworkType;
            long delayUntilNs = jobHolder.getDelayUntilNs();
            long deadlineNs = jobHolder.getDeadlineNs();
            int i2 = (delayUntilNs > j ? 1 : (delayUntilNs == j ? 0 : -1));
            long millis = i2 > 0 ? TimeUnit.NANOSECONDS.toMillis(delayUntilNs - j) : 0L;
            Long valueOf = deadlineNs != Long.MAX_VALUE ? Long.valueOf(TimeUnit.NANOSECONDS.toMillis(deadlineNs - j)) : null;
            boolean z = i2 > 0 && millis >= 30000;
            boolean z2 = false;
            if (valueOf != null) {
                z2 = false;
                if (valueOf.longValue() >= 30000) {
                    z2 = true;
                }
            }
            if (i != 0 || z || z2) {
                SchedulerConstraint schedulerConstraint = new SchedulerConstraint(UUID.randomUUID().toString());
                schedulerConstraint.setNetworkStatus(i);
                schedulerConstraint.setDelayInMs(millis);
                schedulerConstraint.setOverrideDeadlineInMs(valueOf);
                this.scheduler.request(schedulerConstraint);
                this.shouldCancelAllScheduledWhenEmpty = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addCallback(JobManagerCallback jobManagerCallback) {
        this.callbackManager.addCallback(jobManagerCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean canListenToNetwork() {
        return this.networkUtil instanceof NetworkEventProvider;
    }

    int count() {
        return this.persistentJobQueue.count() + this.nonPersistentJobQueue.count();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int countRemainingReadyJobs() {
        return countReadyJobs(getNetworkStatus());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JobHolder getNextJob(Collection<String> collection) {
        return getNextJob(collection, false);
    }

    JobHolder getNextJob(Collection<String> collection, boolean z) {
        JobHolder nextJobAndIncRunCount;
        boolean z2;
        if (!this.running && !z) {
            return null;
        }
        while (true) {
            JobHolder jobHolder = null;
            while (jobHolder == null) {
                int networkStatus = getNetworkStatus();
                JqLog.m389v("looking for next job", new Object[0]);
                this.queryConstraint.clear();
                long nanoTime = this.timer.nanoTime();
                this.queryConstraint.setNowInNs(nanoTime);
                this.queryConstraint.setMaxNetworkType(networkStatus);
                this.queryConstraint.setExcludeGroups(collection);
                boolean z3 = true;
                this.queryConstraint.setExcludeRunning(true);
                this.queryConstraint.setTimeLimit(Long.valueOf(nanoTime));
                nextJobAndIncRunCount = this.nonPersistentJobQueue.nextJobAndIncRunCount(this.queryConstraint);
                JqLog.m389v("non persistent result %s", nextJobAndIncRunCount);
                if (nextJobAndIncRunCount == null) {
                    nextJobAndIncRunCount = this.persistentJobQueue.nextJobAndIncRunCount(this.queryConstraint);
                    JqLog.m389v("persistent result %s", nextJobAndIncRunCount);
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (nextJobAndIncRunCount == null) {
                    return null;
                }
                if (z2 && this.dependencyInjector != null) {
                    this.dependencyInjector.inject(nextJobAndIncRunCount.getJob());
                }
                nextJobAndIncRunCount.setApplicationContext(this.appContext);
                if (nextJobAndIncRunCount.getDeadlineNs() > nanoTime) {
                    z3 = false;
                }
                nextJobAndIncRunCount.setDeadlineIsReached(z3);
                jobHolder = nextJobAndIncRunCount;
                if (nextJobAndIncRunCount.getDeadlineNs() <= nanoTime) {
                    jobHolder = nextJobAndIncRunCount;
                    if (nextJobAndIncRunCount.shouldCancelOnDeadline()) {
                        break;
                    }
                }
            }
            return jobHolder;
            cancelSafely(nextJobAndIncRunCount, 7);
            removeJob(nextJobAndIncRunCount);
        }
    }

    JobHolder getNextJobForTesting() {
        return getNextJobForTesting(null);
    }

    JobHolder getNextJobForTesting(Collection<String> collection) {
        return getNextJob(collection, true);
    }

    Long getNextWakeUpNs(boolean z) {
        Long nextDelayForGroups = this.consumerManager.runningJobGroups.getNextDelayForGroups();
        int networkStatus = getNetworkStatus();
        Collection<String> safe = this.consumerManager.runningJobGroups.getSafe();
        this.queryConstraint.clear();
        this.queryConstraint.setNowInNs(this.timer.nanoTime());
        this.queryConstraint.setMaxNetworkType(networkStatus);
        this.queryConstraint.setExcludeGroups(safe);
        this.queryConstraint.setExcludeRunning(true);
        Long nextJobDelayUntilNs = this.nonPersistentJobQueue.getNextJobDelayUntilNs(this.queryConstraint);
        Long nextJobDelayUntilNs2 = this.persistentJobQueue.getNextJobDelayUntilNs(this.queryConstraint);
        if (nextDelayForGroups == null) {
            nextDelayForGroups = null;
        }
        Long l = nextDelayForGroups;
        if (nextJobDelayUntilNs != null) {
            l = Long.valueOf(nextDelayForGroups == null ? nextJobDelayUntilNs.longValue() : Math.min(nextJobDelayUntilNs.longValue(), nextDelayForGroups.longValue()));
        }
        Long l2 = l;
        if (nextJobDelayUntilNs2 != null) {
            l2 = Long.valueOf(l == null ? nextJobDelayUntilNs2.longValue() : Math.min(nextJobDelayUntilNs2.longValue(), l.longValue()));
        }
        Long l3 = l2;
        if (z) {
            l3 = l2;
            if (!(this.networkUtil instanceof NetworkEventProvider)) {
                long nanoTime = this.timer.nanoTime() + JobManager.NETWORK_CHECK_INTERVAL;
                if (l2 != null) {
                    nanoTime = Math.min(nanoTime, l2.longValue());
                }
                l3 = Long.valueOf(nanoTime);
            }
        }
        return l3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isRunning() {
        return this.running;
    }

    @Override // com.birbit.android.jobqueue.network.NetworkEventProvider.Listener
    public void onNetworkChange(int i) {
        this.messageQueue.post((ConstraintChangeMessage) this.messageFactory.obtain(ConstraintChangeMessage.class));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean removeCallback(JobManagerCallback jobManagerCallback) {
        return this.callbackManager.removeCallback(jobManagerCallback);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.messageQueue.consume(new MessageQueueConsumer() { // from class: com.birbit.android.jobqueue.JobManagerThread.1
            @Override // com.birbit.android.jobqueue.messaging.MessageQueueConsumer
            public void handleMessage(Message message) {
                JobManagerThread.this.canScheduleConstraintChangeOnIdle = true;
                switch (C09312.$SwitchMap$com$birbit$android$jobqueue$messaging$Type[message.type.ordinal()]) {
                    case 1:
                        JobManagerThread.this.handleAddJob((AddJobMessage) message);
                        return;
                    case 2:
                        if (!JobManagerThread.this.consumerManager.handleIdle((JobConsumerIdleMessage) message)) {
                            JobManagerThread.this.invokeSchedulersIfIdle();
                            return;
                        }
                        return;
                    case 3:
                        JobManagerThread.this.handleRunJobResult((RunJobResultMessage) message);
                        return;
                    case 4:
                        boolean handleConstraintChange = JobManagerThread.this.consumerManager.handleConstraintChange();
                        ConstraintChangeMessage constraintChangeMessage = (ConstraintChangeMessage) message;
                        JobManagerThread jobManagerThread = JobManagerThread.this;
                        boolean z = true;
                        if (!handleConstraintChange) {
                            z = !constraintChangeMessage.isForNextJob();
                        }
                        jobManagerThread.canScheduleConstraintChangeOnIdle = z;
                        return;
                    case 5:
                        JobManagerThread.this.handleCancel((CancelMessage) message);
                        return;
                    case 6:
                        JobManagerThread.this.handlePublicQuery((PublicQueryMessage) message);
                        return;
                    case 7:
                        JobManagerThread.this.handleCommand((CommandMessage) message);
                        return;
                    case 8:
                        JobManagerThread.this.handleSchedulerMessage((SchedulerMessage) message);
                        return;
                    default:
                        return;
                }
            }

            @Override // com.birbit.android.jobqueue.messaging.MessageQueueConsumer
            public void onIdle() {
                JqLog.m389v("joq idle. running:? %s", Boolean.valueOf(JobManagerThread.this.running));
                if (JobManagerThread.this.running) {
                    if (!JobManagerThread.this.canScheduleConstraintChangeOnIdle) {
                        JqLog.m389v("skipping scheduling a new idle callback because looks like last one did not do anything", new Object[0]);
                        return;
                    }
                    Long nextWakeUpNs = JobManagerThread.this.getNextWakeUpNs(true);
                    JqLog.m392d("Job queue idle. next job at: %s", nextWakeUpNs);
                    if (nextWakeUpNs != null) {
                        ConstraintChangeMessage constraintChangeMessage = (ConstraintChangeMessage) JobManagerThread.this.messageFactory.obtain(ConstraintChangeMessage.class);
                        constraintChangeMessage.setForNextJob(true);
                        JobManagerThread.this.messageQueue.postAt(constraintChangeMessage, nextWakeUpNs.longValue());
                    } else if (JobManagerThread.this.scheduler != null && JobManagerThread.this.shouldCancelAllScheduledWhenEmpty && JobManagerThread.this.persistentJobQueue.count() == 0) {
                        JobManagerThread.this.shouldCancelAllScheduledWhenEmpty = false;
                        JobManagerThread.this.scheduler.cancelAll();
                    }
                }
            }
        });
    }
}
