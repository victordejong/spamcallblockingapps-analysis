package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p542a0.AbstractC9640c;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractC9652a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWithLatestFrom$WithLatestFromSubscriber.class */
public final class FlowableWithLatestFrom$WithLatestFromSubscriber<T, U, R> extends AtomicReference<U> implements AbstractC9652a<T>, AbstractC10434d {
    public static final long serialVersionUID = -312246233408980075L;
    public final AbstractC10433c<? super R> actual;
    public final AbstractC9640c<? super T, ? super U, ? extends R> combiner;

    /* renamed from: s */
    public final AtomicReference<AbstractC10434d> f38444s = new AtomicReference<>();
    public final AtomicLong requested = new AtomicLong();
    public final AtomicReference<AbstractC10434d> other = new AtomicReference<>();

    public FlowableWithLatestFrom$WithLatestFromSubscriber(AbstractC10433c<? super R> cVar, AbstractC9640c<? super T, ? super U, ? extends R> cVar2) {
        this.actual = cVar;
        this.combiner = cVar2;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        SubscriptionHelper.cancel(this.f38444s);
        SubscriptionHelper.cancel(this.other);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        SubscriptionHelper.cancel(this.other);
        this.actual.onComplete();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        SubscriptionHelper.cancel(this.other);
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (!tryOnNext(t)) {
            this.f38444s.get().request(1L);
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        SubscriptionHelper.deferredSetOnce(this.f38444s, this.requested, dVar);
    }

    public void otherError(Throwable th) {
        SubscriptionHelper.cancel(this.f38444s);
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        SubscriptionHelper.deferredRequest(this.f38444s, this.requested, j);
    }

    public boolean setOther(AbstractC10434d dVar) {
        return SubscriptionHelper.setOnce(this.other, dVar);
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9652a
    public boolean tryOnNext(T t) {
        U u = get();
        if (u == null) {
            return false;
        }
        try {
            Object apply = this.combiner.apply(t, u);
            C9650a.m2095a(apply, "The combiner returned a null value");
            this.actual.onNext(apply);
            return true;
        } catch (Throwable th) {
            C9863a.m1822b(th);
            cancel();
            this.actual.onError(th);
            return false;
        }
    }
}
