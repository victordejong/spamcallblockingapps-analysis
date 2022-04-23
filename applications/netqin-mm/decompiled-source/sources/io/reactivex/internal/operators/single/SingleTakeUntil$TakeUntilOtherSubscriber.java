package io.reactivex.internal.operators.single;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilOtherSubscriber.class */
public final class SingleTakeUntil$TakeUntilOtherSubscriber extends AtomicReference<AbstractC10434d> implements AbstractC9829h<Object> {
    public static final long serialVersionUID = 5170026210238877381L;
    public final SingleTakeUntil$TakeUntilMainObserver<?> parent;

    public SingleTakeUntil$TakeUntilOtherSubscriber(SingleTakeUntil$TakeUntilMainObserver<?> singleTakeUntil$TakeUntilMainObserver) {
        this.parent = singleTakeUntil$TakeUntilMainObserver;
    }

    public void dispose() {
        SubscriptionHelper.cancel(this);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        AbstractC10434d dVar = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (dVar != subscriptionHelper) {
            lazySet(subscriptionHelper);
            this.parent.otherError(new CancellationException());
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.parent.otherError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(Object obj) {
        if (SubscriptionHelper.cancel(this)) {
            this.parent.otherError(new CancellationException());
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
    }
}
