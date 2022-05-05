package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSubscribeOn.class */
public final class FlowableSubscribeOn<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final Scheduler f16587h;

    /* renamed from: i */
    final boolean f16588i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSubscribeOn$SubscribeOnSubscriber.class */
    static final class SubscribeOnSubscriber<T> extends AtomicReference<Thread> implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = 8094547886072529208L;

        /* renamed from: f */
        final Subscriber<? super T> f16589f;

        /* renamed from: g */
        final Scheduler.Worker f16590g;

        /* renamed from: h */
        final AtomicReference<Subscription> f16591h = new AtomicReference<>();

        /* renamed from: i */
        final AtomicLong f16592i = new AtomicLong();

        /* renamed from: j */
        final boolean f16593j;

        /* renamed from: k */
        Publisher<T> f16594k;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSubscribeOn$SubscribeOnSubscriber$Request.class */
        public static final class Request implements Runnable {

            /* renamed from: f */
            final Subscription f16595f;

            /* renamed from: g */
            final long f16596g;

            Request(Subscription subscription, long j) {
                this.f16595f = subscription;
                this.f16596g = j;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f16595f.request(this.f16596g);
            }
        }

        SubscribeOnSubscriber(Subscriber<? super T> subscriber, Scheduler.Worker worker, Publisher<T> publisher, boolean z) {
            this.f16589f = subscriber;
            this.f16590g = worker;
            this.f16594k = publisher;
            this.f16593j = !z;
        }

        /* renamed from: a */
        void m4063a(long j, Subscription subscription) {
            if (this.f16593j || Thread.currentThread() == get()) {
                subscription.request(j);
            } else {
                this.f16590g.mo3229b(new Request(subscription, j));
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            SubscriptionHelper.cancel(this.f16591h);
            this.f16590g.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16589f.onComplete();
            this.f16590g.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16589f.onError(th);
            this.f16590g.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f16589f.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.setOnce(this.f16591h, subscription)) {
                long andSet = this.f16592i.getAndSet(0L);
                if (andSet != 0) {
                    m4063a(andSet, subscription);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                Subscription subscription = this.f16591h.get();
                if (subscription != null) {
                    m4063a(j, subscription);
                    return;
                }
                BackpressureHelper.m3454a(this.f16592i, j);
                Subscription subscription2 = this.f16591h.get();
                if (subscription2 != null) {
                    long andSet = this.f16592i.getAndSet(0L);
                    if (andSet != 0) {
                        m4063a(andSet, subscription2);
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            lazySet(Thread.currentThread());
            Publisher<T> publisher = this.f16594k;
            this.f16594k = null;
            publisher.mo5c(this);
        }
    }

    public FlowableSubscribeOn(Flowable<T> flowable, Scheduler scheduler, boolean z) {
        super(flowable);
        this.f16587h = scheduler;
        this.f16588i = z;
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super T> subscriber) {
        Scheduler.Worker b = this.f16587h.mo3232b();
        SubscribeOnSubscriber subscribeOnSubscriber = new SubscribeOnSubscriber(subscriber, b, this.f15411g, this.f16588i);
        subscriber.onSubscribe(subscribeOnSubscriber);
        b.mo3229b(subscribeOnSubscriber);
    }
}
