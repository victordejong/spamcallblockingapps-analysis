package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.HalfSerializer;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTakeUntil.class */
public final class FlowableTakeUntil<T, U> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final Publisher<? extends U> f16658h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber.class */
    public static final class TakeUntilMainSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -4945480365982832967L;

        /* renamed from: f */
        final Subscriber<? super T> f16659f;

        /* renamed from: g */
        final AtomicLong f16660g = new AtomicLong();

        /* renamed from: h */
        final AtomicReference<Subscription> f16661h = new AtomicReference<>();

        /* renamed from: j */
        final TakeUntilMainSubscriber<T>.OtherSubscriber f16663j = new OtherSubscriber();

        /* renamed from: i */
        final AtomicThrowable f16662i = new AtomicThrowable();

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber$OtherSubscriber.class */
        final class OtherSubscriber extends AtomicReference<Subscription> implements FlowableSubscriber<Object> {
            private static final long serialVersionUID = -3592821756711087922L;

            OtherSubscriber() {
            }

            @Override // org.reactivestreams.Subscriber
            public void onComplete() {
                SubscriptionHelper.cancel(TakeUntilMainSubscriber.this.f16661h);
                TakeUntilMainSubscriber takeUntilMainSubscriber = TakeUntilMainSubscriber.this;
                HalfSerializer.m3432b(takeUntilMainSubscriber.f16659f, takeUntilMainSubscriber, takeUntilMainSubscriber.f16662i);
            }

            @Override // org.reactivestreams.Subscriber
            public void onError(Throwable th) {
                SubscriptionHelper.cancel(TakeUntilMainSubscriber.this.f16661h);
                TakeUntilMainSubscriber takeUntilMainSubscriber = TakeUntilMainSubscriber.this;
                HalfSerializer.m3430d(takeUntilMainSubscriber.f16659f, th, takeUntilMainSubscriber, takeUntilMainSubscriber.f16662i);
            }

            @Override // org.reactivestreams.Subscriber
            public void onNext(Object obj) {
                SubscriptionHelper.cancel(this);
                onComplete();
            }

            @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
            public void onSubscribe(Subscription subscription) {
                SubscriptionHelper.setOnce(this, subscription, Long.MAX_VALUE);
            }
        }

        TakeUntilMainSubscriber(Subscriber<? super T> subscriber) {
            this.f16659f = subscriber;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            SubscriptionHelper.cancel(this.f16661h);
            SubscriptionHelper.cancel(this.f16663j);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            SubscriptionHelper.cancel(this.f16663j);
            HalfSerializer.m3432b(this.f16659f, this, this.f16662i);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            SubscriptionHelper.cancel(this.f16663j);
            HalfSerializer.m3430d(this.f16659f, th, this, this.f16662i);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            HalfSerializer.m3428f(this.f16659f, t, this, this.f16662i);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.deferredSetOnce(this.f16661h, this.f16660g, subscription);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            SubscriptionHelper.deferredRequest(this.f16661h, this.f16660g, j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        TakeUntilMainSubscriber takeUntilMainSubscriber = new TakeUntilMainSubscriber(subscriber);
        subscriber.onSubscribe(takeUntilMainSubscriber);
        this.f16658h.mo5c(takeUntilMainSubscriber.f16663j);
        this.f15411g.m4493v(takeUntilMainSubscriber);
    }
}
