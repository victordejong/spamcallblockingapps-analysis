package p660rx.subscriptions;

import java.util.concurrent.atomic.AtomicReference;
import p660rx.Subscription;
import p660rx.functions.Action0;
/* renamed from: rx.subscriptions.BooleanSubscription */
/* loaded from: classes3-dex2jar.jar:rx/subscriptions/BooleanSubscription.class */
public final class BooleanSubscription implements Subscription {
    public static final Action0 EMPTY_ACTION = new Action0() { // from class: rx.subscriptions.BooleanSubscription.1
        @Override // p660rx.functions.Action0
        public void call() {
        }
    };
    public final AtomicReference<Action0> actionRef;

    public BooleanSubscription() {
        this.actionRef = new AtomicReference<>();
    }

    public BooleanSubscription(Action0 action0) {
        this.actionRef = new AtomicReference<>(action0);
    }

    public static BooleanSubscription create() {
        return new BooleanSubscription();
    }

    public static BooleanSubscription create(Action0 action0) {
        return new BooleanSubscription(action0);
    }

    @Override // p660rx.Subscription
    public boolean isUnsubscribed() {
        return this.actionRef.get() == EMPTY_ACTION;
    }

    @Override // p660rx.Subscription
    public void unsubscribe() {
        Action0 andSet;
        Action0 action0 = this.actionRef.get();
        Action0 action02 = EMPTY_ACTION;
        if (action0 != action02 && (andSet = this.actionRef.getAndSet(action02)) != null && andSet != EMPTY_ACTION) {
            andSet.call();
        }
    }
}
