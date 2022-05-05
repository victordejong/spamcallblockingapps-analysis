package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRangeLong.class */
public final class FlowableRangeLong extends Flowable<Long> {

    /* renamed from: g */
    final long f16336g;

    /* renamed from: h */
    final long f16337h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription.class */
    static abstract class BaseRangeSubscription extends BasicQueueSubscription<Long> {
        private static final long serialVersionUID = -2252972430506210021L;

        /* renamed from: f */
        final long f16338f;

        /* renamed from: g */
        long f16339g;

        /* renamed from: h */
        volatile boolean f16340h;

        BaseRangeSubscription(long j, long j2) {
            this.f16339g = j;
            this.f16338f = j2;
        }

        /* renamed from: a */
        abstract void mo4125a();

        @Nullable
        /* renamed from: b */
        public final Long poll() {
            long j = this.f16339g;
            if (j == this.f16338f) {
                return null;
            }
            this.f16339g = 1 + j;
            return Long.valueOf(j);
        }

        /* renamed from: c */
        abstract void mo4124c(long j);

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.f16340h = true;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final void clear() {
            this.f16339g = this.f16338f;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final boolean isEmpty() {
            return this.f16339g == this.f16338f;
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            if (SubscriptionHelper.validate(j) && BackpressureHelper.m3454a(this, j) == 0) {
                if (j == Long.MAX_VALUE) {
                    mo4125a();
                } else {
                    mo4124c(j);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public final int requestFusion(int i) {
            return i & 1;
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription.class */
    static final class RangeConditionalSubscription extends BaseRangeSubscription {
        private static final long serialVersionUID = 2587302975077663557L;

        /* renamed from: i */
        final ConditionalSubscriber<? super Long> f16341i;

        RangeConditionalSubscription(ConditionalSubscriber<? super Long> conditionalSubscriber, long j, long j2) {
            super(j, j2);
            this.f16341i = conditionalSubscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableRangeLong.BaseRangeSubscription
        /* renamed from: a */
        void mo4125a() {
            long j = this.f16338f;
            ConditionalSubscriber<? super Long> conditionalSubscriber = this.f16341i;
            for (long j2 = this.f16339g; j2 != j; j2++) {
                if (!this.f16340h) {
                    conditionalSubscriber.mo3605p(Long.valueOf(j2));
                } else {
                    return;
                }
            }
            if (!this.f16340h) {
                conditionalSubscriber.onComplete();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v15, types: [long] */
        /* JADX WARN: Type inference failed for: r0v21, types: [long] */
        /* JADX WARN: Type inference failed for: r13v0 */
        /* JADX WARN: Type inference failed for: r13v1, types: [long] */
        /* JADX WARN: Type inference failed for: r13v2 */
        /* JADX WARN: Type inference failed for: r13v4 */
        /* JADX WARN: Type inference failed for: r15v1 */
        /* JADX WARN: Type inference failed for: r15v4 */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r6v4 */
        /* JADX WARN: Type inference failed for: r6v5 */
        /* JADX WARN: Type inference failed for: r6v9 */
        /* JADX WARN: Unknown variable types count: 4 */
        @Override // io.reactivex.internal.operators.flowable.FlowableRangeLong.BaseRangeSubscription
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void mo4124c(long r6) {
            /*
                r5 = this;
                r0 = r5
                long r0 = r0.f16338f
                r8 = r0
                r0 = r5
                long r0 = r0.f16339g
                r10 = r0
                r0 = r5
                io.reactivex.internal.fuseable.ConditionalSubscriber<? super java.lang.Long> r0 = r0.f16341i
                r12 = r0
            L_0x0011:
                r0 = 0
                r13 = r0
            L_0x0014:
                r0 = r13
                r1 = r6
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x0050
                r0 = r10
                r1 = r8
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x0050
                r0 = r5
                boolean r0 = r0.f16340h
                if (r0 == 0) goto L_0x002a
                return
            L_0x002a:
                r0 = r13
                r15 = r0
                r0 = r12
                r1 = r10
                java.lang.Long r1 = java.lang.Long.valueOf(r1)
                boolean r0 = r0.mo3605p(r1)
                if (r0 == 0) goto L_0x0043
                r0 = r13
                r1 = 1
                long r0 = r0 + r1
                r15 = r0
            L_0x0043:
                r0 = r10
                r1 = 1
                long r0 = r0 + r1
                r10 = r0
                r0 = r15
                r13 = r0
                goto L_0x0014
            L_0x0050:
                r0 = r10
                r1 = r8
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0066
                r0 = r5
                boolean r0 = r0.f16340h
                if (r0 != 0) goto L_0x0065
                r0 = r12
                r0.onComplete()
            L_0x0065:
                return
            L_0x0066:
                r0 = r5
                long r0 = r0.get()
                r15 = r0
                r0 = r15
                r6 = r0
                r0 = r13
                r1 = r15
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0014
                r0 = r5
                r1 = r10
                r0.f16339g = r1
                r0 = r5
                r1 = r13
                long r1 = -r1
                long r0 = r0.addAndGet(r1)
                r13 = r0
                r0 = r13
                r6 = r0
                r0 = r13
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0011
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableRangeLong.RangeConditionalSubscription.mo4124c(long):void");
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription.class */
    static final class RangeSubscription extends BaseRangeSubscription {
        private static final long serialVersionUID = 2587302975077663557L;

        /* renamed from: i */
        final Subscriber<? super Long> f16342i;

        RangeSubscription(Subscriber<? super Long> subscriber, long j, long j2) {
            super(j, j2);
            this.f16342i = subscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableRangeLong.BaseRangeSubscription
        /* renamed from: a */
        void mo4125a() {
            long j = this.f16338f;
            Subscriber<? super Long> subscriber = this.f16342i;
            for (long j2 = this.f16339g; j2 != j; j2++) {
                if (!this.f16340h) {
                    subscriber.onNext(Long.valueOf(j2));
                } else {
                    return;
                }
            }
            if (!this.f16340h) {
                subscriber.onComplete();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v15, types: [long] */
        /* JADX WARN: Type inference failed for: r0v21, types: [long] */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r6v4 */
        /* JADX WARN: Type inference failed for: r6v5 */
        /* JADX WARN: Type inference failed for: r6v9 */
        /* JADX WARN: Unknown variable types count: 3 */
        @Override // io.reactivex.internal.operators.flowable.FlowableRangeLong.BaseRangeSubscription
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void mo4124c(long r6) {
            /*
                r5 = this;
                r0 = r5
                long r0 = r0.f16338f
                r8 = r0
                r0 = r5
                long r0 = r0.f16339g
                r10 = r0
                r0 = r5
                org.reactivestreams.Subscriber<? super java.lang.Long> r0 = r0.f16342i
                r12 = r0
            L_0x0011:
                r0 = 0
                r13 = r0
            L_0x0014:
                r0 = r13
                r1 = r6
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x0045
                r0 = r10
                r1 = r8
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x0045
                r0 = r5
                boolean r0 = r0.f16340h
                if (r0 == 0) goto L_0x002a
                return
            L_0x002a:
                r0 = r12
                r1 = r10
                java.lang.Long r1 = java.lang.Long.valueOf(r1)
                r0.onNext(r1)
                r0 = r13
                r1 = 1
                long r0 = r0 + r1
                r13 = r0
                r0 = r10
                r1 = 1
                long r0 = r0 + r1
                r10 = r0
                goto L_0x0014
            L_0x0045:
                r0 = r10
                r1 = r8
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x005b
                r0 = r5
                boolean r0 = r0.f16340h
                if (r0 != 0) goto L_0x005a
                r0 = r12
                r0.onComplete()
            L_0x005a:
                return
            L_0x005b:
                r0 = r5
                long r0 = r0.get()
                r15 = r0
                r0 = r15
                r6 = r0
                r0 = r13
                r1 = r15
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0014
                r0 = r5
                r1 = r10
                r0.f16339g = r1
                r0 = r5
                r1 = r13
                long r1 = -r1
                long r0 = r0.addAndGet(r1)
                r13 = r0
                r0 = r13
                r6 = r0
                r0 = r13
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0011
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableRangeLong.RangeSubscription.mo4124c(long):void");
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super Long> subscriber) {
        if (subscriber instanceof ConditionalSubscriber) {
            subscriber.onSubscribe(new RangeConditionalSubscription((ConditionalSubscriber) subscriber, this.f16336g, this.f16337h));
        } else {
            subscriber.onSubscribe(new RangeSubscription(subscriber, this.f16336g, this.f16337h));
        }
    }
}
