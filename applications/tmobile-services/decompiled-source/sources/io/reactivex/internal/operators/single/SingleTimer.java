package io.reactivex.internal.operators.single;

import io.reactivex.Scheduler;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleTimer.class */
public final class SingleTimer extends Single<Long> {

    /* renamed from: f */
    final long f19172f;

    /* renamed from: g */
    final TimeUnit f19173g;

    /* renamed from: h */
    final Scheduler f19174h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleTimer$TimerDisposable.class */
    static final class TimerDisposable extends AtomicReference<Disposable> implements Disposable, Runnable {
        private static final long serialVersionUID = 8465401857522493082L;

        /* renamed from: f */
        final SingleObserver<? super Long> f19175f;

        TimerDisposable(SingleObserver<? super Long> singleObserver) {
            this.f19175f = singleObserver;
        }

        /* renamed from: a */
        void m3579a(Disposable disposable) {
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
            this.f19175f.onSuccess(0L);
        }
    }

    public SingleTimer(long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.f19172f = j;
        this.f19173g = timeUnit;
        this.f19174h = scheduler;
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super Long> singleObserver) {
        TimerDisposable timerDisposable = new TimerDisposable(singleObserver);
        singleObserver.onSubscribe(timerDisposable);
        timerDisposable.m3579a(this.f19174h.mo3498e(timerDisposable, this.f19172f, this.f19173g));
    }
}
