package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiConsumer;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDoOnEvent.class */
public final class MaybeDoOnEvent<T> extends AbstractMaybeWithUpstream<T, T> {
    final BiConsumer<? super T, ? super Throwable> onEvent;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDoOnEvent$DoOnEventMaybeObserver.class */
    static final class DoOnEventMaybeObserver<T> implements MaybeObserver<T>, Disposable {
        final MaybeObserver<? super T> actual;

        /* renamed from: d */
        Disposable f511d;
        final BiConsumer<? super T, ? super Throwable> onEvent;

        DoOnEventMaybeObserver(MaybeObserver<? super T> maybeObserver, BiConsumer<? super T, ? super Throwable> biConsumer) {
            this.actual = maybeObserver;
            this.onEvent = biConsumer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f511d.dispose();
            this.f511d = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f511d.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f511d = DisposableHelper.DISPOSED;
            try {
                this.onEvent.accept(null, null);
                this.actual.onComplete();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.actual.onError(th);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f511d = DisposableHelper.DISPOSED;
            try {
                this.onEvent.accept(null, th);
            } catch (Throwable th2) {
                Exceptions.throwIfFatal(th2);
                th = new CompositeException(th, th2);
            }
            this.actual.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f511d, disposable)) {
                this.f511d = disposable;
                this.actual.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f511d = DisposableHelper.DISPOSED;
            try {
                this.onEvent.accept(t, null);
                this.actual.onSuccess(t);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.actual.onError(th);
            }
        }
    }

    public MaybeDoOnEvent(MaybeSource<T> maybeSource, BiConsumer<? super T, ? super Throwable> biConsumer) {
        super(maybeSource);
        this.onEvent = biConsumer;
    }

    @Override // io.reactivex.Maybe
    protected void subscribeActual(MaybeObserver<? super T> maybeObserver) {
        this.source.subscribe(new DoOnEventMaybeObserver(maybeObserver, this.onEvent));
    }
}
