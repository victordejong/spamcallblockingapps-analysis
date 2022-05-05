package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import org.reactivestreams.Subscriber;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRangeLong.class */
public final class FlowableRangeLong extends Flowable<Long> {
    final long end;
    final long start;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription.class */
    static abstract class BaseRangeSubscription extends BasicQueueSubscription<Long> {
        private static final long serialVersionUID = -2252972430506210021L;
        volatile boolean cancelled;
        final long end;
        long index;

        BaseRangeSubscription(long j, long j2) {
            this.index = j;
            this.end = j2;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.cancelled = true;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final void clear() {
            this.index = this.end;
        }

        abstract void fastPath();

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final boolean isEmpty() {
            return this.index == this.end;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public final Long poll() {
            long j = this.index;
            if (j == this.end) {
                return null;
            }
            this.index = 1 + j;
            return Long.valueOf(j);
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            if (SubscriptionHelper.validate(j) && BackpressureHelper.add(this, j) == 0) {
                if (j == Long.MAX_VALUE) {
                    fastPath();
                } else {
                    slowPath(j);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public final int requestFusion(int i) {
            return i & 1;
        }

        abstract void slowPath(long j);
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription.class */
    static final class RangeConditionalSubscription extends BaseRangeSubscription {
        private static final long serialVersionUID = 2587302975077663557L;
        final ConditionalSubscriber<? super Long> actual;

        RangeConditionalSubscription(ConditionalSubscriber<? super Long> conditionalSubscriber, long j, long j2) {
            super(j, j2);
            this.actual = conditionalSubscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableRangeLong.BaseRangeSubscription
        void fastPath() {
            long j = this.end;
            ConditionalSubscriber<? super Long> conditionalSubscriber = this.actual;
            for (long j2 = this.index; j2 != j; j2++) {
                if (!this.cancelled) {
                    conditionalSubscriber.tryOnNext(Long.valueOf(j2));
                } else {
                    return;
                }
            }
            if (!this.cancelled) {
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
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void slowPath(long r6) {
            /*
                r5 = this;
                r0 = r5
                long r0 = r0.end
                r8 = r0
                r0 = r5
                long r0 = r0.index
                r10 = r0
                r0 = r5
                io.reactivex.internal.fuseable.ConditionalSubscriber<? super java.lang.Long> r0 = r0.actual
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
                boolean r0 = r0.cancelled
                if (r0 == 0) goto L_0x002a
                return
            L_0x002a:
                r0 = r13
                r15 = r0
                r0 = r12
                r1 = r10
                java.lang.Long r1 = java.lang.Long.valueOf(r1)
                boolean r0 = r0.tryOnNext(r1)
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
                boolean r0 = r0.cancelled
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
                r0.index = r1
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
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableRangeLong.RangeConditionalSubscription.slowPath(long):void");
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription.class */
    static final class RangeSubscription extends BaseRangeSubscription {
        private static final long serialVersionUID = 2587302975077663557L;
        final Subscriber<? super Long> actual;

        RangeSubscription(Subscriber<? super Long> subscriber, long j, long j2) {
            super(j, j2);
            this.actual = subscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableRangeLong.BaseRangeSubscription
        void fastPath() {
            long j = this.end;
            Subscriber<? super Long> subscriber = this.actual;
            for (long j2 = this.index; j2 != j; j2++) {
                if (!this.cancelled) {
                    subscriber.onNext(Long.valueOf(j2));
                } else {
                    return;
                }
            }
            if (!this.cancelled) {
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
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void slowPath(long r6) {
            /*
                r5 = this;
                r0 = r5
                long r0 = r0.end
                r8 = r0
                r0 = r5
                long r0 = r0.index
                r10 = r0
                r0 = r5
                org.reactivestreams.Subscriber<? super java.lang.Long> r0 = r0.actual
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
                boolean r0 = r0.cancelled
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
                boolean r0 = r0.cancelled
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
                r0.index = r1
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
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableRangeLong.RangeSubscription.slowPath(long):void");
        }
    }

    public FlowableRangeLong(long j, long j2) {
        this.start = j;
        this.end = j + j2;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(Subscriber<? super Long> subscriber) {
        if (subscriber instanceof ConditionalSubscriber) {
            subscriber.onSubscribe(new RangeConditionalSubscription((ConditionalSubscriber) subscriber, this.start, this.end));
        } else {
            subscriber.onSubscribe(new RangeSubscription(subscriber, this.start, this.end));
        }
    }
}
