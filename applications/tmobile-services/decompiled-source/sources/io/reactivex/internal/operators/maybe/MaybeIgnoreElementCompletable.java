package io.reactivex.internal.operators.maybe;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.FuseToMaybe;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable.class */
public final class MaybeIgnoreElementCompletable<T> extends Completable implements FuseToMaybe<T> {

    /* renamed from: f */
    final MaybeSource<T> f17147f;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver.class */
    static final class IgnoreMaybeObserver<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: f */
        final CompletableObserver f17148f;

        /* renamed from: g */
        Disposable f17149g;

        IgnoreMaybeObserver(CompletableObserver completableObserver) {
            this.f17148f = completableObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17149g.dispose();
            this.f17149g = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17149g.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17149g = DisposableHelper.DISPOSED;
            this.f17148f.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17149g = DisposableHelper.DISPOSED;
            this.f17148f.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17149g, disposable)) {
                this.f17149g = disposable;
                this.f17148f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17149g = DisposableHelper.DISPOSED;
            this.f17148f.onComplete();
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        this.f17147f.mo4485b(new IgnoreMaybeObserver(completableObserver));
    }
}
