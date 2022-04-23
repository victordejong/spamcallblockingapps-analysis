package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.CancellableDisposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p542a0.AbstractC9643f;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleCreate$Emitter.class */
public final class SingleCreate$Emitter<T> extends AtomicReference<AbstractC9861b> implements Object<T> {
    public static final long serialVersionUID = -2467358622224974244L;
    public final AbstractC9851u<? super T> actual;

    public SingleCreate$Emitter(AbstractC9851u<? super T> uVar) {
        this.actual = uVar;
    }

    public void dispose() {
        DisposableHelper.dispose(this);
    }

    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    public void onError(Throwable th) {
        if (!tryOnError(th)) {
            C9815a.m1923b(th);
        }
    }

    public void onSuccess(T t) {
        AbstractC9861b andSet;
        AbstractC9861b bVar = get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (bVar != disposableHelper && (andSet = getAndSet(disposableHelper)) != DisposableHelper.DISPOSED) {
            try {
                if (t == null) {
                    this.actual.onError(new NullPointerException("onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else {
                    this.actual.onSuccess(t);
                }
                if (andSet != null) {
                    andSet.dispose();
                }
            } catch (Throwable th) {
                if (andSet != null) {
                    andSet.dispose();
                }
                throw th;
            }
        }
    }

    public void setCancellable(AbstractC9643f fVar) {
        setDisposable(new CancellableDisposable(fVar));
    }

    public void setDisposable(AbstractC9861b bVar) {
        DisposableHelper.set(this, bVar);
    }

    @Override // java.util.concurrent.atomic.AtomicReference, java.lang.Object
    public String toString() {
        return String.format("%s{%s}", SingleCreate$Emitter.class.getSimpleName(), super.toString());
    }

    public boolean tryOnError(Throwable th) {
        AbstractC9861b andSet;
        Throwable th2 = th;
        if (th == null) {
            th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        }
        AbstractC9861b bVar = get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (bVar == disposableHelper || (andSet = getAndSet(disposableHelper)) == DisposableHelper.DISPOSED) {
            return false;
        }
        try {
            this.actual.onError(th2);
            if (andSet == null) {
                return true;
            }
            andSet.dispose();
            return true;
        } catch (Throwable th3) {
            if (andSet != null) {
                andSet.dispose();
            }
            throw th3;
        }
    }
}
