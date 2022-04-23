package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableTimer.class */
public final class CompletableTimer extends Completable {

    /* renamed from: f */
    final long f15390f;

    /* renamed from: g */
    final TimeUnit f15391g;

    /* renamed from: h */
    final Scheduler f15392h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableTimer$TimerDisposable.class */
    static final class TimerDisposable extends AtomicReference<Disposable> implements Disposable, Runnable {
        private static final long serialVersionUID = 3167244060586201109L;

        /* renamed from: f */
        final CompletableObserver f15393f;

        TimerDisposable(CompletableObserver completableObserver) {
            this.f15393f = completableObserver;
        }

        /* renamed from: a */
        void m4321a(Disposable disposable) {
            DisposableHelper.replace(this, disposable);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f15393f.onComplete();
        }
    }

    public CompletableTimer(long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.f15390f = j;
        this.f15391g = timeUnit;
        this.f15392h = scheduler;
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        TimerDisposable timerDisposable = new TimerDisposable(completableObserver);
        completableObserver.onSubscribe(timerDisposable);
        timerDisposable.m4321a(this.f15392h.mo3498e(timerDisposable, this.f15390f, this.f15391g));
    }
}
