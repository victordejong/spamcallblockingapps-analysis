package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTimer$TimerObserver.class */
public final class ObservableTimer$TimerObserver extends AtomicReference<AbstractC9861b> implements AbstractC9861b, Runnable {
    public static final long serialVersionUID = -2809475196591179431L;
    public final AbstractC9844r<? super Long> actual;

    public ObservableTimer$TimerObserver(AbstractC9844r<? super Long> rVar) {
        this.actual = rVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!isDisposed()) {
            this.actual.onNext(0L);
            lazySet(EmptyDisposable.INSTANCE);
            this.actual.onComplete();
        }
    }

    public void setResource(AbstractC9861b bVar) {
        DisposableHelper.trySet(this, bVar);
    }
}
