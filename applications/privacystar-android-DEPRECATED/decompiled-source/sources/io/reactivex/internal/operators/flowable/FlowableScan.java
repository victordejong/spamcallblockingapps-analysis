package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableScan.class */
public final class FlowableScan<T> extends AbstractFlowableWithUpstream<T, T> {
    final BiFunction<T, T, T> accumulator;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber.class */
    static final class ScanSubscriber<T> implements FlowableSubscriber<T>, Subscription {
        final BiFunction<T, T, T> accumulator;
        final Subscriber<? super T> actual;
        boolean done;

        /* renamed from: s */
        Subscription f457s;
        T value;

        ScanSubscriber(Subscriber<? super T> subscriber, BiFunction<T, T, T> biFunction) {
            this.actual = subscriber;
            this.accumulator = biFunction;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f457s.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.done) {
                this.done = true;
                this.actual.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done) {
                RxJavaPlugins.onError(th);
                return;
            }
            this.done = true;
            this.actual.onError(th);
        }

        /* JADX WARN: Type inference failed for: r0v14, types: [T, java.lang.Object] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // org.reactivestreams.Subscriber
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onNext(T r5) {
            /*
                r4 = this;
                r0 = r4
                boolean r0 = r0.done
                if (r0 == 0) goto L_0x0008
                return
            L_0x0008:
                r0 = r4
                org.reactivestreams.Subscriber<? super T> r0 = r0.actual
                r6 = r0
                r0 = r4
                T r0 = r0.value
                r7 = r0
                r0 = r7
                if (r0 != 0) goto L_0x0025
                r0 = r4
                r1 = r5
                r0.value = r1
                r0 = r6
                r1 = r5
                r0.onNext(r1)
                goto L_0x0042
            L_0x0025:
                r0 = r4
                io.reactivex.functions.BiFunction<T, T, T> r0 = r0.accumulator     // Catch: Throwable -> 0x0043
                r1 = r7
                r2 = r5
                java.lang.Object r0 = r0.apply(r1, r2)     // Catch: Throwable -> 0x0043
                java.lang.String r1 = "The value returned by the accumulator is null"
                java.lang.Object r0 = io.reactivex.internal.functions.ObjectHelper.requireNonNull(r0, r1)     // Catch: Throwable -> 0x0043
                r5 = r0
                r0 = r4
                r1 = r5
                r0.value = r1
                r0 = r6
                r1 = r5
                r0.onNext(r1)
            L_0x0042:
                return
            L_0x0043:
                r5 = move-exception
                r0 = r5
                io.reactivex.exceptions.Exceptions.throwIfFatal(r0)
                r0 = r4
                org.reactivestreams.Subscription r0 = r0.f457s
                r0.cancel()
                r0 = r4
                r1 = r5
                r0.onError(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableScan.ScanSubscriber.onNext(java.lang.Object):void");
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f457s, subscription)) {
                this.f457s = subscription;
                this.actual.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f457s.request(j);
        }
    }

    public FlowableScan(Flowable<T> flowable, BiFunction<T, T, T> biFunction) {
        super(flowable);
        this.accumulator = biFunction;
    }

    @Override // io.reactivex.Flowable
    protected void subscribeActual(Subscriber<? super T> subscriber) {
        this.source.subscribe((FlowableSubscriber) new ScanSubscriber(subscriber, this.accumulator));
    }
}
