package io.reactivex.internal.operators.maybe;

import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.HasUpstreamCompletableSource;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFromCompletable.class */
public final class MaybeFromCompletable<T> extends Maybe<T> implements HasUpstreamCompletableSource {

    /* renamed from: f */
    final CompletableSource f17133f;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFromCompletable$FromCompletableObserver.class */
    static final class FromCompletableObserver<T> implements CompletableObserver, Disposable {

        /* renamed from: f */
        final MaybeObserver<? super T> f17134f;

        /* renamed from: g */
        Disposable f17135g;

        FromCompletableObserver(MaybeObserver<? super T> maybeObserver) {
            this.f17134f = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17135g.dispose();
            this.f17135g = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17135g.isDisposed();
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17135g = DisposableHelper.DISPOSED;
            this.f17134f.onComplete();
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f17135g = DisposableHelper.DISPOSED;
            this.f17134f.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17135g, disposable)) {
                this.f17135g = disposable;
                this.f17134f.onSubscribe(this);
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f17133f.mo4514b(new FromCompletableObserver(maybeObserver));
    }
}
