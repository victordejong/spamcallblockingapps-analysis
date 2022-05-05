package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableAndThenCompletable.class */
public final class CompletableAndThenCompletable extends Completable {

    /* renamed from: f */
    final CompletableSource f15230f;

    /* renamed from: g */
    final CompletableSource f15231g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableAndThenCompletable$NextObserver.class */
    static final class NextObserver implements CompletableObserver {

        /* renamed from: f */
        final AtomicReference<Disposable> f15232f;

        /* renamed from: g */
        final CompletableObserver f15233g;

        NextObserver(AtomicReference<Disposable> atomicReference, CompletableObserver completableObserver) {
            this.f15232f = atomicReference;
            this.f15233g = completableObserver;
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.f15233g.onComplete();
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f15233g.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.replace(this.f15232f, disposable);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableAndThenCompletable$SourceObserver.class */
    static final class SourceObserver extends AtomicReference<Disposable> implements CompletableObserver, Disposable {
        private static final long serialVersionUID = -4101678820158072998L;

        /* renamed from: f */
        final CompletableObserver f15234f;

        /* renamed from: g */
        final CompletableSource f15235g;

        SourceObserver(CompletableObserver completableObserver, CompletableSource completableSource) {
            this.f15234f = completableObserver;
            this.f15235g = completableSource;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.f15235g.mo4514b(new NextObserver(this, this.f15234f));
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f15234f.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable)) {
                this.f15234f.onSubscribe(this);
            }
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        this.f15230f.mo4514b(new SourceObserver(completableObserver, this.f15231g));
    }
}
