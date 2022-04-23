package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p560e0.C9815a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTake$TakeSubscriber.class */
public final class FlowableTake$TakeSubscriber<T> extends AtomicBoolean implements AbstractC9829h<T>, AbstractC10434d {
    public static final long serialVersionUID = -5636543848937116287L;
    public final AbstractC10433c<? super T> actual;
    public boolean done;
    public final long limit;
    public long remaining;
    public AbstractC10434d subscription;

    public FlowableTake$TakeSubscriber(AbstractC10433c<? super T> cVar, long j) {
        this.actual = cVar;
        this.limit = j;
        this.remaining = j;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        this.subscription.cancel();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (!this.done) {
            this.done = true;
            this.actual.onComplete();
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (!this.done) {
            this.done = true;
            this.subscription.cancel();
            this.actual.onError(th);
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (!this.done) {
            long j = this.remaining;
            long j2 = j - 1;
            this.remaining = j2;
            if (j > 0) {
                boolean z = j2 == 0;
                this.actual.onNext(t);
                if (z) {
                    this.subscription.cancel();
                    onComplete();
                }
            }
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.subscription, dVar)) {
            this.subscription = dVar;
            if (this.limit == 0) {
                dVar.cancel();
                this.done = true;
                EmptySubscription.complete(this.actual);
                return;
            }
            this.actual.onSubscribe(this);
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            if (get() || !compareAndSet(false, true) || j < this.limit) {
                this.subscription.request(j);
            } else {
                this.subscription.request(Long.MAX_VALUE);
            }
        }
    }
}
