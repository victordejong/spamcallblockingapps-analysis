package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.annotations.Experimental;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
@Experimental
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDoFinally.class */
public final class MaybeDoFinally<T> extends AbstractMaybeWithUpstream<T, T> {
    final Action onFinally;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDoFinally$DoFinallyObserver.class */
    static final class DoFinallyObserver<T> extends AtomicInteger implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = 4109457741734051389L;
        final MaybeObserver<? super T> actual;

        /* renamed from: d */
        Disposable f510d;
        final Action onFinally;

        DoFinallyObserver(MaybeObserver<? super T> maybeObserver, Action action) {
            this.actual = maybeObserver;
            this.onFinally = action;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f510d.dispose();
            runFinally();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f510d.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.actual.onComplete();
            runFinally();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.actual.onError(th);
            runFinally();
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f510d, disposable)) {
                this.f510d = disposable;
                this.actual.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.actual.onSuccess(t);
            runFinally();
        }

        void runFinally() {
            if (compareAndSet(0, 1)) {
                try {
                    this.onFinally.run();
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    RxJavaPlugins.onError(th);
                }
            }
        }
    }

    public MaybeDoFinally(MaybeSource<T> maybeSource, Action action) {
        super(maybeSource);
        this.onFinally = action;
    }

    @Override // io.reactivex.Maybe
    protected void subscribeActual(MaybeObserver<? super T> maybeObserver) {
        this.source.subscribe(new DoFinallyObserver(maybeObserver, this.onFinally));
    }
}
