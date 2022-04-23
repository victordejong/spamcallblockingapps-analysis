package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeTimeoutPublisher$TimeoutMainMaybeObserver.class */
public final class MaybeTimeoutPublisher$TimeoutMainMaybeObserver<T, U> extends AtomicReference<AbstractC9861b> implements AbstractC9836k<T>, AbstractC9861b {
    public static final long serialVersionUID = -5955289211445418871L;
    public final AbstractC9836k<? super T> actual;
    public final AbstractC9838m<? extends T> fallback;
    public final MaybeTimeoutPublisher$TimeoutOtherMaybeObserver<T, U> other = new MaybeTimeoutPublisher$TimeoutOtherMaybeObserver<>(this);
    public final MaybeTimeoutPublisher$TimeoutFallbackMaybeObserver<T> otherObserver;

    public MaybeTimeoutPublisher$TimeoutMainMaybeObserver(AbstractC9836k<? super T> kVar, AbstractC9838m<? extends T> mVar) {
        this.actual = kVar;
        this.fallback = mVar;
        this.otherObserver = mVar != null ? new MaybeTimeoutPublisher$TimeoutFallbackMaybeObserver<>(kVar) : null;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
        SubscriptionHelper.cancel(this.other);
        MaybeTimeoutPublisher$TimeoutFallbackMaybeObserver<T> maybeTimeoutPublisher$TimeoutFallbackMaybeObserver = this.otherObserver;
        if (maybeTimeoutPublisher$TimeoutFallbackMaybeObserver != null) {
            DisposableHelper.dispose(maybeTimeoutPublisher$TimeoutFallbackMaybeObserver);
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onComplete() {
        SubscriptionHelper.cancel(this.other);
        if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
            this.actual.onComplete();
        }
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onError(Throwable th) {
        SubscriptionHelper.cancel(this.other);
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
        SubscriptionHelper.cancel(this.other);
        if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
            this.actual.onSuccess(t);
        }
    }

    public void otherComplete() {
        if (DisposableHelper.dispose(this)) {
            AbstractC9838m<? extends T> mVar = this.fallback;
            if (mVar == null) {
                this.actual.onError(new TimeoutException());
            } else {
                mVar.mo1876a(this.otherObserver);
            }
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
