package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFilter.class */
public final class MaybeFilter<T> extends AbstractMaybeWithUpstream<T, T> {

    /* renamed from: g */
    final Predicate<? super T> f17068g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFilter$FilterMaybeObserver.class */
    static final class FilterMaybeObserver<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: f */
        final MaybeObserver<? super T> f17069f;

        /* renamed from: g */
        final Predicate<? super T> f17070g;

        /* renamed from: h */
        Disposable f17071h;

        FilterMaybeObserver(MaybeObserver<? super T> maybeObserver, Predicate<? super T> predicate) {
            this.f17069f = maybeObserver;
            this.f17070g = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Disposable disposable = this.f17071h;
            this.f17071h = DisposableHelper.DISPOSED;
            disposable.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17071h.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17069f.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17069f.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17071h, disposable)) {
                this.f17071h = disposable;
                this.f17069f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            try {
                if (this.f17070g.mo3191a(t)) {
                    this.f17069f.onSuccess(t);
                } else {
                    this.f17069f.onComplete();
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17069f.onError(th);
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f16960f.mo4485b(new FilterMaybeObserver(maybeObserver, this.f17068g));
    }
}
