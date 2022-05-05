package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.subscribers.SerializedSubscriber;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSamplePublisher.class */
public final class FlowableSamplePublisher<T> extends Flowable<T> {

    /* renamed from: g */
    final Publisher<T> f16458g;

    /* renamed from: h */
    final Publisher<?> f16459h;

    /* renamed from: i */
    final boolean f16460i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainEmitLast.class */
    static final class SampleMainEmitLast<T> extends SamplePublisherSubscriber<T> {
        private static final long serialVersionUID = -3029755663834015785L;

        /* renamed from: k */
        final AtomicInteger f16461k = new AtomicInteger();

        /* renamed from: l */
        volatile boolean f16462l;

        SampleMainEmitLast(Subscriber<? super T> subscriber, Publisher<?> publisher) {
            super(subscriber, publisher);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSamplePublisher.SamplePublisherSubscriber
        /* renamed from: b */
        void mo4084b() {
            this.f16462l = true;
            if (this.f16461k.getAndIncrement() == 0) {
                m4083c();
                this.f16463f.onComplete();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSamplePublisher.SamplePublisherSubscriber
        /* renamed from: e */
        void mo4081e() {
            if (this.f16461k.getAndIncrement() == 0) {
                do {
                    boolean z = this.f16462l;
                    m4083c();
                    if (z) {
                        this.f16463f.onComplete();
                        return;
                    }
                } while (this.f16461k.decrementAndGet() != 0);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainNoLast.class */
    static final class SampleMainNoLast<T> extends SamplePublisherSubscriber<T> {
        private static final long serialVersionUID = -3029755663834015785L;

        SampleMainNoLast(Subscriber<? super T> subscriber, Publisher<?> publisher) {
            super(subscriber, publisher);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSamplePublisher.SamplePublisherSubscriber
        /* renamed from: b */
        void mo4084b() {
            this.f16463f.onComplete();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSamplePublisher.SamplePublisherSubscriber
        /* renamed from: e */
        void mo4081e() {
            m4083c();
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber.class */
    static abstract class SamplePublisherSubscriber<T> extends AtomicReference<T> implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -3517602651313910099L;

        /* renamed from: f */
        final Subscriber<? super T> f16463f;

        /* renamed from: g */
        final Publisher<?> f16464g;

        /* renamed from: h */
        final AtomicLong f16465h = new AtomicLong();

        /* renamed from: i */
        final AtomicReference<Subscription> f16466i = new AtomicReference<>();

        /* renamed from: j */
        Subscription f16467j;

        SamplePublisherSubscriber(Subscriber<? super T> subscriber, Publisher<?> publisher) {
            this.f16463f = subscriber;
            this.f16464g = publisher;
        }

        /* renamed from: a */
        public void m4085a() {
            this.f16467j.cancel();
            mo4084b();
        }

        /* renamed from: b */
        abstract void mo4084b();

        /* renamed from: c */
        void m4083c() {
            T andSet = getAndSet(null);
            if (andSet == null) {
                return;
            }
            if (this.f16465h.get() != 0) {
                this.f16463f.onNext(andSet);
                BackpressureHelper.m3450e(this.f16465h, 1L);
                return;
            }
            cancel();
            this.f16463f.onError(new MissingBackpressureException("Couldn't emit value due to lack of requests!"));
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            SubscriptionHelper.cancel(this.f16466i);
            this.f16467j.cancel();
        }

        /* renamed from: d */
        public void m4082d(Throwable th) {
            this.f16467j.cancel();
            this.f16463f.onError(th);
        }

        /* renamed from: e */
        abstract void mo4081e();

        /* renamed from: f */
        void m4080f(Subscription subscription) {
            SubscriptionHelper.setOnce(this.f16466i, subscription, Long.MAX_VALUE);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            SubscriptionHelper.cancel(this.f16466i);
            mo4084b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            SubscriptionHelper.cancel(this.f16466i);
            this.f16463f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            lazySet(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16467j, subscription)) {
                this.f16467j = subscription;
                this.f16463f.onSubscribe(this);
                if (this.f16466i.get() == null) {
                    this.f16464g.mo5c(new SamplerSubscriber(this));
                    subscription.request(Long.MAX_VALUE);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f16465h, j);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplerSubscriber.class */
    static final class SamplerSubscriber<T> implements FlowableSubscriber<Object> {

        /* renamed from: f */
        final SamplePublisherSubscriber<T> f16468f;

        SamplerSubscriber(SamplePublisherSubscriber<T> samplePublisherSubscriber) {
            this.f16468f = samplePublisherSubscriber;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16468f.m4085a();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16468f.m4082d(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            this.f16468f.mo4081e();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            this.f16468f.m4080f(subscription);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        SerializedSubscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        if (this.f16460i) {
            this.f16458g.mo5c(new SampleMainEmitLast(serializedSubscriber, this.f16459h));
        } else {
            this.f16458g.mo5c(new SampleMainNoLast(serializedSubscriber, this.f16459h));
        }
    }
}
