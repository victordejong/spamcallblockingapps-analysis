package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.HasUpstreamMaybeSource;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeContains.class */
public final class MaybeContains<T> extends Single<Boolean> implements HasUpstreamMaybeSource<T> {

    /* renamed from: f */
    final MaybeSource<T> f17001f;

    /* renamed from: g */
    final Object f17002g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeContains$ContainsMaybeObserver.class */
    static final class ContainsMaybeObserver implements MaybeObserver<Object>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super Boolean> f17003f;

        /* renamed from: g */
        final Object f17004g;

        /* renamed from: h */
        Disposable f17005h;

        ContainsMaybeObserver(SingleObserver<? super Boolean> singleObserver, Object obj) {
            this.f17003f = singleObserver;
            this.f17004g = obj;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17005h.dispose();
            this.f17005h = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17005h.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17005h = DisposableHelper.DISPOSED;
            this.f17003f.onSuccess(Boolean.FALSE);
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17005h = DisposableHelper.DISPOSED;
            this.f17003f.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17005h, disposable)) {
                this.f17005h = disposable;
                this.f17003f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(Object obj) {
            this.f17005h = DisposableHelper.DISPOSED;
            this.f17003f.onSuccess(Boolean.valueOf(ObjectHelper.m4365c(obj, this.f17004g)));
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super Boolean> singleObserver) {
        this.f17001f.mo4485b(new ContainsMaybeObserver(singleObserver, this.f17002g));
    }
}
