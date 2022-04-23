package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscribers.DeferredScalarSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import p530d.p541c.p542a0.AbstractC9639b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber.class */
public final class ParallelCollect$ParallelCollectSubscriber<T, C> extends DeferredScalarSubscriber<T, C> {
    public static final long serialVersionUID = -4767392946044436228L;
    public C collection;
    public final AbstractC9639b<? super C, ? super T> collector;
    public boolean done;

    public ParallelCollect$ParallelCollectSubscriber(AbstractC10433c<? super C> cVar, C c, AbstractC9639b<? super C, ? super T> bVar) {
        super(cVar);
        this.collection = c;
        this.collector = bVar;
    }

    @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, io.reactivex.internal.subscriptions.DeferredScalarSubscription, p611j.p612a.AbstractC10434d
    public void cancel() {
        super.cancel();
        this.f38567s.cancel();
    }

    @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (!this.done) {
            this.done = true;
            C c = this.collection;
            this.collection = null;
            complete(c);
        }
    }

    @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.done) {
            C9815a.m1923b(th);
            return;
        }
        this.done = true;
        this.collection = null;
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (!this.done) {
            try {
                this.collector.m2102a((C) this.collection, t);
            } catch (Throwable th) {
                C9863a.m1822b(th);
                cancel();
                onError(th);
            }
        }
    }

    @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38567s, dVar)) {
            this.f38567s = dVar;
            this.actual.onSubscribe(this);
            dVar.request(Long.MAX_VALUE);
        }
    }
}
