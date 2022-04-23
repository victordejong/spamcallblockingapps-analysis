package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.CancellableDisposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.p542a0.AbstractC9643f;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableCreate$Emitter.class */
public final class CompletableCreate$Emitter extends AtomicReference<AbstractC9861b> implements Object {
    public static final long serialVersionUID = -2467358622224974244L;
    public final AbstractC9647b actual;

    public CompletableCreate$Emitter(AbstractC9647b bVar) {
        this.actual = bVar;
    }

    public void dispose() {
        DisposableHelper.dispose(this);
    }

    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    public void onComplete() {
        AbstractC9861b andSet;
        AbstractC9861b bVar = get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (bVar != disposableHelper && (andSet = getAndSet(disposableHelper)) != DisposableHelper.DISPOSED) {
            try {
                this.actual.onComplete();
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

    public void onError(Throwable th) {
        if (!tryOnError(th)) {
            C9815a.m1923b(th);
        }
    }

    public void setCancellable(AbstractC9643f fVar) {
        setDisposable(new CancellableDisposable(fVar));
    }

    public void setDisposable(AbstractC9861b bVar) {
        DisposableHelper.set(this, bVar);
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public String toString() {
        return String.format("%s{%s}", CompletableCreate$Emitter.class.getSimpleName(), super.toString());
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
