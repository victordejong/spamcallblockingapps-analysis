package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTimer.class */
public final class FlowableTimer extends Flowable<Long> {

    /* renamed from: g */
    final Scheduler f16752g;

    /* renamed from: h */
    final long f16753h;

    /* renamed from: i */
    final TimeUnit f16754i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTimer$TimerSubscriber.class */
    static final class TimerSubscriber extends AtomicReference<Disposable> implements Subscription, Runnable {
        private static final long serialVersionUID = -2809475196591179431L;

        /* renamed from: f */
        final Subscriber<? super Long> f16755f;

        /* renamed from: g */
        volatile boolean f16756g;

        TimerSubscriber(Subscriber<? super Long> subscriber) {
            this.f16755f = subscriber;
        }

        /* renamed from: a */
        public void m4047a(Disposable disposable) {
            DisposableHelper.trySet(this, disposable);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            DisposableHelper.dispose(this);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                this.f16756g = true;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (get() == DisposableHelper.DISPOSED) {
                return;
            }
            if (this.f16756g) {
                this.f16755f.onNext(0L);
                lazySet(EmptyDisposable.INSTANCE);
                this.f16755f.onComplete();
                return;
            }
            lazySet(EmptyDisposable.INSTANCE);
            this.f16755f.onError(new MissingBackpressureException("Can't deliver value due to lack of requests"));
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super Long> subscriber) {
        TimerSubscriber timerSubscriber = new TimerSubscriber(subscriber);
        subscriber.onSubscribe(timerSubscriber);
        timerSubscriber.m4047a(this.f16752g.mo3498e(timerSubscriber, this.f16753h, this.f16754i));
    }
}
