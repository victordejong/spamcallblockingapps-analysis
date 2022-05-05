package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.HasUpstreamMaybeSource;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeToSingle.class */
public final class MaybeToSingle<T> extends Single<T> implements HasUpstreamMaybeSource<T> {

    /* renamed from: f */
    final MaybeSource<T> f17253f;

    /* renamed from: g */
    final T f17254g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeToSingle$ToSingleMaybeSubscriber.class */
    static final class ToSingleMaybeSubscriber<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super T> f17255f;

        /* renamed from: g */
        final T f17256g;

        /* renamed from: h */
        Disposable f17257h;

        ToSingleMaybeSubscriber(SingleObserver<? super T> singleObserver, T t) {
            this.f17255f = singleObserver;
            this.f17256g = t;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17257h.dispose();
            this.f17257h = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17257h.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17257h = DisposableHelper.DISPOSED;
            T t = this.f17256g;
            if (t != null) {
                this.f17255f.onSuccess(t);
            } else {
                this.f17255f.onError(new NoSuchElementException("The MaybeSource is empty"));
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17257h = DisposableHelper.DISPOSED;
            this.f17255f.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17257h, disposable)) {
                this.f17257h = disposable;
                this.f17255f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17257h = DisposableHelper.DISPOSED;
            this.f17255f.onSuccess(t);
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f17253f.mo4485b(new ToSingleMaybeSubscriber(singleObserver, this.f17254g));
    }
}
