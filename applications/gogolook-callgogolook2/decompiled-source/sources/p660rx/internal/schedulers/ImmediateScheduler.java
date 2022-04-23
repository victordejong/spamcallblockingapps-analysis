package p660rx.internal.schedulers;

import java.util.concurrent.TimeUnit;
import p660rx.Scheduler;
import p660rx.Subscription;
import p660rx.functions.Action0;
import p660rx.subscriptions.BooleanSubscription;
import p660rx.subscriptions.Subscriptions;
/* renamed from: rx.internal.schedulers.ImmediateScheduler */
/* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/ImmediateScheduler.class */
public final class ImmediateScheduler extends Scheduler {

    /* renamed from: rx.internal.schedulers.ImmediateScheduler$InnerImmediateScheduler */
    /* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/ImmediateScheduler$InnerImmediateScheduler.class */
    public final class InnerImmediateScheduler extends Scheduler.Worker implements Subscription {
        public final BooleanSubscription innerSubscription = new BooleanSubscription();

        public InnerImmediateScheduler() {
        }

        @Override // p660rx.Subscription
        public boolean isUnsubscribed() {
            return this.innerSubscription.isUnsubscribed();
        }

        @Override // p660rx.Scheduler.Worker
        public Subscription schedule(Action0 action0) {
            action0.call();
            return Subscriptions.unsubscribed();
        }

        @Override // p660rx.Scheduler.Worker
        public Subscription schedule(Action0 action0, long j, TimeUnit timeUnit) {
            return schedule(new SleepingAction(action0, this, ImmediateScheduler.this.now() + timeUnit.toMillis(j)));
        }

        @Override // p660rx.Subscription
        public void unsubscribe() {
            this.innerSubscription.unsubscribe();
        }
    }

    static {
        new ImmediateScheduler();
    }

    @Override // p660rx.Scheduler
    public Scheduler.Worker createWorker() {
        return new InnerImmediateScheduler();
    }
}
