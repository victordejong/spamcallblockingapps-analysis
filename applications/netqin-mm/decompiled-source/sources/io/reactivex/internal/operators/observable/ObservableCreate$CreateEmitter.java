package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.CancellableDisposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9842p;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9643f;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter.class */
public final class ObservableCreate$CreateEmitter<T> extends AtomicReference<AbstractC9861b> implements AbstractC9842p<T>, AbstractC9861b {
    public static final long serialVersionUID = -3434801548987643227L;
    public final AbstractC9844r<? super T> observer;

    public ObservableCreate$CreateEmitter(AbstractC9844r<? super T> rVar) {
        this.observer = rVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.AbstractC9842p, p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // p530d.p541c.AbstractC9811d
    public void onComplete() {
        if (!isDisposed()) {
            try {
                this.observer.onComplete();
            } finally {
                dispose();
            }
        }
    }

    @Override // p530d.p541c.AbstractC9811d
    public void onError(Throwable th) {
        if (!tryOnError(th)) {
            C9815a.m1923b(th);
        }
    }

    @Override // p530d.p541c.AbstractC9811d
    public void onNext(T t) {
        if (t == null) {
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
        } else if (!isDisposed()) {
            this.observer.onNext(t);
        }
    }

    public AbstractC9842p<T> serialize() {
        return new ObservableCreate$SerializedEmitter(this);
    }

    @Override // p530d.p541c.AbstractC9842p
    public void setCancellable(AbstractC9643f fVar) {
        setDisposable(new CancellableDisposable(fVar));
    }

    @Override // p530d.p541c.AbstractC9842p
    public void setDisposable(AbstractC9861b bVar) {
        DisposableHelper.set(this, bVar);
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public String toString() {
        return String.format("%s{%s}", ObservableCreate$CreateEmitter.class.getSimpleName(), super.toString());
    }

    /* JADX WARN: Finally extract failed */
    public boolean tryOnError(Throwable th) {
        Throwable th2 = th;
        if (th == null) {
            th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        }
        if (isDisposed()) {
            return false;
        }
        try {
            this.observer.onError(th2);
            dispose();
            return true;
        } catch (Throwable th3) {
            dispose();
            throw th3;
        }
    }
}
