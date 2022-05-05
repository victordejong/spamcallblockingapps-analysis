package p660rx.internal.schedulers;

import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p660rx.Subscription;
import p660rx.exceptions.OnErrorNotImplementedException;
import p660rx.functions.Action0;
import p660rx.internal.util.SubscriptionList;
import p660rx.plugins.RxJavaHooks;
import p660rx.subscriptions.CompositeSubscription;
/* renamed from: rx.internal.schedulers.ScheduledAction */
/* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/ScheduledAction.class */
public final class ScheduledAction extends AtomicReference<Thread> implements Runnable, Subscription {
    public final Action0 action;
    public final SubscriptionList cancel;

    /* renamed from: rx.internal.schedulers.ScheduledAction$FutureCompleter */
    /* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/ScheduledAction$FutureCompleter.class */
    public final class FutureCompleter implements Subscription {

        /* renamed from: f */
        public final Future<?> f33472f;

        public FutureCompleter(Future<?> future) {
            this.f33472f = future;
        }

        @Override // p660rx.Subscription
        public boolean isUnsubscribed() {
            return this.f33472f.isCancelled();
        }

        @Override // p660rx.Subscription
        public void unsubscribe() {
            if (ScheduledAction.this.get() != Thread.currentThread()) {
                this.f33472f.cancel(true);
            } else {
                this.f33472f.cancel(false);
            }
        }
    }

    /* renamed from: rx.internal.schedulers.ScheduledAction$Remover */
    /* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/ScheduledAction$Remover.class */
    public static final class Remover extends AtomicBoolean implements Subscription {
        public final CompositeSubscription parent;

        /* renamed from: s */
        public final ScheduledAction f33473s;

        public Remover(ScheduledAction scheduledAction, CompositeSubscription compositeSubscription) {
            this.f33473s = scheduledAction;
            this.parent = compositeSubscription;
        }

        @Override // p660rx.Subscription
        public boolean isUnsubscribed() {
            return this.f33473s.isUnsubscribed();
        }

        @Override // p660rx.Subscription
        public void unsubscribe() {
            if (compareAndSet(false, true)) {
                this.parent.remove(this.f33473s);
            }
        }
    }

    /* renamed from: rx.internal.schedulers.ScheduledAction$Remover2 */
    /* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/ScheduledAction$Remover2.class */
    public static final class Remover2 extends AtomicBoolean implements Subscription {
        public final SubscriptionList parent;

        /* renamed from: s */
        public final ScheduledAction f33474s;

        public Remover2(ScheduledAction scheduledAction, SubscriptionList subscriptionList) {
            this.f33474s = scheduledAction;
            this.parent = subscriptionList;
        }

        @Override // p660rx.Subscription
        public boolean isUnsubscribed() {
            return this.f33474s.isUnsubscribed();
        }

        @Override // p660rx.Subscription
        public void unsubscribe() {
            if (compareAndSet(false, true)) {
                this.parent.remove(this.f33474s);
            }
        }
    }

    public ScheduledAction(Action0 action0) {
        this.action = action0;
        this.cancel = new SubscriptionList();
    }

    public ScheduledAction(Action0 action0, SubscriptionList subscriptionList) {
        this.action = action0;
        this.cancel = new SubscriptionList(new Remover2(this, subscriptionList));
    }

    public ScheduledAction(Action0 action0, CompositeSubscription compositeSubscription) {
        this.action = action0;
        this.cancel = new SubscriptionList(new Remover(this, compositeSubscription));
    }

    public void add(Future<?> future) {
        this.cancel.add(new FutureCompleter(future));
    }

    public void add(Subscription subscription) {
        this.cancel.add(subscription);
    }

    public void addParent(CompositeSubscription compositeSubscription) {
        this.cancel.add(new Remover(this, compositeSubscription));
    }

    @Override // p660rx.Subscription
    public boolean isUnsubscribed() {
        return this.cancel.isUnsubscribed();
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                lazySet(Thread.currentThread());
                this.action.call();
            } catch (OnErrorNotImplementedException e) {
                signalError(new IllegalStateException("Exception thrown on Scheduler.Worker thread. Add `onError` handling.", e));
            }
            unsubscribe();
        }
    }

    public void signalError(Throwable th) {
        RxJavaHooks.onError(th);
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
    }

    @Override // p660rx.Subscription
    public void unsubscribe() {
        if (!this.cancel.isUnsubscribed()) {
            this.cancel.unsubscribe();
        }
    }
}
