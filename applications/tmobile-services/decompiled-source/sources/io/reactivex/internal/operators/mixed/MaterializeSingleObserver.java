package io.reactivex.internal.operators.mixed;

import io.reactivex.CompletableObserver;
import io.reactivex.MaybeObserver;
import io.reactivex.Notification;
import io.reactivex.SingleObserver;
import io.reactivex.annotations.Experimental;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
@Experimental
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/MaterializeSingleObserver.class */
public final class MaterializeSingleObserver<T> implements SingleObserver<T>, MaybeObserver<T>, CompletableObserver, Disposable {

    /* renamed from: f */
    final SingleObserver<? super Notification<T>> f17393f;

    /* renamed from: g */
    Disposable f17394g;

    public MaterializeSingleObserver(SingleObserver<? super Notification<T>> singleObserver) {
        this.f17393f = singleObserver;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        this.f17394g.dispose();
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f17394g.isDisposed();
    }

    @Override // io.reactivex.MaybeObserver
    public void onComplete() {
        this.f17393f.onSuccess(Notification.m4484a());
    }

    @Override // io.reactivex.SingleObserver
    public void onError(Throwable th) {
        this.f17393f.onSuccess(Notification.m4483b(th));
    }

    @Override // io.reactivex.SingleObserver
    public void onSubscribe(Disposable disposable) {
        if (DisposableHelper.validate(this.f17394g, disposable)) {
            this.f17394g = disposable;
            this.f17393f.onSubscribe(this);
        }
    }

    @Override // io.reactivex.SingleObserver
    public void onSuccess(T t) {
        this.f17393f.onSuccess(Notification.m4482c(t));
    }
}
