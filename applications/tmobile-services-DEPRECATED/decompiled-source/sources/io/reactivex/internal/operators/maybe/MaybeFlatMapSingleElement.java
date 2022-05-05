package io.reactivex.internal.operators.maybe;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement.class */
public final class MaybeFlatMapSingleElement<T, R> extends Maybe<R> {

    /* renamed from: f */
    final MaybeSource<T> f17120f;

    /* renamed from: g */
    final Function<? super T, ? extends SingleSource<? extends R>> f17121g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver.class */
    static final class FlatMapMaybeObserver<T, R> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = 4827726964688405508L;

        /* renamed from: f */
        final MaybeObserver<? super R> f17122f;

        /* renamed from: g */
        final Function<? super T, ? extends SingleSource<? extends R>> f17123g;

        FlatMapMaybeObserver(MaybeObserver<? super R> maybeObserver, Function<? super T, ? extends SingleSource<? extends R>> function) {
            this.f17122f = maybeObserver;
            this.f17123g = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17122f.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17122f.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable)) {
                this.f17122f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            try {
                Object apply = this.f17123g.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null SingleSource");
                ((SingleSource) apply).mo4457b(new FlatMapSingleObserver(this, this.f17122f));
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                onError(th);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapSingleObserver.class */
    static final class FlatMapSingleObserver<R> implements SingleObserver<R> {

        /* renamed from: f */
        final AtomicReference<Disposable> f17124f;

        /* renamed from: g */
        final MaybeObserver<? super R> f17125g;

        FlatMapSingleObserver(AtomicReference<Disposable> atomicReference, MaybeObserver<? super R> maybeObserver) {
            this.f17124f = atomicReference;
            this.f17125g = maybeObserver;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f17125g.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.replace(this.f17124f, disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(R r) {
            this.f17125g.onSuccess(r);
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super R> maybeObserver) {
        this.f17120f.mo4485b(new FlatMapMaybeObserver(maybeObserver, this.f17121g));
    }
}
