package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9829h;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber.class */
public final class FlowableRepeat$RepeatSubscriber<T> extends AtomicInteger implements AbstractC9829h<T> {
    public static final long serialVersionUID = -7098360935104053232L;
    public final AbstractC10433c<? super T> actual;
    public long produced;
    public long remaining;

    /* renamed from: sa */
    public final SubscriptionArbiter f38412sa;
    public final AbstractC10432b<? extends T> source;

    public FlowableRepeat$RepeatSubscriber(AbstractC10433c<? super T> cVar, long j, SubscriptionArbiter subscriptionArbiter, AbstractC10432b<? extends T> bVar) {
        this.actual = cVar;
        this.f38412sa = subscriptionArbiter;
        this.source = bVar;
        this.remaining = j;
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        long j = this.remaining;
        if (j != Long.MAX_VALUE) {
            this.remaining = j - 1;
        }
        if (j != 0) {
            subscribeNext();
        } else {
            this.actual.onComplete();
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        this.produced++;
        this.actual.onNext(t);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        this.f38412sa.setSubscription(dVar);
    }

    public void subscribeNext() {
        if (getAndIncrement() == 0) {
            int i = 1;
            while (!this.f38412sa.isCancelled()) {
                long j = this.produced;
                if (j != 0) {
                    this.produced = 0L;
                    this.f38412sa.produced(j);
                }
                this.source.subscribe(this);
                int addAndGet = addAndGet(-i);
                i = addAndGet;
                if (addAndGet == 0) {
                    return;
                }
            }
        }
    }
}
