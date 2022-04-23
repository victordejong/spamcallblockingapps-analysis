package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRetryPredicate.class */
public final class FlowableRetryPredicate<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final Predicate<? super Throwable> f16449h;

    /* renamed from: i */
    final long f16450i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRetryPredicate$RetrySubscriber.class */
    static final class RetrySubscriber<T> extends AtomicInteger implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -7098360935104053232L;

        /* renamed from: f */
        final Subscriber<? super T> f16451f;

        /* renamed from: g */
        final SubscriptionArbiter f16452g;

        /* renamed from: h */
        final Publisher<? extends T> f16453h;

        /* renamed from: i */
        final Predicate<? super Throwable> f16454i;

        /* renamed from: j */
        long f16455j;

        /* renamed from: k */
        long f16456k;

        RetrySubscriber(Subscriber<? super T> subscriber, long j, Predicate<? super Throwable> predicate, SubscriptionArbiter subscriptionArbiter, Publisher<? extends T> publisher) {
            this.f16451f = subscriber;
            this.f16452g = subscriptionArbiter;
            this.f16453h = publisher;
            this.f16454i = predicate;
            this.f16455j = j;
        }

        /* renamed from: a */
        void m4086a() {
            if (getAndIncrement() == 0) {
                int i = 1;
                while (!this.f16452g.m3465e()) {
                    long j = this.f16456k;
                    if (j != 0) {
                        this.f16456k = 0L;
                        this.f16452g.m3463g(j);
                    }
                    this.f16453h.mo5c(this);
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
            this.f16451f.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            long j = this.f16455j;
            if (j != Long.MAX_VALUE) {
                this.f16455j = j - 1;
            }
            if (j == 0) {
                this.f16451f.onError(th);
                return;
            }
            try {
                if (!this.f16454i.mo3191a(th)) {
                    this.f16451f.onError(th);
                } else {
                    m4086a();
                }
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                this.f16451f.onError(new CompositeException(th, th2));
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f16456k++;
            this.f16451f.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            this.f16452g.m3462h(subscription);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super T> subscriber) {
        SubscriptionArbiter subscriptionArbiter = new SubscriptionArbiter(false);
        subscriber.onSubscribe(subscriptionArbiter);
        new RetrySubscriber(subscriber, this.f16450i, this.f16449h, subscriptionArbiter, this.f15411g).m4086a();
    }
}
