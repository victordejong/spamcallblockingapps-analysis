package com.birbit.android.jobqueue;

import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.birbit.android.jobqueue.CancelResult;
import com.birbit.android.jobqueue.IntCallback;
import com.birbit.android.jobqueue.callback.JobManagerCallback;
import com.birbit.android.jobqueue.callback.JobManagerCallbackAdapter;
import com.birbit.android.jobqueue.config.Configuration;
import com.birbit.android.jobqueue.log.JqLog;
import com.birbit.android.jobqueue.messaging.Message;
import com.birbit.android.jobqueue.messaging.MessageFactory;
import com.birbit.android.jobqueue.messaging.MessageQueue;
import com.birbit.android.jobqueue.messaging.PriorityMessageQueue;
import com.birbit.android.jobqueue.messaging.message.AddJobMessage;
import com.birbit.android.jobqueue.messaging.message.CancelMessage;
import com.birbit.android.jobqueue.messaging.message.CommandMessage;
import com.birbit.android.jobqueue.messaging.message.PublicQueryMessage;
import com.birbit.android.jobqueue.messaging.message.SchedulerMessage;
import com.birbit.android.jobqueue.scheduling.Scheduler;
import com.birbit.android.jobqueue.scheduling.SchedulerConstraint;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/JobManager.class */
public class JobManager {
    public static final long MIN_DELAY_TO_USE_SCHEDULER_IN_MS = 30000;
    public static final long NETWORK_CHECK_INTERVAL = TimeUnit.MILLISECONDS.toNanos(10000);
    public static final long NOT_DELAYED_JOB_DELAY = Long.MIN_VALUE;
    public static final long NOT_RUNNING_SESSION_ID = Long.MIN_VALUE;
    public static final long NS_PER_MS = 1000000;
    private Thread chefThread;
    final JobManagerThread jobManagerThread;
    private final MessageFactory messageFactory = new MessageFactory();
    private final PriorityMessageQueue messageQueue;
    @Nullable
    private Scheduler scheduler;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/JobManager$IntQueryFuture.class */
    public static class IntQueryFuture<T extends Message & IntCallback.MessageWithCallback> implements Future<Integer>, IntCallback {
        final T message;
        final MessageQueue messageQueue;
        volatile Integer result = null;
        final CountDownLatch latch = new CountDownLatch(1);

        IntQueryFuture(MessageQueue messageQueue, T t) {
            this.messageQueue = messageQueue;
            this.message = t;
            t.setCallback(this);
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z) {
            return false;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Future
        public Integer get() throws InterruptedException, ExecutionException {
            this.messageQueue.post(this.message);
            this.latch.await();
            return this.result;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Future
        public Integer get(long j, @NonNull TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            this.messageQueue.post(this.message);
            this.latch.await(j, timeUnit);
            return this.result;
        }

        Integer getSafe() {
            try {
                return get();
            } catch (Throwable th) {
                JqLog.m390e(th, "message is not complete", new Object[0]);
                throw new RuntimeException("cannot get the result of the JobManager query");
            }
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return false;
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return this.latch.getCount() == 0;
        }

        public void onResult(int i) {
            this.result = Integer.valueOf(i);
            this.latch.countDown();
        }
    }

    public JobManager(Configuration configuration) {
        this.messageQueue = new PriorityMessageQueue(configuration.getTimer(), this.messageFactory);
        this.jobManagerThread = new JobManagerThread(configuration, this.messageQueue, this.messageFactory);
        this.chefThread = new Thread(this.jobManagerThread, "job-manager");
        if (configuration.getScheduler() != null) {
            this.scheduler = configuration.getScheduler();
            configuration.getScheduler().init(configuration.getAppContext(), createSchedulerCallback());
        }
        this.chefThread.start();
    }

    private void assertNotInJobManagerThread(String str) {
        if (Thread.currentThread() == this.chefThread) {
            throw new WrongThreadException(str);
        }
    }

    private void assertNotInMainThread() {
        assertNotInMainThread("Cannot call this method on main thread.");
    }

    private void assertNotInMainThread(String str) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            throw new WrongThreadException(str);
        }
    }

    private Scheduler.Callback createSchedulerCallback() {
        return new Scheduler.Callback() { // from class: com.birbit.android.jobqueue.JobManager.1
            @Override // com.birbit.android.jobqueue.scheduling.Scheduler.Callback
            public boolean start(SchedulerConstraint schedulerConstraint) {
                JobManager.this.dispatchSchedulerStart(schedulerConstraint);
                return true;
            }

            @Override // com.birbit.android.jobqueue.scheduling.Scheduler.Callback
            public boolean stop(SchedulerConstraint schedulerConstraint) {
                JobManager.this.dispatchSchedulerStop(schedulerConstraint);
                return false;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchSchedulerStart(SchedulerConstraint schedulerConstraint) {
        SchedulerMessage schedulerMessage = (SchedulerMessage) this.messageFactory.obtain(SchedulerMessage.class);
        schedulerMessage.set(1, schedulerConstraint);
        this.messageQueue.post(schedulerMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchSchedulerStop(SchedulerConstraint schedulerConstraint) {
        SchedulerMessage schedulerMessage = (SchedulerMessage) this.messageFactory.obtain(SchedulerMessage.class);
        schedulerMessage.set(2, schedulerConstraint);
        this.messageQueue.post(schedulerMessage);
    }

    private void waitUntilConsumersAreFinished(boolean z) {
        assertNotInMainThread();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        this.jobManagerThread.consumerManager.addNoConsumersListener(new Runnable() { // from class: com.birbit.android.jobqueue.JobManager.2
            @Override // java.lang.Runnable
            public void run() {
                countDownLatch.countDown();
                JobManager.this.jobManagerThread.consumerManager.removeNoConsumersListener(this);
            }
        });
        if (z) {
            stop();
        }
        if (this.jobManagerThread.consumerManager.getWorkerCount() != 0) {
            try {
                countDownLatch.await();
            } catch (InterruptedException e) {
            }
            PublicQueryMessage publicQueryMessage = (PublicQueryMessage) this.messageFactory.obtain(PublicQueryMessage.class);
            publicQueryMessage.set(5, null);
            new IntQueryFuture(this.jobManagerThread.callbackManager.messageQueue, publicQueryMessage).getSafe();
        }
    }

    public void addCallback(JobManagerCallback jobManagerCallback) {
        this.jobManagerThread.addCallback(jobManagerCallback);
    }

    public void addJob(Job job) {
        assertNotInMainThread("Cannot call this method on main thread. Use addJobInBackground instead.");
        assertNotInJobManagerThread("Cannot call sync methods in JobManager's callback thread.Use addJobInBackground instead");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final String id = job.getId();
        addCallback(new JobManagerCallbackAdapter() { // from class: com.birbit.android.jobqueue.JobManager.3
            @Override // com.birbit.android.jobqueue.callback.JobManagerCallbackAdapter, com.birbit.android.jobqueue.callback.JobManagerCallback
            public void onJobAdded(@NonNull Job job2) {
                if (id.equals(job2.getId())) {
                    countDownLatch.countDown();
                    JobManager.this.removeCallback(this);
                }
            }
        });
        addJobInBackground(job);
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
        }
    }

    public void addJobInBackground(Job job) {
        AddJobMessage addJobMessage = (AddJobMessage) this.messageFactory.obtain(AddJobMessage.class);
        addJobMessage.setJob(job);
        this.messageQueue.post(addJobMessage);
    }

    public void addJobInBackground(Job job, final AsyncAddCallback asyncAddCallback) {
        if (asyncAddCallback == null) {
            addJobInBackground(job);
            return;
        }
        final String id = job.getId();
        addCallback(new JobManagerCallbackAdapter() { // from class: com.birbit.android.jobqueue.JobManager.4
            @Override // com.birbit.android.jobqueue.callback.JobManagerCallbackAdapter, com.birbit.android.jobqueue.callback.JobManagerCallback
            public void onJobAdded(@NonNull Job job2) {
                if (id.equals(job2.getId())) {
                    try {
                        asyncAddCallback.onAdded();
                    } finally {
                        JobManager.this.removeCallback(this);
                    }
                }
            }
        });
        addJobInBackground(job);
    }

    public CancelResult cancelJobs(TagConstraint tagConstraint, String... strArr) {
        assertNotInMainThread("Cannot call this method on main thread. Use cancelJobsInBackground instead");
        assertNotInJobManagerThread("Cannot call this method on JobManager's thread. UsecancelJobsInBackground instead");
        if (tagConstraint == null) {
            throw new IllegalArgumentException("must provide a TagConstraint");
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final CancelResult[] cancelResultArr = new CancelResult[1];
        CancelResult.AsyncCancelCallback asyncCancelCallback = new CancelResult.AsyncCancelCallback() { // from class: com.birbit.android.jobqueue.JobManager.5
            @Override // com.birbit.android.jobqueue.CancelResult.AsyncCancelCallback
            public void onCancelled(CancelResult cancelResult) {
                cancelResultArr[0] = cancelResult;
                countDownLatch.countDown();
            }
        };
        CancelMessage cancelMessage = (CancelMessage) this.messageFactory.obtain(CancelMessage.class);
        cancelMessage.setConstraint(tagConstraint);
        cancelMessage.setTags(strArr);
        cancelMessage.setCallback(asyncCancelCallback);
        this.messageQueue.post(cancelMessage);
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
        }
        return cancelResultArr[0];
    }

    public void cancelJobsInBackground(CancelResult.AsyncCancelCallback asyncCancelCallback, TagConstraint tagConstraint, String... strArr) {
        if (tagConstraint == null) {
            throw new IllegalArgumentException("must provide a TagConstraint");
        }
        CancelMessage cancelMessage = (CancelMessage) this.messageFactory.obtain(CancelMessage.class);
        cancelMessage.setCallback(asyncCancelCallback);
        cancelMessage.setConstraint(tagConstraint);
        cancelMessage.setTags(strArr);
        this.messageQueue.post(cancelMessage);
    }

    public void clear() {
        assertNotInMainThread();
        assertNotInJobManagerThread("Cannot call clear on JobManager's thread");
        PublicQueryMessage publicQueryMessage = (PublicQueryMessage) this.messageFactory.obtain(PublicQueryMessage.class);
        publicQueryMessage.set(5, null);
        new IntQueryFuture(this.messageQueue, publicQueryMessage).getSafe();
    }

    public int count() {
        assertNotInMainThread();
        assertNotInJobManagerThread("Cannot call count sync method in JobManager's thread");
        PublicQueryMessage publicQueryMessage = (PublicQueryMessage) this.messageFactory.obtain(PublicQueryMessage.class);
        publicQueryMessage.set(0, null);
        return new IntQueryFuture(this.messageQueue, publicQueryMessage).getSafe().intValue();
    }

    public int countReadyJobs() {
        assertNotInMainThread();
        assertNotInJobManagerThread("Cannot call countReadyJobs sync method on JobManager's thread");
        PublicQueryMessage publicQueryMessage = (PublicQueryMessage) this.messageFactory.obtain(PublicQueryMessage.class);
        publicQueryMessage.set(1, null);
        return new IntQueryFuture(this.messageQueue, publicQueryMessage).getSafe().intValue();
    }

    public void destroy() {
        JqLog.m392d("destroying job queue", new Object[0]);
        stopAndWaitUntilConsumersAreFinished();
        CommandMessage commandMessage = (CommandMessage) this.messageFactory.obtain(CommandMessage.class);
        commandMessage.set(1);
        this.messageQueue.post(commandMessage);
        this.jobManagerThread.callbackManager.destroy();
    }

    public int getActiveConsumerCount() {
        assertNotInMainThread();
        assertNotInJobManagerThread("Cannot call sync methods in JobManager's callback thread.");
        PublicQueryMessage publicQueryMessage = (PublicQueryMessage) this.messageFactory.obtain(PublicQueryMessage.class);
        publicQueryMessage.set(6, null);
        return new IntQueryFuture(this.messageQueue, publicQueryMessage).getSafe().intValue();
    }

    public Thread getJobManagerExecutionThread() {
        return this.chefThread;
    }

    public JobStatus getJobStatus(String str) {
        assertNotInMainThread();
        assertNotInJobManagerThread("Cannot call getJobStatus on JobManager's thread");
        PublicQueryMessage publicQueryMessage = (PublicQueryMessage) this.messageFactory.obtain(PublicQueryMessage.class);
        publicQueryMessage.set(4, str, null);
        return JobStatus.values()[new IntQueryFuture(this.messageQueue, publicQueryMessage).getSafe().intValue()];
    }

    @Nullable
    public Scheduler getScheduler() {
        return this.scheduler;
    }

    void internalRunInJobManagerThread(final Runnable runnable) throws Throwable {
        final Throwable[] thArr = new Throwable[1];
        PublicQueryMessage publicQueryMessage = (PublicQueryMessage) this.messageFactory.obtain(PublicQueryMessage.class);
        publicQueryMessage.set(101, null);
        new IntQueryFuture<PublicQueryMessage>(this.messageQueue, publicQueryMessage) { // from class: com.birbit.android.jobqueue.JobManager.6
            @Override // com.birbit.android.jobqueue.JobManager.IntQueryFuture, com.birbit.android.jobqueue.IntCallback
            public void onResult(int i) {
                try {
                    runnable.run();
                } catch (Throwable th) {
                    thArr[0] = th;
                }
                super.onResult(i);
            }
        }.getSafe();
        if (thArr[0] != null) {
            throw thArr[0];
        }
    }

    public boolean removeCallback(JobManagerCallback jobManagerCallback) {
        return this.jobManagerThread.removeCallback(jobManagerCallback);
    }

    public void start() {
        PublicQueryMessage publicQueryMessage = (PublicQueryMessage) this.messageFactory.obtain(PublicQueryMessage.class);
        publicQueryMessage.set(2, null);
        this.messageQueue.post(publicQueryMessage);
    }

    public void stop() {
        PublicQueryMessage publicQueryMessage = (PublicQueryMessage) this.messageFactory.obtain(PublicQueryMessage.class);
        publicQueryMessage.set(3, null);
        this.messageQueue.post(publicQueryMessage);
    }

    public void stopAndWaitUntilConsumersAreFinished() {
        waitUntilConsumersAreFinished(true);
    }

    public void waitUntilConsumersAreFinished() {
        waitUntilConsumersAreFinished(false);
    }
}
