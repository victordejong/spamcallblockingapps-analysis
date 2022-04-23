package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.subscribers.SerializedSubscriber;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWithLatestFrom.class */
public final class FlowableWithLatestFrom<T, U, R> extends AbstractFlowableWithUpstream<T, R> {

    /* renamed from: h */
    final BiFunction<? super T, ? super U, ? extends R> f16910h;

    /* renamed from: i */
    final Publisher<? extends U> f16911i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWithLatestFrom$FlowableWithLatestSubscriber.class */
    final class FlowableWithLatestSubscriber implements FlowableSubscriber<U> {

        /* renamed from: f */
        private final WithLatestFromSubscriber<T, U, R> f16912f;

        FlowableWithLatestSubscriber(FlowableWithLatestFrom flowableWithLatestFrom, WithLatestFromSubscriber<T, U, R> withLatestFromSubscriber) {
            this.f16912f = withLatestFromSubscriber;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16912f.m4023a(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(U u) {
            this.f16912f.lazySet(u);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (this.f16912f.m4022b(subscription)) {
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWithLatestFrom$WithLatestFromSubscriber.class */
    static final class WithLatestFromSubscriber<T, U, R> extends AtomicReference<U> implements ConditionalSubscriber<T>, Subscription {
        private static final long serialVersionUID = -312246233408980075L;

        /* renamed from: f */
        final Subscriber<? super R> f16913f;

        /* renamed from: g */
        final BiFunction<? super T, ? super U, ? extends R> f16914g;

        /* renamed from: h */
        final AtomicReference<Subscription> f16915h = new AtomicReference<>();

        /* renamed from: i */
        final AtomicLong f16916i = new AtomicLong();

        /* renamed from: j */
        final AtomicReference<Subscription> f16917j = new AtomicReference<>();

        WithLatestFromSubscriber(Subscriber<? super R> subscriber, BiFunction<? super T, ? super U, ? extends R> biFunction) {
            this.f16913f = subscriber;
            this.f16914g = biFunction;
        }

        /* renamed from: a */
        public void m4023a(Throwable th) {
            SubscriptionHelper.cancel(this.f16915h);
            this.f16913f.onError(th);
        }

        /* renamed from: b */
        public boolean m4022b(Subscription subscription) {
            return SubscriptionHelper.setOnce(this.f16917j, subscription);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            SubscriptionHelper.cancel(this.f16915h);
            SubscriptionHelper.cancel(this.f16917j);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            SubscriptionHelper.cancel(this.f16917j);
            this.f16913f.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            SubscriptionHelper.cancel(this.f16917j);
            this.f16913f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!mo3605p(t)) {
                this.f16915h.get().request(1L);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.deferredSetOnce(this.f16915h, this.f16916i, subscription);
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        /* renamed from: p */
        public boolean mo3605p(T t) {
            U u = get();
            if (u == null) {
                return false;
            }
            try {
                Object apply = this.f16914g.apply(t, u);
                ObjectHelper.m4363e(apply, "The combiner returned a null value");
                this.f16913f.onNext(apply);
                return true;
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                cancel();
                this.f16913f.onError(th);
                return false;
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            SubscriptionHelper.deferredRequest(this.f16915h, this.f16916i, j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super R> subscriber) {
        SerializedSubscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        WithLatestFromSubscriber withLatestFromSubscriber = new WithLatestFromSubscriber(serializedSubscriber, this.f16910h);
        serializedSubscriber.onSubscribe(withLatestFromSubscriber);
        this.f16911i.mo5c(new FlowableWithLatestSubscriber(this, withLatestFromSubscriber));
        this.f15411g.m4493v(withLatestFromSubscriber);
    }
}
