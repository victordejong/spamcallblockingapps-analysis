package io.reactivex.internal.observers;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/observers/DisposableLambdaObserver.class */
public final class DisposableLambdaObserver<T> implements Observer<T>, Disposable {

    /* renamed from: f */
    final Observer<? super T> f15191f;

    /* renamed from: g */
    final Consumer<? super Disposable> f15192g;

    /* renamed from: h */
    final Action f15193h;

    /* renamed from: i */
    Disposable f15194i;

    public DisposableLambdaObserver(Observer<? super T> observer, Consumer<? super Disposable> consumer, Action action) {
        this.f15191f = observer;
        this.f15192g = consumer;
        this.f15193h = action;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        Disposable disposable = this.f15194i;
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (disposable != disposableHelper) {
            this.f15194i = disposableHelper;
            try {
                this.f15193h.run();
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                RxJavaPlugins.m3354t(th);
            }
            disposable.dispose();
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f15194i.isDisposed();
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        Disposable disposable = this.f15194i;
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (disposable != disposableHelper) {
            this.f15194i = disposableHelper;
            this.f15191f.onComplete();
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        Disposable disposable = this.f15194i;
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (disposable != disposableHelper) {
            this.f15194i = disposableHelper;
            this.f15191f.onError(th);
            return;
        }
        RxJavaPlugins.m3354t(th);
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        this.f15191f.onNext(t);
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        try {
            this.f15192g.accept(disposable);
            if (DisposableHelper.validate(this.f15194i, disposable)) {
                this.f15194i = disposable;
                this.f15191f.onSubscribe(this);
            }
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            disposable.dispose();
            this.f15194i = DisposableHelper.DISPOSED;
            EmptyDisposable.error(th, this.f15191f);
        }
    }
}
