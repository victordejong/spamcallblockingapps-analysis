package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscribers.SinglePostCompleteSubscriber;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnErrorReturn$OnErrorReturnSubscriber.class */
public final class FlowableOnErrorReturn$OnErrorReturnSubscriber<T> extends SinglePostCompleteSubscriber<T, T> {
    public static final long serialVersionUID = -3740826063558713822L;
    public final AbstractC9645h<? super Throwable, ? extends T> valueSupplier;

    public FlowableOnErrorReturn$OnErrorReturnSubscriber(AbstractC10433c<? super T> cVar, AbstractC9645h<? super Throwable, ? extends T> hVar) {
        super(cVar);
        this.valueSupplier = hVar;
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.actual.onComplete();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        try {
            Object apply = this.valueSupplier.apply(th);
            C9650a.m2095a(apply, "The valueSupplier returned a null value");
            complete(apply);
        } catch (Throwable th2) {
            C9863a.m1822b(th2);
            this.actual.onError(new CompositeException(th, th2));
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        this.produced++;
        this.actual.onNext(t);
    }
}
