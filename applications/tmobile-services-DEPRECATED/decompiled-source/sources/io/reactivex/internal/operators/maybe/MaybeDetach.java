package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDetach.class */
public final class MaybeDetach<T> extends AbstractMaybeWithUpstream<T, T> {

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver.class */
    static final class DetachMaybeObserver<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: f */
        MaybeObserver<? super T> f17039f;

        /* renamed from: g */
        Disposable f17040g;

        DetachMaybeObserver(MaybeObserver<? super T> maybeObserver) {
            this.f17039f = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17039f = null;
            this.f17040g.dispose();
            this.f17040g = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17040g.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17040g = DisposableHelper.DISPOSED;
            MaybeObserver<? super T> maybeObserver = this.f17039f;
            if (maybeObserver != null) {
                this.f17039f = null;
                maybeObserver.onComplete();
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17040g = DisposableHelper.DISPOSED;
            MaybeObserver<? super T> maybeObserver = this.f17039f;
            if (maybeObserver != null) {
                this.f17039f = null;
                maybeObserver.onError(th);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17040g, disposable)) {
                this.f17040g = disposable;
                this.f17039f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17040g = DisposableHelper.DISPOSED;
            MaybeObserver<? super T> maybeObserver = this.f17039f;
            if (maybeObserver != null) {
                this.f17039f = null;
                maybeObserver.onSuccess(t);
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f16960f.mo4485b(new DetachMaybeObserver(maybeObserver));
    }
}
