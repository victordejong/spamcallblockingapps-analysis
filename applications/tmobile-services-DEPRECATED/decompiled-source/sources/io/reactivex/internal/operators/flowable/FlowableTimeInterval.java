package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.schedulers.Timed;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTimeInterval.class */
public final class FlowableTimeInterval<T> extends AbstractFlowableWithUpstream<T, Timed<T>> {

    /* renamed from: h */
    final Scheduler f16704h;

    /* renamed from: i */
    final TimeUnit f16705i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTimeInterval$TimeIntervalSubscriber.class */
    static final class TimeIntervalSubscriber<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: f */
        final Subscriber<? super Timed<T>> f16706f;

        /* renamed from: g */
        final TimeUnit f16707g;

        /* renamed from: h */
        final Scheduler f16708h;

        /* renamed from: i */
        Subscription f16709i;

        /* renamed from: j */
        long f16710j;

        TimeIntervalSubscriber(Subscriber<? super Timed<T>> subscriber, TimeUnit timeUnit, Scheduler scheduler) {
            this.f16706f = subscriber;
            this.f16708h = scheduler;
            this.f16707g = timeUnit;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16709i.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16706f.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16706f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            long c = this.f16708h.mo3231c(this.f16707g);
            long j = this.f16710j;
            this.f16710j = c;
            this.f16706f.onNext(new Timed(t, c - j, this.f16707g));
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16709i, subscription)) {
                this.f16710j = this.f16708h.mo3231c(this.f16707g);
                this.f16709i = subscription;
                this.f16706f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f16709i.request(j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super Timed<T>> subscriber) {
        this.f15411g.m4493v(new TimeIntervalSubscriber(subscriber, this.f16705i, this.f16704h));
    }
}
