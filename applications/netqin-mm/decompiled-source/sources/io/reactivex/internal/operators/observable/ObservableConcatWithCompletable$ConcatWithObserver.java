package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9809c;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableConcatWithCompletable$ConcatWithObserver.class */
public final class ObservableConcatWithCompletable$ConcatWithObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9844r<T>, AbstractC9647b, AbstractC9861b {
    public static final long serialVersionUID = -1953724749712440952L;
    public final AbstractC9844r<? super T> actual;
    public boolean inCompletable;
    public AbstractC9809c other;

    public ObservableConcatWithCompletable$ConcatWithObserver(AbstractC9844r<? super T> rVar, AbstractC9809c cVar) {
        this.actual = rVar;
        this.other = cVar;
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
        if (this.inCompletable) {
            this.actual.onComplete();
            return;
        }
        this.inCompletable = true;
        DisposableHelper.replace(this, null);
        AbstractC9809c cVar = this.other;
        this.other = null;
        cVar.mo1980a(this);
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
        if (DisposableHelper.setOnce(this, bVar) && !this.inCompletable) {
            this.actual.onSubscribe(this);
        }
    }
}
