package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableDelay.class */
public final class CompletableDelay extends Completable {

    /* renamed from: f */
    final CompletableSource f15270f;

    /* renamed from: g */
    final long f15271g;

    /* renamed from: h */
    final TimeUnit f15272h;

    /* renamed from: i */
    final Scheduler f15273i;

    /* renamed from: j */
    final boolean f15274j;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableDelay$Delay.class */
    static final class Delay extends AtomicReference<Disposable> implements CompletableObserver, Runnable, Disposable {
        private static final long serialVersionUID = 465972761105851022L;

        /* renamed from: f */
        final CompletableObserver f15275f;

        /* renamed from: g */
        final long f15276g;

        /* renamed from: h */
        final TimeUnit f15277h;

        /* renamed from: i */
        final Scheduler f15278i;

        /* renamed from: j */
        final boolean f15279j;

        /* renamed from: k */
        Throwable f15280k;

        Delay(CompletableObserver completableObserver, long j, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
            this.f15275f = completableObserver;
            this.f15276g = j;
            this.f15277h = timeUnit;
            this.f15278i = scheduler;
            this.f15279j = z;
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
            DisposableHelper.replace(this, this.f15278i.mo3498e(this, this.f15276g, this.f15277h));
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f15280k = th;
            DisposableHelper.replace(this, this.f15278i.mo3498e(this, this.f15279j ? this.f15276g : 0L, this.f15277h));
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable)) {
                this.f15275f.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.f15280k;
            this.f15280k = null;
            if (th != null) {
                this.f15275f.onError(th);
            } else {
                this.f15275f.onComplete();
            }
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        this.f15270f.mo4514b(new Delay(completableObserver, this.f15271g, this.f15272h, this.f15273i, this.f15274j));
    }
}
