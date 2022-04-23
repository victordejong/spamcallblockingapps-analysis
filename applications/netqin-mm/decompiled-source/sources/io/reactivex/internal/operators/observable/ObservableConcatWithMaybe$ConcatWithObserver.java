package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableConcatWithMaybe$ConcatWithObserver.class */
public final class ObservableConcatWithMaybe$ConcatWithObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9844r<T>, AbstractC9836k<T>, AbstractC9861b {
    public static final long serialVersionUID = -1953724749712440952L;
    public final AbstractC9844r<? super T> actual;
    public boolean inMaybe;
    public AbstractC9838m<? extends T> other;

    public ObservableConcatWithMaybe$ConcatWithObserver(AbstractC9844r<? super T> rVar, AbstractC9838m<? extends T> mVar) {
        this.actual = rVar;
        this.other = mVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        if (this.inMaybe) {
            this.actual.onComplete();
            return;
        }
        this.inMaybe = true;
        DisposableHelper.replace(this, null);
        AbstractC9838m<? extends T> mVar = this.other;
        this.other = null;
        mVar.mo1876a(this);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        this.actual.onNext(t);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.setOnce(this, bVar) && !this.inMaybe) {
            this.actual.onSubscribe(this);
        }
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSuccess(T t) {
        this.actual.onNext(t);
        this.actual.onComplete();
    }
}
