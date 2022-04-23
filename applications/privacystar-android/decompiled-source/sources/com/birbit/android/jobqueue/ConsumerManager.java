package com.birbit.android.jobqueue;

import android.support.annotation.NonNull;
import com.birbit.android.jobqueue.config.Configuration;
import com.birbit.android.jobqueue.log.JqLog;
import com.birbit.android.jobqueue.messaging.Message;
import com.birbit.android.jobqueue.messaging.MessageFactory;
import com.birbit.android.jobqueue.messaging.MessagePredicate;
import com.birbit.android.jobqueue.messaging.MessageQueue;
import com.birbit.android.jobqueue.messaging.MessageQueueConsumer;
import com.birbit.android.jobqueue.messaging.SafeMessageQueue;
import com.birbit.android.jobqueue.messaging.Type;
import com.birbit.android.jobqueue.messaging.message.CommandMessage;
import com.birbit.android.jobqueue.messaging.message.JobConsumerIdleMessage;
import com.birbit.android.jobqueue.messaging.message.RunJobMessage;
import com.birbit.android.jobqueue.messaging.message.RunJobResultMessage;
import com.birbit.android.jobqueue.scheduling.SchedulerConstraint;
import com.birbit.android.jobqueue.timer.Timer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ThreadFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/ConsumerManager.class */
public class ConsumerManager {
    private final long consumerKeepAliveNs;
    private final MessageFactory factory;
    private final JobManagerThread jobManagerThread;
    private final int loadFactor;
    private final int maxConsumerCount;
    private final int minConsumerCount;
    final RunningJobSet runningJobGroups;
    private final ThreadFactory threadFactory;
    private final int threadPriority;
    private final Timer timer;
    private List<Consumer> waitingConsumers = new ArrayList();
    private final List<Consumer> consumers = new ArrayList();
    private final CopyOnWriteArrayList<Runnable> internalZeroConsumersListeners = new CopyOnWriteArrayList<>();
    private final Map<String, JobHolder> runningJobHolders = new HashMap();
    private final ThreadGroup threadGroup = new ThreadGroup("JobConsumers");

    /* renamed from: com.birbit.android.jobqueue.ConsumerManager$1 */
    /* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/ConsumerManager$1.class */
    static /* synthetic */ class C09201 {
        static final /* synthetic */ int[] $SwitchMap$com$birbit$android$jobqueue$messaging$Type = new int[Type.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$com$birbit$android$jobqueue$messaging$Type[Type.RUN_JOB.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$birbit$android$jobqueue$messaging$Type[Type.COMMAND.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/ConsumerManager$Consumer.class */
    public static class Consumer implements Runnable {
        static final MessagePredicate pokeMessagePredicate = new MessagePredicate() { // from class: com.birbit.android.jobqueue.ConsumerManager.Consumer.1
            @Override // com.birbit.android.jobqueue.messaging.MessagePredicate
            public boolean onMessage(Message message) {
                return message.type == Type.COMMAND && ((CommandMessage) message).getWhat() == 2;
            }
        };
        final MessageFactory factory;
        boolean hasJob;
        long lastJobCompleted;
        final SafeMessageQueue messageQueue;
        final MessageQueue parentMessageQueue;
        final MessageQueueConsumer queueConsumer = new MessageQueueConsumer() { // from class: com.birbit.android.jobqueue.ConsumerManager.Consumer.2
            @Override // com.birbit.android.jobqueue.messaging.MessageQueueConsumer
            public void handleMessage(Message message) {
                switch (C09201.$SwitchMap$com$birbit$android$jobqueue$messaging$Type[message.type.ordinal()]) {
                    case 1:
                        Consumer.this.handleRunJob((RunJobMessage) message);
                        Consumer.this.lastJobCompleted = Consumer.this.timer.nanoTime();
                        Consumer.this.removePokeMessages();
                        return;
                    case 2:
                        Consumer.this.handleCommand((CommandMessage) message);
                        return;
                    default:
                        return;
                }
            }

            @Override // com.birbit.android.jobqueue.messaging.MessageQueueConsumer
            public void onIdle() {
                JqLog.m392d("consumer manager on idle", new Object[0]);
                JobConsumerIdleMessage jobConsumerIdleMessage = (JobConsumerIdleMessage) Consumer.this.factory.obtain(JobConsumerIdleMessage.class);
                jobConsumerIdleMessage.setWorker(Consumer.this);
                jobConsumerIdleMessage.setLastJobCompleted(Consumer.this.lastJobCompleted);
                Consumer.this.parentMessageQueue.post(jobConsumerIdleMessage);
            }
        };
        final Timer timer;

        public Consumer(MessageQueue messageQueue, SafeMessageQueue safeMessageQueue, MessageFactory messageFactory, Timer timer) {
            this.messageQueue = safeMessageQueue;
            this.factory = messageFactory;
            this.parentMessageQueue = messageQueue;
            this.timer = timer;
            this.lastJobCompleted = timer.nanoTime();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleCommand(CommandMessage commandMessage) {
            switch (commandMessage.getWhat()) {
                case 1:
                    this.messageQueue.stop();
                    return;
                case 2:
                    JqLog.m392d("Consumer has been poked.", new Object[0]);
                    return;
                default:
                    return;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleRunJob(RunJobMessage runJobMessage) {
            JqLog.m392d("running job %s", runJobMessage.getJobHolder().getClass().getSimpleName());
            JobHolder jobHolder = runJobMessage.getJobHolder();
            int safeRun = jobHolder.safeRun(jobHolder.getRunCount(), this.timer);
            RunJobResultMessage runJobResultMessage = (RunJobResultMessage) this.factory.obtain(RunJobResultMessage.class);
            runJobResultMessage.setJobHolder(jobHolder);
            runJobResultMessage.setResult(safeRun);
            runJobResultMessage.setWorker(this);
            this.parentMessageQueue.post(runJobResultMessage);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removePokeMessages() {
            this.messageQueue.cancelMessages(pokeMessagePredicate);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.messageQueue.consume(this.queueConsumer);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConsumerManager(JobManagerThread jobManagerThread, Timer timer, MessageFactory messageFactory, Configuration configuration) {
        this.jobManagerThread = jobManagerThread;
        this.timer = timer;
        this.factory = messageFactory;
        this.loadFactor = configuration.getLoadFactor();
        this.minConsumerCount = configuration.getMinConsumerCount();
        this.maxConsumerCount = configuration.getMaxConsumerCount();
        this.consumerKeepAliveNs = configuration.getConsumerKeepAlive() * 1000 * 1000000;
        this.threadPriority = configuration.getThreadPriority();
        this.threadFactory = configuration.getThreadFactory();
        this.runningJobGroups = new RunningJobSet(timer);
    }

    private void addWorker() {
        Thread thread;
        JqLog.m392d("adding another consumer", new Object[0]);
        Consumer consumer = new Consumer(this.jobManagerThread.messageQueue, new SafeMessageQueue(this.timer, this.factory, "consumer"), this.factory, this.timer);
        if (this.threadFactory != null) {
            thread = this.threadFactory.newThread(consumer);
        } else {
            ThreadGroup threadGroup = this.threadGroup;
            thread = new Thread(threadGroup, consumer, "job-queue-worker-" + UUID.randomUUID());
            thread.setPriority(this.threadPriority);
        }
        this.consumers.add(consumer);
        thread.start();
    }

    private boolean considerAddingConsumers(boolean z) {
        JqLog.m392d("considering adding a new consumer. Should poke all waiting? %s isRunning? %s waiting workers? %d", Boolean.valueOf(z), Boolean.valueOf(this.jobManagerThread.isRunning()), Integer.valueOf(this.waitingConsumers.size()));
        if (!this.jobManagerThread.isRunning()) {
            JqLog.m392d("jobqueue is not running, no consumers will be added", new Object[0]);
            return false;
        } else if (this.waitingConsumers.size() > 0) {
            JqLog.m392d("there are waiting workers, will poke them instead", new Object[0]);
            for (int size = this.waitingConsumers.size() - 1; size >= 0; size--) {
                Consumer remove = this.waitingConsumers.remove(size);
                CommandMessage commandMessage = (CommandMessage) this.factory.obtain(CommandMessage.class);
                commandMessage.set(2);
                remove.messageQueue.post(commandMessage);
                if (!z) {
                    break;
                }
            }
            JqLog.m392d("there were waiting workers, poked them and I'm done", new Object[0]);
            return true;
        } else {
            boolean isAboveLoadFactor = isAboveLoadFactor();
            JqLog.m392d("nothing has been poked. are we above load factor? %s", Boolean.valueOf(isAboveLoadFactor));
            if (!isAboveLoadFactor) {
                return false;
            }
            addWorker();
            return true;
        }
    }

    private boolean isAboveLoadFactor() {
        int size = this.consumers.size();
        if (size >= this.maxConsumerCount) {
            JqLog.m392d("too many consumers, clearly above load factor %s", Integer.valueOf(size));
            return false;
        }
        int countRemainingReadyJobs = this.jobManagerThread.countRemainingReadyJobs();
        int size2 = this.runningJobHolders.size();
        int i = countRemainingReadyJobs + size2;
        boolean z = this.loadFactor * size < i || (size < this.minConsumerCount && size < i);
        JqLog.m392d("check above load factor: totalCons:%s minCons:%s maxConsCount: %s, loadFactor %s remainingJobs: %s running holders: %s. isAbove:%s", Integer.valueOf(size), Integer.valueOf(this.minConsumerCount), Integer.valueOf(this.maxConsumerCount), Integer.valueOf(this.loadFactor), Integer.valueOf(countRemainingReadyJobs), Integer.valueOf(size2), Boolean.valueOf(z));
        return z;
    }

    private Set<String> markJobsCancelled(TagConstraint tagConstraint, String[] strArr, boolean z) {
        HashSet hashSet = new HashSet();
        for (JobHolder jobHolder : this.runningJobHolders.values()) {
            JqLog.m392d("checking job tag %s. tags of job: %s", jobHolder.getJob(), jobHolder.getJob().getTags());
            if (jobHolder.hasTags() && !jobHolder.isCancelled() && tagConstraint.matches(strArr, jobHolder.getTags())) {
                hashSet.add(jobHolder.getId());
                if (z) {
                    jobHolder.markAsCancelledSingleId();
                } else {
                    jobHolder.markAsCancelled();
                }
            }
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addNoConsumersListener(Runnable runnable) {
        this.internalZeroConsumersListeners.add(runnable);
    }

    public boolean areAllConsumersIdle() {
        return this.waitingConsumers.size() == this.consumers.size();
    }

    public int getWorkerCount() {
        return this.consumers.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean handleConstraintChange() {
        return considerAddingConsumers(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean handleIdle(@NonNull JobConsumerIdleMessage jobConsumerIdleMessage) {
        Consumer consumer = (Consumer) jobConsumerIdleMessage.getWorker();
        if (consumer.hasJob) {
            return true;
        }
        JobHolder jobHolder = null;
        boolean isRunning = this.jobManagerThread.isRunning();
        if (isRunning) {
            jobHolder = this.jobManagerThread.getNextJob(this.runningJobGroups.getSafe());
        }
        if (jobHolder != null) {
            consumer.hasJob = true;
            this.runningJobGroups.add(jobHolder.getGroupId());
            RunJobMessage runJobMessage = (RunJobMessage) this.factory.obtain(RunJobMessage.class);
            runJobMessage.setJobHolder(jobHolder);
            this.runningJobHolders.put(jobHolder.getJob().getId(), jobHolder);
            if (jobHolder.getGroupId() != null) {
                this.runningJobGroups.add(jobHolder.getGroupId());
            }
            consumer.messageQueue.post(runJobMessage);
            return true;
        }
        long lastJobCompleted = jobConsumerIdleMessage.getLastJobCompleted() + this.consumerKeepAliveNs;
        JqLog.m392d("keep alive: %s", Long.valueOf(lastJobCompleted));
        boolean z = this.consumers.size() > this.minConsumerCount;
        boolean z2 = !isRunning || (z && lastJobCompleted < this.timer.nanoTime());
        JqLog.m392d("Consumer idle, will kill? %s . isRunning: %s", Boolean.valueOf(z2), Boolean.valueOf(isRunning));
        if (z2) {
            CommandMessage commandMessage = (CommandMessage) this.factory.obtain(CommandMessage.class);
            commandMessage.set(1);
            consumer.messageQueue.post(commandMessage);
            this.waitingConsumers.remove(consumer);
            this.consumers.remove(consumer);
            JqLog.m392d("killed consumers. remaining consumers %d", Integer.valueOf(this.consumers.size()));
            if (!this.consumers.isEmpty() || this.internalZeroConsumersListeners == null) {
                return false;
            }
            Iterator<Runnable> it = this.internalZeroConsumersListeners.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
            return false;
        }
        if (!this.waitingConsumers.contains(consumer)) {
            this.waitingConsumers.add(consumer);
        }
        if (!z && this.jobManagerThread.canListenToNetwork()) {
            return false;
        }
        CommandMessage commandMessage2 = (CommandMessage) this.factory.obtain(CommandMessage.class);
        commandMessage2.set(2);
        if (!z) {
            lastJobCompleted = this.timer.nanoTime() + this.consumerKeepAliveNs;
        }
        consumer.messageQueue.postAt(commandMessage2, lastJobCompleted);
        JqLog.m392d("poke consumer manager at %s", Long.valueOf(lastJobCompleted));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void handleRunJobResult(RunJobResultMessage runJobResultMessage, JobHolder jobHolder, RetryConstraint retryConstraint) {
        Consumer consumer = (Consumer) runJobResultMessage.getWorker();
        if (!consumer.hasJob) {
            throw new IllegalStateException("this worker should not have a job");
        }
        consumer.hasJob = false;
        this.runningJobHolders.remove(jobHolder.getJob().getId());
        if (jobHolder.getGroupId() != null) {
            this.runningJobGroups.remove(jobHolder.getGroupId());
            if (retryConstraint != null && retryConstraint.willApplyNewDelayToGroup() && retryConstraint.getNewDelayInMs().longValue() > 0) {
                this.runningJobGroups.addGroupUntil(jobHolder.getGroupId(), this.timer.nanoTime() + (retryConstraint.getNewDelayInMs().longValue() * 1000000));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void handleStop() {
        for (Consumer consumer : this.consumers) {
            SafeMessageQueue safeMessageQueue = consumer.messageQueue;
            CommandMessage commandMessage = (CommandMessage) this.factory.obtain(CommandMessage.class);
            commandMessage.set(2);
            safeMessageQueue.post(commandMessage);
        }
        if (this.consumers.isEmpty()) {
            Iterator<Runnable> it = this.internalZeroConsumersListeners.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
        }
    }

    public boolean hasJobsWithSchedulerConstraint(SchedulerConstraint schedulerConstraint) {
        for (JobHolder jobHolder : this.runningJobHolders.values()) {
            if (jobHolder.getJob().isPersistent() && schedulerConstraint.getNetworkStatus() >= jobHolder.requiredNetworkType) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isJobRunning(String str) {
        return this.runningJobHolders.get(str) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<String> markJobsCancelled(TagConstraint tagConstraint, String[] strArr) {
        return markJobsCancelled(tagConstraint, strArr, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<String> markJobsCancelledSingleId(TagConstraint tagConstraint, String[] strArr) {
        return markJobsCancelled(tagConstraint, strArr, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onJobAdded() {
        considerAddingConsumers(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean removeNoConsumersListener(Runnable runnable) {
        return this.internalZeroConsumersListeners.remove(runnable);
    }
}
