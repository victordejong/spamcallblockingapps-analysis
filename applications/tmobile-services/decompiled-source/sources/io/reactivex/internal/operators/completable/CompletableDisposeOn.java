package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableDisposeOn.class */
public final class CompletableDisposeOn extends Completable {

    /* renamed from: f */
    final CompletableSource f15284f;

    /* renamed from: g */
    final Scheduler f15285g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver.class */
    static final class DisposeOnObserver implements CompletableObserver, Disposable, Runnable {

        /* renamed from: f */
        final CompletableObserver f15286f;

        /* renamed from: g */
        final Scheduler f15287g;

        /* renamed from: h */
        Disposable f15288h;

        /* renamed from: i */
        volatile boolean f15289i;

        DisposeOnObserver(CompletableObserver completableObserver, Scheduler scheduler) {
            this.f15286f = completableObserver;
            this.f15287g = scheduler;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f15289i = true;
            this.f15287g.mo3499d(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15289i;
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            if (!this.f15289i) {
                this.f15286f.onComplete();
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            if (this.f15289i) {
                RxJavaPlugins.m3354t(th);
            } else {
                this.f15286f.onError(th);
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f15288h, disposable)) {
                this.f15288h = disposable;
                this.f15286f.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f15288h.dispose();
            this.f15288h = DisposableHelper.DISPOSED;
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        this.f15284f.mo4514b(new DisposeOnObserver(completableObserver, this.f15285g));
    }
}
