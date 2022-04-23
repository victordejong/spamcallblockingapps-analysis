package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleTimer$TimerDisposable.class */
public final class SingleTimer$TimerDisposable extends AtomicReference<AbstractC9861b> implements AbstractC9861b, Runnable {
    public static final long serialVersionUID = 8465401857522493082L;
    public final AbstractC9851u<? super Long> actual;

    public SingleTimer$TimerDisposable(AbstractC9851u<? super Long> uVar) {
        this.actual = uVar;
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
