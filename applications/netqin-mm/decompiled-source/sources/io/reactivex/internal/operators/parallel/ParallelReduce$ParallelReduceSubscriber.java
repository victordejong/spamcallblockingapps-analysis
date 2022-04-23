package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscribers.DeferredScalarSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import p530d.p541c.p542a0.AbstractC9640c;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber.class */
public final class ParallelReduce$ParallelReduceSubscriber<T, R> extends DeferredScalarSubscriber<T, R> {
    public static final long serialVersionUID = 8200530050639449080L;
    public R accumulator;
    public boolean done;
    public final AbstractC9640c<R, ? super T, R> reducer;

    public ParallelReduce$ParallelReduceSubscriber(AbstractC10433c<? super R> cVar, R r, AbstractC9640c<R, ? super T, R> cVar2) {
        super(cVar);
        this.accumulator = r;
        this.reducer = cVar2;
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
            R r = this.accumulator;
            this.accumulator = null;
            complete(r);
        }
    }

    @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.done) {
            C9815a.m1923b(th);
            return;
        }
        this.done = true;
        this.accumulator = null;
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (!this.done) {
            try {
                R apply = this.reducer.apply(this.accumulator, t);
                C9650a.m2095a(apply, "The reducer returned a null value");
                this.accumulator = apply;
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
