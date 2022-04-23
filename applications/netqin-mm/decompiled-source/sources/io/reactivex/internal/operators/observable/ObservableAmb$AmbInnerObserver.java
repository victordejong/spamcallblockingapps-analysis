package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p548e.p552d.C9735b;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver.class */
public final class ObservableAmb$AmbInnerObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9844r<T> {
    public static final long serialVersionUID = -1185974347409665484L;
    public final AbstractC9844r<? super T> actual;
    public final int index;
    public final C9735b<T> parent;
    public boolean won;

    public ObservableAmb$AmbInnerObserver(C9735b<T> bVar, int i, AbstractC9844r<? super T> rVar) {
        this.parent = bVar;
        this.index = i;
        this.actual = rVar;
    }

    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        if (this.won) {
            this.actual.onComplete();
        } else {
            this.parent.m2076a(this.index);
            throw null;
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        if (this.won) {
            this.actual.onError(th);
        } else {
            this.parent.m2076a(this.index);
            throw null;
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        if (this.won) {
            this.actual.onNext(t);
        } else {
            this.parent.m2076a(this.index);
            throw null;
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }
}
