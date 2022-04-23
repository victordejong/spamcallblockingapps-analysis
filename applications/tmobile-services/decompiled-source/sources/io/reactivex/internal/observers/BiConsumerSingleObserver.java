package io.reactivex.internal.observers;

import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiConsumer;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/observers/BiConsumerSingleObserver.class */
public final class BiConsumerSingleObserver<T> extends AtomicReference<Disposable> implements SingleObserver<T>, Disposable {
    private static final long serialVersionUID = 4943102778943297569L;

    /* renamed from: f */
    final BiConsumer<? super T, ? super Throwable> f15173f;

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.SingleObserver
    public void onError(Throwable th) {
        try {
            lazySet(DisposableHelper.DISPOSED);
            this.f15173f.mo4369a(null, th);
        } catch (Throwable th2) {
            Exceptions.m4428b(th2);
            RxJavaPlugins.m3354t(new CompositeException(th, th2));
        }
    }

    @Override // io.reactivex.SingleObserver
    public void onSubscribe(Disposable disposable) {
        DisposableHelper.setOnce(this, disposable);
    }

    @Override // io.reactivex.SingleObserver
    public void onSuccess(T t) {
        try {
            lazySet(DisposableHelper.DISPOSED);
            this.f15173f.mo4369a(t, null);
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            RxJavaPlugins.m3354t(th);
        }
    }
}
