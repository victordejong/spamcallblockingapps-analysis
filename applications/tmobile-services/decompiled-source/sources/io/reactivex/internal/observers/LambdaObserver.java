package io.reactivex.internal.observers;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.observers.LambdaConsumerIntrospection;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/observers/LambdaObserver.class */
public final class LambdaObserver<T> extends AtomicReference<Disposable> implements Observer<T>, Disposable, LambdaConsumerIntrospection {
    private static final long serialVersionUID = -7251123623727029452L;

    /* renamed from: f */
    final Consumer<? super T> f15210f;

    /* renamed from: g */
    final Consumer<? super Throwable> f15211g;

    /* renamed from: h */
    final Action f15212h;

    /* renamed from: i */
    final Consumer<? super Disposable> f15213i;

    public LambdaObserver(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, Consumer<? super Disposable> consumer3) {
        this.f15210f = consumer;
        this.f15211g = consumer2;
        this.f15212h = action;
        this.f15213i = consumer3;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (!isDisposed()) {
            lazySet(DisposableHelper.DISPOSED);
            try {
                this.f15212h.run();
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                RxJavaPlugins.m3354t(th);
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        if (!isDisposed()) {
            lazySet(DisposableHelper.DISPOSED);
            try {
                this.f15211g.accept(th);
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                RxJavaPlugins.m3354t(new CompositeException(th, th2));
            }
        } else {
            RxJavaPlugins.m3354t(th);
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        if (!isDisposed()) {
            try {
                this.f15210f.accept(t);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                get().dispose();
                onError(th);
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        if (DisposableHelper.setOnce(this, disposable)) {
            try {
                this.f15213i.accept(this);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                disposable.dispose();
                onError(th);
            }
        }
    }
}
