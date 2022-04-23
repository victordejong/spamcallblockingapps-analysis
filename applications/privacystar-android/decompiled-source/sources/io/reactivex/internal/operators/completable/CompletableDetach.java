package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.annotations.Experimental;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
@Experimental
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableDetach.class */
public final class CompletableDetach extends Completable {
    final CompletableSource source;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableDetach$DetachCompletableObserver.class */
    static final class DetachCompletableObserver implements CompletableObserver, Disposable {
        CompletableObserver actual;

        /* renamed from: d */
        Disposable f363d;

        DetachCompletableObserver(CompletableObserver completableObserver) {
            this.actual = completableObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.actual = null;
            this.f363d.dispose();
            this.f363d = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f363d.isDisposed();
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.f363d = DisposableHelper.DISPOSED;
            CompletableObserver completableObserver = this.actual;
            if (completableObserver != null) {
                this.actual = null;
                completableObserver.onComplete();
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f363d = DisposableHelper.DISPOSED;
            CompletableObserver completableObserver = this.actual;
            if (completableObserver != null) {
                this.actual = null;
                completableObserver.onError(th);
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f363d, disposable)) {
                this.f363d = disposable;
                this.actual.onSubscribe(this);
            }
        }
    }

    public CompletableDetach(CompletableSource completableSource) {
        this.source = completableSource;
    }

    @Override // io.reactivex.Completable
    protected void subscribeActual(CompletableObserver completableObserver) {
        this.source.subscribe(new DetachCompletableObserver(completableObserver));
    }
}
