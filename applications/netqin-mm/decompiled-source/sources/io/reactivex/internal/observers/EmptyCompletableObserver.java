package io.reactivex.internal.observers;

import io.reactivex.exceptions.OnErrorNotImplementedException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/observers/EmptyCompletableObserver.class */
public final class EmptyCompletableObserver extends AtomicReference<AbstractC9861b> implements AbstractC9647b, AbstractC9861b {
    public static final long serialVersionUID = -7545121636549663526L;

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    public boolean hasCustomOnError() {
        return false;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onComplete() {
        lazySet(DisposableHelper.DISPOSED);
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onError(Throwable th) {
        lazySet(DisposableHelper.DISPOSED);
        C9815a.m1923b(new OnErrorNotImplementedException(th));
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }
}
