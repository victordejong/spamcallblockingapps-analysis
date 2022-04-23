package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeOnErrorReturn.class */
public final class MaybeOnErrorReturn<T> extends AbstractMaybeWithUpstream<T, T> {

    /* renamed from: g */
    final Function<? super Throwable, ? extends T> f17192g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver.class */
    static final class OnErrorReturnMaybeObserver<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: f */
        final MaybeObserver<? super T> f17193f;

        /* renamed from: g */
        final Function<? super Throwable, ? extends T> f17194g;

        /* renamed from: h */
        Disposable f17195h;

        OnErrorReturnMaybeObserver(MaybeObserver<? super T> maybeObserver, Function<? super Throwable, ? extends T> function) {
            this.f17193f = maybeObserver;
            this.f17194g = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17195h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17195h.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17193f.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            try {
                Object apply = this.f17194g.apply(th);
                ObjectHelper.m4363e(apply, "The valueSupplier returned a null value");
                this.f17193f.onSuccess(apply);
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                this.f17193f.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17195h, disposable)) {
                this.f17195h = disposable;
                this.f17193f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17193f.onSuccess(t);
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f16960f.mo4485b(new OnErrorReturnMaybeObserver(maybeObserver, this.f17192g));
    }
}
