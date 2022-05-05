package p660rx.internal.schedulers;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import p660rx.Scheduler;
import p660rx.Subscription;
import p660rx.functions.Action0;
import p660rx.plugins.RxJavaHooks;
import p660rx.subscriptions.CompositeSubscription;
import p660rx.subscriptions.MultipleAssignmentSubscription;
import p660rx.subscriptions.Subscriptions;
/* renamed from: rx.internal.schedulers.ExecutorScheduler */
/* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/ExecutorScheduler.class */
public final class ExecutorScheduler extends Scheduler {
    public final Executor executor;

    /* renamed from: rx.internal.schedulers.ExecutorScheduler$ExecutorSchedulerWorker */
    /* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker.class */
    public static final class ExecutorSchedulerWorker extends Scheduler.Worker implements Runnable {
        public final Executor executor;
        public final ConcurrentLinkedQueue<ScheduledAction> queue = new ConcurrentLinkedQueue<>();
        public final AtomicInteger wip = new AtomicInteger();
        public final CompositeSubscription tasks = new CompositeSubscription();
        public final ScheduledExecutorService service = GenericScheduledExecutorService.getInstance();

        public ExecutorSchedulerWorker(Executor executor) {
            this.executor = executor;
        }

        @Override // p660rx.Subscription
        public boolean isUnsubscribed() {
            return this.tasks.isUnsubscribed();
        }

        @Override // java.lang.Runnable
        public void run() {
            while (!this.tasks.isUnsubscribed()) {
                ScheduledAction poll = this.queue.poll();
                if (poll != null) {
                    if (!poll.isUnsubscribed()) {
                        if (!this.tasks.isUnsubscribed()) {
                            poll.run();
                        } else {
                            this.queue.clear();
                            return;
                        }
                    }
                    if (this.wip.decrementAndGet() == 0) {
                        return;
                    }
                } else {
                    return;
                }
            }
            this.queue.clear();
        }

        @Override // p660rx.Scheduler.Worker
        public Subscription schedule(Action0 action0) {
            if (isUnsubscribed()) {
                return Subscriptions.unsubscribed();
            }
            ScheduledAction scheduledAction = new ScheduledAction(RxJavaHooks.onScheduledAction(action0), this.tasks);
            this.tasks.add(scheduledAction);
            this.queue.offer(scheduledAction);
            if (this.wip.getAndIncrement() == 0) {
                try {
                    this.executor.execute(this);
                } catch (RejectedExecutionException e) {
                    this.tasks.remove(scheduledAction);
                    this.wip.decrementAndGet();
                    RxJavaHooks.onError(e);
                    throw e;
                }
            }
            return scheduledAction;
        }

        @Override // p660rx.Scheduler.Worker
        public Subscription schedule(Action0 action0, long j, TimeUnit timeUnit) {
            if (j <= 0) {
                return schedule(action0);
            }
            if (isUnsubscribed()) {
                return Subscriptions.unsubscribed();
            }
            final Action0 onScheduledAction = RxJavaHooks.onScheduledAction(action0);
            MultipleAssignmentSubscription multipleAssignmentSubscription = new MultipleAssignmentSubscription();
            final MultipleAssignmentSubscription multipleAssignmentSubscription2 = new MultipleAssignmentSubscription();
            multipleAssignmentSubscription2.set(multipleAssignmentSubscription);
            this.tasks.add(multipleAssignmentSubscription2);
            final Subscription create = Subscriptions.create(new Action0() { // from class: rx.internal.schedulers.ExecutorScheduler.ExecutorSchedulerWorker.1
                @Override // p660rx.functions.Action0
                public void call() {
                    ExecutorSchedulerWorker.this.tasks.remove(multipleAssignmentSubscription2);
                }
            });
            ScheduledAction scheduledAction = new ScheduledAction(new Action0() { // from class: rx.internal.schedulers.ExecutorScheduler.ExecutorSchedulerWorker.2
                @Override // p660rx.functions.Action0
                public void call() {
                    if (!multipleAssignmentSubscription2.isUnsubscribed()) {
                        Subscription schedule = ExecutorSchedulerWorker.this.schedule(onScheduledAction);
                        multipleAssignmentSubscription2.set(schedule);
                        if (schedule.getClass() == ScheduledAction.class) {
                            ((ScheduledAction) schedule).add(create);
                        }
                    }
                }
            });
            multipleAssignmentSubscription.set(scheduledAction);
            try {
                scheduledAction.add(this.service.schedule(scheduledAction, j, timeUnit));
                return create;
            } catch (RejectedExecutionException e) {
                RxJavaHooks.onError(e);
                throw e;
            }
        }

        @Override // p660rx.Subscription
        public void unsubscribe() {
            this.tasks.unsubscribe();
            this.queue.clear();
        }
    }

    public ExecutorScheduler(Executor executor) {
        this.executor = executor;
    }

    @Override // p660rx.Scheduler
    public Scheduler.Worker createWorker() {
        return new ExecutorSchedulerWorker(this.executor);
    }
}
