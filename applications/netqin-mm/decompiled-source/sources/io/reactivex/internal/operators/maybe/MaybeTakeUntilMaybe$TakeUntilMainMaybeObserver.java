package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$TakeUntilMainMaybeObserver.class */
public final class MaybeTakeUntilMaybe$TakeUntilMainMaybeObserver<T, U> extends AtomicReference<AbstractC9861b> implements AbstractC9836k<T>, AbstractC9861b {
    public static final long serialVersionUID = -2187421758664251153L;
    public final AbstractC9836k<? super T> actual;
    public final TakeUntilOtherMaybeObserver<U> other = new TakeUntilOtherMaybeObserver<>(this);

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$TakeUntilMainMaybeObserver$TakeUntilOtherMaybeObserver.class */
    public static final class TakeUntilOtherMaybeObserver<U> extends AtomicReference<AbstractC9861b> implements AbstractC9836k<U> {
        public static final long serialVersionUID = -1266041316834525931L;
        public final MaybeTakeUntilMaybe$TakeUntilMainMaybeObserver<?, U> parent;

        public TakeUntilOtherMaybeObserver(MaybeTakeUntilMaybe$TakeUntilMainMaybeObserver<?, U> maybeTakeUntilMaybe$TakeUntilMainMaybeObserver) {
            this.parent = maybeTakeUntilMaybe$TakeUntilMainMaybeObserver;
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onComplete() {
            this.parent.otherComplete();
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onError(Throwable th) {
            this.parent.otherError(th);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSuccess(Object obj) {
            this.parent.otherComplete();
        }
    }

    public MaybeTakeUntilMaybe$TakeUntilMainMaybeObserver(AbstractC9836k<? super T> kVar) {
        this.actual = kVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
        DisposableHelper.dispose(this.other);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onComplete() {
        DisposableHelper.dispose(this.other);
        if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
            this.actual.onComplete();
        }
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onError(Throwable th) {
        DisposableHelper.dispose(this.other);
        if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
            this.actual.onError(th);
        } else {
            C9815a.m1923b(th);
        }
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSuccess(T t) {
        DisposableHelper.dispose(this.other);
        if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
            this.actual.onSuccess(t);
        }
    }

    public void otherComplete() {
        if (DisposableHelper.dispose(this)) {
            this.actual.onComplete();
        }
    }

    public void otherError(Throwable th) {
        if (DisposableHelper.dispose(this)) {
            this.actual.onError(th);
        } else {
            C9815a.m1923b(th);
        }
    }
}
