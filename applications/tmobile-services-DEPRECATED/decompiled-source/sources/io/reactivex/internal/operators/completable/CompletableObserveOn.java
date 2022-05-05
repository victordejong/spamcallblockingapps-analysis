package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableObserveOn.class */
public final class CompletableObserveOn extends Completable {

    /* renamed from: f */
    final CompletableSource f15342f;

    /* renamed from: g */
    final Scheduler f15343g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableObserveOn$ObserveOnCompletableObserver.class */
    static final class ObserveOnCompletableObserver extends AtomicReference<Disposable> implements CompletableObserver, Disposable, Runnable {
        private static final long serialVersionUID = 8571289934935992137L;

        /* renamed from: f */
        final CompletableObserver f15344f;

        /* renamed from: g */
        final Scheduler f15345g;

        /* renamed from: h */
        Throwable f15346h;

        ObserveOnCompletableObserver(CompletableObserver completableObserver, Scheduler scheduler) {
            this.f15344f = completableObserver;
            this.f15345g = scheduler;
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
            DisposableHelper.replace(this, this.f15345g.mo3499d(this));
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f15346h = th;
            DisposableHelper.replace(this, this.f15345g.mo3499d(this));
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable)) {
                this.f15344f.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.f15346h;
            if (th != null) {
                this.f15346h = null;
                this.f15344f.onError(th);
                return;
            }
            this.f15344f.onComplete();
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        this.f15342f.mo4514b(new ObserveOnCompletableObserver(completableObserver, this.f15343g));
    }
}
