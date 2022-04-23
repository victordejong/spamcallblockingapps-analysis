package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.p542a0.AbstractC9640c;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver.class */
public final class MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver<T, U, R> extends AtomicReference<AbstractC9861b> implements AbstractC9836k<U> {
    public static final long serialVersionUID = -2897979525538174559L;
    public final AbstractC9836k<? super R> actual;
    public final AbstractC9640c<? super T, ? super U, ? extends R> resultSelector;
    public T value;

    public MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver(AbstractC9836k<? super R> kVar, AbstractC9640c<? super T, ? super U, ? extends R> cVar) {
        this.actual = kVar;
        this.resultSelector = cVar;
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onComplete() {
        this.actual.onComplete();
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSuccess(U u) {
        T t = this.value;
        this.value = null;
        try {
            Object apply = this.resultSelector.apply(t, u);
            C9650a.m2095a(apply, "The resultSelector returned a null value");
            this.actual.onSuccess(apply);
        } catch (Throwable th) {
            C9863a.m1822b(th);
            this.actual.onError(th);
        }
    }
}
