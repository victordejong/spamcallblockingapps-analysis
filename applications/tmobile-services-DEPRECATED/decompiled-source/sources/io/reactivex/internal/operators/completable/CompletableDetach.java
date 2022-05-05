package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableDetach.class */
public final class CompletableDetach extends Completable {

    /* renamed from: f */
    final CompletableSource f15281f;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableDetach$DetachCompletableObserver.class */
    static final class DetachCompletableObserver implements CompletableObserver, Disposable {

        /* renamed from: f */
        CompletableObserver f15282f;

        /* renamed from: g */
        Disposable f15283g;

        DetachCompletableObserver(CompletableObserver completableObserver) {
            this.f15282f = completableObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f15282f = null;
            this.f15283g.dispose();
            this.f15283g = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15283g.isDisposed();
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.f15283g = DisposableHelper.DISPOSED;
            CompletableObserver completableObserver = this.f15282f;
            if (completableObserver != null) {
                this.f15282f = null;
                completableObserver.onComplete();
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f15283g = DisposableHelper.DISPOSED;
            CompletableObserver completableObserver = this.f15282f;
            if (completableObserver != null) {
                this.f15282f = null;
                completableObserver.onError(th);
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f15283g, disposable)) {
                this.f15283g = disposable;
                this.f15282f.onSubscribe(this);
            }
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        this.f15281f.mo4514b(new DetachCompletableObserver(completableObserver));
    }
}
