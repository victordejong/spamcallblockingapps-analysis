package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver.class */
public final class SingleObserveOn$ObserveOnSingleObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9851u<T>, AbstractC9861b, Runnable {
    public static final long serialVersionUID = 3528003840217436037L;
    public final AbstractC9851u<? super T> actual;
    public Throwable error;
    public final AbstractC9845s scheduler;
    public T value;

    public SingleObserveOn$ObserveOnSingleObserver(AbstractC9851u<? super T> uVar, AbstractC9845s sVar) {
        this.actual = uVar;
        this.scheduler = sVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onError(Throwable th) {
        this.error = th;
        DisposableHelper.replace(this, this.scheduler.mo1854a(this));
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.setOnce(this, bVar)) {
            this.actual.onSubscribe(this);
        }
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSuccess(T t) {
        this.value = t;
        DisposableHelper.replace(this, this.scheduler.mo1854a(this));
    }

    @Override // java.lang.Runnable
    public void run() {
        Throwable th = this.error;
        if (th != null) {
            this.actual.onError(th);
        } else {
            this.actual.onSuccess((T) this.value);
        }
    }
}
