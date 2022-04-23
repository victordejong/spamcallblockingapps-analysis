package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeTimer$TimerDisposable.class */
public final class MaybeTimer$TimerDisposable extends AtomicReference<AbstractC9861b> implements AbstractC9861b, Runnable {
    public static final long serialVersionUID = 2875964065294031672L;
    public final AbstractC9836k<? super Long> actual;

    public MaybeTimer$TimerDisposable(AbstractC9836k<? super Long> kVar) {
        this.actual = kVar;
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
        this.actual.onSuccess(0L);
    }

    public void setFuture(AbstractC9861b bVar) {
        DisposableHelper.replace(this, bVar);
    }
}
