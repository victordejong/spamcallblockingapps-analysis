package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BooleanSupplier;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRepeatUntil.class */
public final class FlowableRepeatUntil<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final BooleanSupplier f16384h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber.class */
    static final class RepeatSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -7098360935104053232L;

        /* renamed from: f */
        final Subscriber<? super T> f16385f;

        /* renamed from: g */
        final SubscriptionArbiter f16386g;

        /* renamed from: h */
        final Publisher<? extends T> f16387h;

        /* renamed from: i */
        final BooleanSupplier f16388i;

        /* renamed from: j */
        long f16389j;

        RepeatSubscriber(Subscriber<? super T> subscriber, BooleanSupplier booleanSupplier, SubscriptionArbiter subscriptionArbiter, Publisher<? extends T> publisher) {
            this.f16385f = subscriber;
            this.f16386g = subscriptionArbiter;
            this.f16387h = publisher;
            this.f16388i = booleanSupplier;
        }

        /* renamed from: a */
        void m4116a() {
            if (getAndIncrement() == 0) {
                int i = 1;
                while (!this.f16386g.m3465e()) {
                    long j = this.f16389j;
                    if (j != 0) {
                        this.f16389j = 0L;
                        this.f16386g.m3463g(j);
                    }
                    this.f16387h.mo5c(this);
                    int addAndGet = addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            try {
                if (this.f16388i.mo4309a()) {
                    this.f16385f.onComplete();
                } else {
                    m4116a();
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f16385f.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16385f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f16389j++;
            this.f16385f.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            this.f16386g.m3462h(subscription);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super T> subscriber) {
        SubscriptionArbiter subscriptionArbiter = new SubscriptionArbiter(false);
        subscriber.onSubscribe(subscriptionArbiter);
        new RepeatSubscriber(subscriber, this.f16384h, subscriptionArbiter, this.f15411g).m4116a();
    }
}
