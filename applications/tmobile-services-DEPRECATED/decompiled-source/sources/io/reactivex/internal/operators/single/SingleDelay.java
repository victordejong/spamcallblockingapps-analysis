package io.reactivex.internal.operators.single;

import io.reactivex.Scheduler;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDelay.class */
public final class SingleDelay<T> extends Single<T> {

    /* renamed from: f */
    final SingleSource<? extends T> f18988f;

    /* renamed from: g */
    final long f18989g;

    /* renamed from: h */
    final TimeUnit f18990h;

    /* renamed from: i */
    final Scheduler f18991i;

    /* renamed from: j */
    final boolean f18992j;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDelay$Delay.class */
    final class Delay implements SingleObserver<T> {

        /* renamed from: f */
        private final SequentialDisposable f18993f;

        /* renamed from: g */
        final SingleObserver<? super T> f18994g;

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDelay$Delay$OnError.class */
        final class OnError implements Runnable {

            /* renamed from: f */
            private final Throwable f18996f;

            OnError(Throwable th) {
                this.f18996f = th;
            }

            @Override // java.lang.Runnable
            public void run() {
                Delay.this.f18994g.onError(this.f18996f);
            }
        }

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDelay$Delay$OnSuccess.class */
        final class OnSuccess implements Runnable {

            /* renamed from: f */
            private final T f18998f;

            OnSuccess(T t) {
                this.f18998f = t;
            }

            @Override // java.lang.Runnable
            public void run() {
                Delay.this.f18994g.onSuccess((T) this.f18998f);
            }
        }

        Delay(SequentialDisposable sequentialDisposable, SingleObserver<? super T> singleObserver) {
            this.f18993f = sequentialDisposable;
            this.f18994g = singleObserver;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            SequentialDisposable sequentialDisposable = this.f18993f;
            Scheduler scheduler = SingleDelay.this.f18991i;
            OnError onError = new OnError(th);
            SingleDelay singleDelay = SingleDelay.this;
            sequentialDisposable.m4422a(scheduler.mo3498e(onError, singleDelay.f18992j ? singleDelay.f18989g : 0L, SingleDelay.this.f18990h));
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f18993f.m4422a(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            SequentialDisposable sequentialDisposable = this.f18993f;
            Scheduler scheduler = SingleDelay.this.f18991i;
            OnSuccess onSuccess = new OnSuccess(t);
            SingleDelay singleDelay = SingleDelay.this;
            sequentialDisposable.m4422a(scheduler.mo3498e(onSuccess, singleDelay.f18989g, singleDelay.f18990h));
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        singleObserver.onSubscribe(sequentialDisposable);
        this.f18988f.mo4457b(new Delay(sequentialDisposable, singleObserver));
    }
}
