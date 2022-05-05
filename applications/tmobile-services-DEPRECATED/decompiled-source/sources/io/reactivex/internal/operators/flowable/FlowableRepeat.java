package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRepeat.class */
public final class FlowableRepeat<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final long f16378h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber.class */
    static final class RepeatSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -7098360935104053232L;

        /* renamed from: f */
        final Subscriber<? super T> f16379f;

        /* renamed from: g */
        final SubscriptionArbiter f16380g;

        /* renamed from: h */
        final Publisher<? extends T> f16381h;

        /* renamed from: i */
        long f16382i;

        /* renamed from: j */
        long f16383j;

        RepeatSubscriber(Subscriber<? super T> subscriber, long j, SubscriptionArbiter subscriptionArbiter, Publisher<? extends T> publisher) {
            this.f16379f = subscriber;
            this.f16380g = subscriptionArbiter;
            this.f16381h = publisher;
            this.f16382i = j;
        }

        /* renamed from: a */
        void m4117a() {
            if (getAndIncrement() == 0) {
                int i = 1;
                while (!this.f16380g.m3465e()) {
                    long j = this.f16383j;
                    if (j != 0) {
                        this.f16383j = 0L;
                        this.f16380g.m3463g(j);
                    }
                    this.f16381h.mo5c(this);
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
            long j = this.f16382i;
            if (j != Long.MAX_VALUE) {
                this.f16382i = j - 1;
            }
            if (j != 0) {
                m4117a();
            } else {
                this.f16379f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16379f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f16383j++;
            this.f16379f.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            this.f16380g.m3462h(subscription);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super T> subscriber) {
        SubscriptionArbiter subscriptionArbiter = new SubscriptionArbiter(false);
        subscriber.onSubscribe(subscriptionArbiter);
        long j = this.f16378h;
        long j2 = Long.MAX_VALUE;
        if (j != Long.MAX_VALUE) {
            j2 = j - 1;
        }
        new RepeatSubscriber(subscriber, j2, subscriptionArbiter, this.f15411g).m4117a();
    }
}
