package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.HasUpstreamMaybeSource;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeCount.class */
public final class MaybeCount<T> extends Single<Long> implements HasUpstreamMaybeSource<T> {

    /* renamed from: f */
    final MaybeSource<T> f17006f;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeCount$CountMaybeObserver.class */
    static final class CountMaybeObserver implements MaybeObserver<Object>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super Long> f17007f;

        /* renamed from: g */
        Disposable f17008g;

        CountMaybeObserver(SingleObserver<? super Long> singleObserver) {
            this.f17007f = singleObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17008g.dispose();
            this.f17008g = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17008g.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17008g = DisposableHelper.DISPOSED;
            this.f17007f.onSuccess(0L);
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17008g = DisposableHelper.DISPOSED;
            this.f17007f.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17008g, disposable)) {
                this.f17008g = disposable;
                this.f17007f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(Object obj) {
            this.f17008g = DisposableHelper.DISPOSED;
            this.f17007f.onSuccess(1L);
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super Long> singleObserver) {
        this.f17006f.mo4485b(new CountMaybeObserver(singleObserver));
    }
}
