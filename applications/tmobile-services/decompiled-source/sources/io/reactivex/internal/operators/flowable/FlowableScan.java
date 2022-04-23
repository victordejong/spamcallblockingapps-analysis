package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableScan.class */
public final class FlowableScan<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final BiFunction<T, T, T> f16483h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber.class */
    static final class ScanSubscriber<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: f */
        final Subscriber<? super T> f16484f;

        /* renamed from: g */
        final BiFunction<T, T, T> f16485g;

        /* renamed from: h */
        Subscription f16486h;

        /* renamed from: i */
        T f16487i;

        /* renamed from: j */
        boolean f16488j;

        ScanSubscriber(Subscriber<? super T> subscriber, BiFunction<T, T, T> biFunction) {
            this.f16484f = subscriber;
            this.f16485g = biFunction;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16486h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f16488j) {
                this.f16488j = true;
                this.f16484f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16488j) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f16488j = true;
            this.f16484f.onError(th);
        }

        /* JADX WARN: Type inference failed for: r0v13, types: [T, java.lang.Object] */
        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f16488j) {
                Subscriber<? super T> subscriber = this.f16484f;
                T t2 = this.f16487i;
                if (t2 == null) {
                    this.f16487i = t;
                    subscriber.onNext(t);
                    return;
                }
                try {
                    T apply = this.f16485g.apply(t2, t);
                    ObjectHelper.m4363e(apply, "The value returned by the accumulator is null");
                    this.f16487i = apply;
                    subscriber.onNext(apply);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f16486h.cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16486h, subscription)) {
                this.f16486h = subscription;
                this.f16484f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f16486h.request(j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new ScanSubscriber(subscriber, this.f16483h));
    }
}
