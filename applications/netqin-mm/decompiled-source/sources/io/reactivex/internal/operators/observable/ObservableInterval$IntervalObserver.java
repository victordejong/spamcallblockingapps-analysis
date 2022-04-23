package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableInterval$IntervalObserver.class */
public final class ObservableInterval$IntervalObserver extends AtomicReference<AbstractC9861b> implements AbstractC9861b, Runnable {
    public static final long serialVersionUID = 346773832286157679L;
    public final AbstractC9844r<? super Long> actual;
    public long count;

    public ObservableInterval$IntervalObserver(AbstractC9844r<? super Long> rVar) {
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
        if (get() != DisposableHelper.DISPOSED) {
            AbstractC9844r<? super Long> rVar = this.actual;
            long j = this.count;
            this.count = 1 + j;
            rVar.onNext(Long.valueOf(j));
        }
    }

    public void setResource(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }
}
