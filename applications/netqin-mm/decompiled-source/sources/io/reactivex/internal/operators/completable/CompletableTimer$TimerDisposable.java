package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableTimer$TimerDisposable.class */
public final class CompletableTimer$TimerDisposable extends AtomicReference<AbstractC9861b> implements AbstractC9861b, Runnable {
    public static final long serialVersionUID = 3167244060586201109L;
    public final AbstractC9647b actual;

    public CompletableTimer$TimerDisposable(AbstractC9647b bVar) {
        this.actual = bVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // java.lang.Runnable
    public void run() {
        this.actual.onComplete();
    }

    public void setFuture(AbstractC9861b bVar) {
        DisposableHelper.replace(this, bVar);
    }
}
