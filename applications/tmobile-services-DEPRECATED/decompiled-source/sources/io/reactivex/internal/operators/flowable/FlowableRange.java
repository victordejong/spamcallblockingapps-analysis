package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRange.class */
public final class FlowableRange extends Flowable<Integer> {

    /* renamed from: g */
    final int f16329g;

    /* renamed from: h */
    final int f16330h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription.class */
    static abstract class BaseRangeSubscription extends BasicQueueSubscription<Integer> {
        private static final long serialVersionUID = -2252972430506210021L;

        /* renamed from: f */
        final int f16331f;

        /* renamed from: g */
        int f16332g;

        /* renamed from: h */
        volatile boolean f16333h;

        BaseRangeSubscription(int i, int i2) {
            this.f16332g = i;
            this.f16331f = i2;
        }

        /* renamed from: a */
        abstract void mo4128a();

        @Nullable
        /* renamed from: b */
        public final Integer poll() {
            int i = this.f16332g;
            if (i == this.f16331f) {
                return null;
            }
            this.f16332g = i + 1;
            return Integer.valueOf(i);
        }

        /* renamed from: c */
        abstract void mo4127c(long j);

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.f16333h = true;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final void clear() {
            this.f16332g = this.f16331f;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final boolean isEmpty() {
            return this.f16332g == this.f16331f;
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            if (SubscriptionHelper.validate(j) && BackpressureHelper.m3454a(this, j) == 0) {
                if (j == Long.MAX_VALUE) {
                    mo4128a();
                } else {
                    mo4127c(j);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public final int requestFusion(int i) {
            return i & 1;
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription.class */
    static final class RangeConditionalSubscription extends BaseRangeSubscription {
        private static final long serialVersionUID = 2587302975077663557L;

        /* renamed from: i */
        final ConditionalSubscriber<? super Integer> f16334i;

        RangeConditionalSubscription(ConditionalSubscriber<? super Integer> conditionalSubscriber, int i, int i2) {
            super(i, i2);
            this.f16334i = conditionalSubscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableRange.BaseRangeSubscription
        /* renamed from: a */
        void mo4128a() {
            int i = this.f16331f;
            ConditionalSubscriber<? super Integer> conditionalSubscriber = this.f16334i;
            for (int i2 = this.f16332g; i2 != i; i2++) {
                if (!this.f16333h) {
                    conditionalSubscriber.mo3605p(Integer.valueOf(i2));
                } else {
                    return;
                }
            }
            if (!this.f16333h) {
                conditionalSubscriber.onComplete();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v14, types: [long] */
        /* JADX WARN: Type inference failed for: r0v20, types: [long] */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1, types: [long] */
        /* JADX WARN: Type inference failed for: r11v2 */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r13v1 */
        /* JADX WARN: Type inference failed for: r13v4 */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r6v4 */
        /* JADX WARN: Type inference failed for: r6v5 */
        /* JADX WARN: Type inference failed for: r6v9 */
        /* JADX WARN: Unknown variable types count: 4 */
        @Override // io.reactivex.internal.operators.flowable.FlowableRange.BaseRangeSubscription
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void mo4127c(long r6) {
            /*
                r5 = this;
                r0 = r5
                int r0 = r0.f16331f
                r8 = r0
                r0 = r5
                int r0 = r0.f16332g
                r9 = r0
                r0 = r5
                io.reactivex.internal.fuseable.ConditionalSubscriber<? super java.lang.Integer> r0 = r0.f16334i
                r10 = r0
            L_0x0011:
                r0 = 0
                r11 = r0
            L_0x0014:
                r0 = r11
                r1 = r6
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x004c
                r0 = r9
                r1 = r8
                if (r0 == r1) goto L_0x004c
                r0 = r5
                boolean r0 = r0.f16333h
                if (r0 == 0) goto L_0x0029
                return
            L_0x0029:
                r0 = r11
                r13 = r0
                r0 = r10
                r1 = r9
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
                boolean r0 = r0.mo3605p(r1)
                if (r0 == 0) goto L_0x0042
                r0 = r11
                r1 = 1
                long r0 = r0 + r1
                r13 = r0
            L_0x0042:
                int r9 = r9 + 1
                r0 = r13
                r11 = r0
                goto L_0x0014
            L_0x004c:
                r0 = r9
                r1 = r8
                if (r0 != r1) goto L_0x0061
                r0 = r5
                boolean r0 = r0.f16333h
                if (r0 != 0) goto L_0x0060
                r0 = r10
                r0.onComplete()
            L_0x0060:
                return
            L_0x0061:
                r0 = r5
                long r0 = r0.get()
                r13 = r0
                r0 = r13
                r6 = r0
                r0 = r11
                r1 = r13
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0014
                r0 = r5
                r1 = r9
                r0.f16332g = r1
                r0 = r5
                r1 = r11
                long r1 = -r1
                long r0 = r0.addAndGet(r1)
                r11 = r0
                r0 = r11
                r6 = r0
                r0 = r11
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0011
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableRange.RangeConditionalSubscription.mo4127c(long):void");
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription.class */
    static final class RangeSubscription extends BaseRangeSubscription {
        private static final long serialVersionUID = 2587302975077663557L;

        /* renamed from: i */
        final Subscriber<? super Integer> f16335i;

        RangeSubscription(Subscriber<? super Integer> subscriber, int i, int i2) {
            super(i, i2);
            this.f16335i = subscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableRange.BaseRangeSubscription
        /* renamed from: a */
        void mo4128a() {
            int i = this.f16331f;
            Subscriber<? super Integer> subscriber = this.f16335i;
            for (int i2 = this.f16332g; i2 != i; i2++) {
                if (!this.f16333h) {
                    subscriber.onNext(Integer.valueOf(i2));
                } else {
                    return;
                }
            }
            if (!this.f16333h) {
                subscriber.onComplete();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v14, types: [long] */
        /* JADX WARN: Type inference failed for: r0v20, types: [long] */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r6v4 */
        /* JADX WARN: Type inference failed for: r6v5 */
        /* JADX WARN: Type inference failed for: r6v9 */
        /* JADX WARN: Unknown variable types count: 3 */
        @Override // io.reactivex.internal.operators.flowable.FlowableRange.BaseRangeSubscription
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void mo4127c(long r6) {
            /*
                r5 = this;
                r0 = r5
                int r0 = r0.f16331f
                r8 = r0
                r0 = r5
                int r0 = r0.f16332g
                r9 = r0
                r0 = r5
                org.reactivestreams.Subscriber<? super java.lang.Integer> r0 = r0.f16335i
                r10 = r0
            L_0x0011:
                r0 = 0
                r11 = r0
            L_0x0014:
                r0 = r11
                r1 = r6
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x0041
                r0 = r9
                r1 = r8
                if (r0 == r1) goto L_0x0041
                r0 = r5
                boolean r0 = r0.f16333h
                if (r0 == 0) goto L_0x0029
                return
            L_0x0029:
                r0 = r10
                r1 = r9
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
                r0.onNext(r1)
                r0 = r11
                r1 = 1
                long r0 = r0 + r1
                r11 = r0
                int r9 = r9 + 1
                goto L_0x0014
            L_0x0041:
                r0 = r9
                r1 = r8
                if (r0 != r1) goto L_0x0056
                r0 = r5
                boolean r0 = r0.f16333h
                if (r0 != 0) goto L_0x0055
                r0 = r10
                r0.onComplete()
            L_0x0055:
                return
            L_0x0056:
                r0 = r5
                long r0 = r0.get()
                r13 = r0
                r0 = r13
                r6 = r0
                r0 = r11
                r1 = r13
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0014
                r0 = r5
                r1 = r9
                r0.f16332g = r1
                r0 = r5
                r1 = r11
                long r1 = -r1
                long r0 = r0.addAndGet(r1)
                r11 = r0
                r0 = r11
                r6 = r0
                r0 = r11
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0011
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableRange.RangeSubscription.mo4127c(long):void");
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super Integer> subscriber) {
        if (subscriber instanceof ConditionalSubscriber) {
            subscriber.onSubscribe(new RangeConditionalSubscription((ConditionalSubscriber) subscriber, this.f16329g, this.f16330h));
        } else {
            subscriber.onSubscribe(new RangeSubscription(subscriber, this.f16329g, this.f16330h));
        }
    }
}
