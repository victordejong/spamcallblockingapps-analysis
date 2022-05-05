package io.reactivex.internal.operators.single;

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
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleFlatMapMaybe.class */
public final class SingleFlatMapMaybe<T, R> extends Maybe<R> {

    /* renamed from: f */
    final SingleSource<? extends T> f19102f;

    /* renamed from: g */
    final Function<? super T, ? extends MaybeSource<? extends R>> f19103g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapMaybeObserver.class */
    static final class FlatMapMaybeObserver<R> implements MaybeObserver<R> {

        /* renamed from: f */
        final AtomicReference<Disposable> f19104f;

        /* renamed from: g */
        final MaybeObserver<? super R> f19105g;

        FlatMapMaybeObserver(AtomicReference<Disposable> atomicReference, MaybeObserver<? super R> maybeObserver) {
            this.f19104f = atomicReference;
            this.f19105g = maybeObserver;
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f19105g.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f19105g.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.replace(this.f19104f, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(R r) {
            this.f19105g.onSuccess(r);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver.class */
    static final class FlatMapSingleObserver<T, R> extends AtomicReference<Disposable> implements SingleObserver<T>, Disposable {
        private static final long serialVersionUID = -5843758257109742742L;

        /* renamed from: f */
        final MaybeObserver<? super R> f19106f;

        /* renamed from: g */
        final Function<? super T, ? extends MaybeSource<? extends R>> f19107g;

        FlatMapSingleObserver(MaybeObserver<? super R> maybeObserver, Function<? super T, ? extends MaybeSource<? extends R>> function) {
            this.f19106f = maybeObserver;
            this.f19107g = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f19106f.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable)) {
                this.f19106f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            try {
                Object apply = this.f19107g.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null MaybeSource");
                MaybeSource maybeSource = (MaybeSource) apply;
                if (!isDisposed()) {
                    maybeSource.mo4485b(new FlatMapMaybeObserver(this, this.f19106f));
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                onError(th);
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super R> maybeObserver) {
        this.f19102f.mo4457b(new FlatMapSingleObserver(maybeObserver, this.f19103g));
    }
}
