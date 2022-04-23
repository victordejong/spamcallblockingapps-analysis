package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDoOnDispose.class */
public final class SingleDoOnDispose<T> extends Single<T> {
    final Action onDispose;
    final SingleSource<T> source;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver.class */
    static final class DoOnDisposeObserver<T> extends AtomicReference<Action> implements SingleObserver<T>, Disposable {
        private static final long serialVersionUID = -8583764624474935784L;
        final SingleObserver<? super T> actual;

        /* renamed from: d */
        Disposable f681d;

        DoOnDisposeObserver(SingleObserver<? super T> singleObserver, Action action) {
            this.actual = singleObserver;
            lazySet(action);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Action andSet = getAndSet(null);
            if (andSet != null) {
                try {
                    andSet.run();
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    RxJavaPlugins.onError(th);
                }
                this.f681d.dispose();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f681d.isDisposed();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.actual.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f681d, disposable)) {
                this.f681d = disposable;
                this.actual.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.actual.onSuccess(t);
        }
    }

    public SingleDoOnDispose(SingleSource<T> singleSource, Action action) {
        this.source = singleSource;
        this.onDispose = action;
    }

    @Override // io.reactivex.Single
    protected void subscribeActual(SingleObserver<? super T> singleObserver) {
        this.source.subscribe(new DoOnDisposeObserver(singleObserver, this.onDispose));
    }
}
