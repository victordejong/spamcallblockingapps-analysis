package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.subscribers.SerializedSubscriber;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDelay.class */
public final class FlowableDelay<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final long f15753h;

    /* renamed from: i */
    final TimeUnit f15754i;

    /* renamed from: j */
    final Scheduler f15755j;

    /* renamed from: k */
    final boolean f15756k;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDelay$DelaySubscriber.class */
    static final class DelaySubscriber<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: f */
        final Subscriber<? super T> f15757f;

        /* renamed from: g */
        final long f15758g;

        /* renamed from: h */
        final TimeUnit f15759h;

        /* renamed from: i */
        final Scheduler.Worker f15760i;

        /* renamed from: j */
        final boolean f15761j;

        /* renamed from: k */
        Subscription f15762k;

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDelay$DelaySubscriber$OnComplete.class */
        final class OnComplete implements Runnable {
            OnComplete() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    DelaySubscriber.this.f15757f.onComplete();
                } finally {
                    DelaySubscriber.this.f15760i.dispose();
                }
            }
        }

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDelay$DelaySubscriber$OnError.class */
        final class OnError implements Runnable {

            /* renamed from: f */
            private final Throwable f15764f;

            OnError(Throwable th) {
                this.f15764f = th;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    DelaySubscriber.this.f15757f.onError(this.f15764f);
                } finally {
                    DelaySubscriber.this.f15760i.dispose();
                }
            }
        }

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDelay$DelaySubscriber$OnNext.class */
        final class OnNext implements Runnable {

            /* renamed from: f */
            private final T f15766f;

            OnNext(T t) {
                this.f15766f = t;
            }

            @Override // java.lang.Runnable
            public void run() {
                DelaySubscriber.this.f15757f.onNext((T) this.f15766f);
            }
        }

        DelaySubscriber(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Scheduler.Worker worker, boolean z) {
            this.f15757f = subscriber;
            this.f15758g = j;
            this.f15759h = timeUnit;
            this.f15760i = worker;
            this.f15761j = z;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f15762k.cancel();
            this.f15760i.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f15760i.mo3228c(new OnComplete(), this.f15758g, this.f15759h);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f15760i.mo3228c(new OnError(th), this.f15761j ? this.f15758g : 0L, this.f15759h);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f15760i.mo3228c(new OnNext(t), this.f15758g, this.f15759h);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15762k, subscription)) {
                this.f15762k = subscription;
                this.f15757f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f15762k.request(j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        if (!this.f15756k) {
            subscriber = new SerializedSubscriber<>(subscriber);
        }
        this.f15411g.m4493v(new DelaySubscriber(subscriber, this.f15753h, this.f15754i, this.f15755j.mo3232b(), this.f15756k));
    }
}
