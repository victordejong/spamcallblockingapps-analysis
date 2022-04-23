package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObserverResourceWrapper.class */
public final class ObserverResourceWrapper<T> extends AtomicReference<AbstractC9861b> implements AbstractC9844r<T>, AbstractC9861b {
    public static final long serialVersionUID = -8612022020200669122L;
    public final AbstractC9844r<? super T> actual;
    public final AtomicReference<AbstractC9861b> subscription = new AtomicReference<>();

    public ObserverResourceWrapper(AbstractC9844r<? super T> rVar) {
        this.actual = rVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this.subscription);
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.subscription.get() == DisposableHelper.DISPOSED;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        dispose();
        this.actual.onComplete();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        dispose();
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        this.actual.onNext(t);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.setOnce(this.subscription, bVar)) {
            this.actual.onSubscribe(this);
        }
    }

    public void setResource(AbstractC9861b bVar) {
        DisposableHelper.set(this, bVar);
    }
}
