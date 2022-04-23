package p660rx.internal.schedulers;

import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import p660rx.Scheduler;
import p660rx.Subscription;
import p660rx.functions.Action0;
import p660rx.subscriptions.BooleanSubscription;
import p660rx.subscriptions.Subscriptions;
/* renamed from: rx.internal.schedulers.TrampolineScheduler */
/* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/TrampolineScheduler.class */
public final class TrampolineScheduler extends Scheduler {

    /* renamed from: rx.internal.schedulers.TrampolineScheduler$InnerCurrentThreadScheduler */
    /* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler.class */
    public static final class InnerCurrentThreadScheduler extends Scheduler.Worker implements Subscription {
        public final AtomicInteger counter = new AtomicInteger();
        public final PriorityBlockingQueue<TimedAction> queue = new PriorityBlockingQueue<>();
        public final BooleanSubscription innerSubscription = new BooleanSubscription();
        public final AtomicInteger wip = new AtomicInteger();

        public final Subscription enqueue(Action0 action0, long j) {
            if (this.innerSubscription.isUnsubscribed()) {
                return Subscriptions.unsubscribed();
            }
            final TimedAction timedAction = new TimedAction(action0, Long.valueOf(j), this.counter.incrementAndGet());
            this.queue.add(timedAction);
            if (this.wip.getAndIncrement() != 0) {
                return Subscriptions.create(new Action0() { // from class: rx.internal.schedulers.TrampolineScheduler.InnerCurrentThreadScheduler.1
                    @Override // p660rx.functions.Action0
                    public void call() {
                        InnerCurrentThreadScheduler.this.queue.remove(timedAction);
                    }
                });
            }
            do {
                TimedAction poll = this.queue.poll();
                if (poll != null) {
                    poll.action.call();
                }
            } while (this.wip.decrementAndGet() > 0);
            return Subscriptions.unsubscribed();
        }

        @Override // p660rx.Subscription
        public boolean isUnsubscribed() {
            return this.innerSubscription.isUnsubscribed();
        }

        @Override // p660rx.Scheduler.Worker
        public Subscription schedule(Action0 action0) {
            return enqueue(action0, now());
        }

        @Override // p660rx.Scheduler.Worker
        public Subscription schedule(Action0 action0, long j, TimeUnit timeUnit) {
            long now = now() + timeUnit.toMillis(j);
            return enqueue(new SleepingAction(action0, this, now), now);
        }

        @Override // p660rx.Subscription
        public void unsubscribe() {
            this.innerSubscription.unsubscribe();
        }
    }

    /* renamed from: rx.internal.schedulers.TrampolineScheduler$TimedAction */
    /* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/TrampolineScheduler$TimedAction.class */
    public static final class TimedAction implements Comparable<TimedAction> {
        public final Action0 action;
        public final int count;
        public final Long execTime;

        public TimedAction(Action0 action0, Long l, int i) {
            this.action = action0;
            this.execTime = l;
            this.count = i;
        }

        public int compareTo(TimedAction timedAction) {
            int compareTo = this.execTime.compareTo(timedAction.execTime);
            return compareTo == 0 ? TrampolineScheduler.compare(this.count, timedAction.count) : compareTo;
        }
    }

    static {
        new TrampolineScheduler();
    }

    public static int compare(int i, int i2) {
        return i < i2 ? -1 : i == i2 ? 0 : 1;
    }

    @Override // p660rx.Scheduler
    public Scheduler.Worker createWorker() {
        return new InnerCurrentThreadScheduler();
    }
}
