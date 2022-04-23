package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableLimit.class */
public final class FlowableLimit<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final long f16142h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber.class */
    static final class LimitSubscriber<T> extends AtomicLong implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = 2288246011222124525L;

        /* renamed from: f */
        final Subscriber<? super T> f16143f;

        /* renamed from: g */
        long f16144g;

        /* renamed from: h */
        Subscription f16145h;

        LimitSubscriber(Subscriber<? super T> subscriber, long j) {
            this.f16143f = subscriber;
            this.f16144g = j;
            lazySet(j);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16145h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f16144g > 0) {
                this.f16144g = 0L;
                this.f16143f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16144g > 0) {
                this.f16144g = 0L;
                this.f16143f.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            long j = this.f16144g;
            if (j > 0) {
                long j2 = j - 1;
                this.f16144g = j2;
                this.f16143f.onNext(t);
                if (j2 == 0) {
                    this.f16145h.cancel();
                    this.f16143f.onComplete();
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (!SubscriptionHelper.validate(this.f16145h, subscription)) {
                return;
            }
            if (this.f16144g == 0) {
                subscription.cancel();
                EmptySubscription.complete(this.f16143f);
                return;
            }
            this.f16145h = subscription;
            this.f16143f.onSubscribe(this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v3, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // org.reactivestreams.Subscription
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void request(long r9) {
            /*
                r8 = this;
                r0 = r9
                boolean r0 = io.reactivex.internal.subscriptions.SubscriptionHelper.validate(r0)
                if (r0 == 0) goto L_0x003b
            L_0x0007:
                r0 = r8
                long r0 = r0.get()
                r11 = r0
                r0 = r11
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0015
                goto L_0x003b
            L_0x0015:
                r0 = r11
                r1 = r9
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 > 0) goto L_0x0021
                r0 = r11
                r13 = r0
                goto L_0x0024
            L_0x0021:
                r0 = r9
                r13 = r0
            L_0x0024:
                r0 = r8
                r1 = r11
                r2 = r11
                r3 = r13
                long r2 = r2 - r3
                boolean r0 = r0.compareAndSet(r1, r2)
                if (r0 == 0) goto L_0x0007
                r0 = r8
                org.reactivestreams.Subscription r0 = r0.f16145h
                r1 = r13
                r0.request(r1)
            L_0x003b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableLimit.LimitSubscriber.request(long):void");
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new LimitSubscriber(subscriber, this.f16142h));
    }
}
