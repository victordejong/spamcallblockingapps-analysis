package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import org.reactivestreams.Subscriber;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRange.class */
public final class FlowableRange extends Flowable<Integer> {
    final int end;
    final int start;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription.class */
    static abstract class BaseRangeSubscription extends BasicQueueSubscription<Integer> {
        private static final long serialVersionUID = -2252972430506210021L;
        volatile boolean cancelled;
        final int end;
        int index;

        BaseRangeSubscription(int i, int i2) {
            this.index = i;
            this.end = i2;
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
        public final Integer poll() {
            int i = this.index;
            if (i == this.end) {
                return null;
            }
            this.index = i + 1;
            return Integer.valueOf(i);
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

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription.class */
    static final class RangeConditionalSubscription extends BaseRangeSubscription {
        private static final long serialVersionUID = 2587302975077663557L;
        final ConditionalSubscriber<? super Integer> actual;

        RangeConditionalSubscription(ConditionalSubscriber<? super Integer> conditionalSubscriber, int i, int i2) {
            super(i, i2);
            this.actual = conditionalSubscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableRange.BaseRangeSubscription
        void fastPath() {
            int i = this.end;
            ConditionalSubscriber<? super Integer> conditionalSubscriber = this.actual;
            for (int i2 = this.index; i2 != i; i2++) {
                if (!this.cancelled) {
                    conditionalSubscriber.tryOnNext(Integer.valueOf(i2));
                } else {
                    return;
                }
            }
            if (!this.cancelled) {
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
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void slowPath(long r6) {
            /*
                r5 = this;
                r0 = r5
                int r0 = r0.end
                r8 = r0
                r0 = r5
                int r0 = r0.index
                r9 = r0
                r0 = r5
                io.reactivex.internal.fuseable.ConditionalSubscriber<? super java.lang.Integer> r0 = r0.actual
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
                boolean r0 = r0.cancelled
                if (r0 == 0) goto L_0x0029
                return
            L_0x0029:
                r0 = r11
                r13 = r0
                r0 = r10
                r1 = r9
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
                boolean r0 = r0.tryOnNext(r1)
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
                boolean r0 = r0.cancelled
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
                r0.index = r1
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
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableRange.RangeConditionalSubscription.slowPath(long):void");
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription.class */
    static final class RangeSubscription extends BaseRangeSubscription {
        private static final long serialVersionUID = 2587302975077663557L;
        final Subscriber<? super Integer> actual;

        RangeSubscription(Subscriber<? super Integer> subscriber, int i, int i2) {
            super(i, i2);
            this.actual = subscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableRange.BaseRangeSubscription
        void fastPath() {
            int i = this.end;
            Subscriber<? super Integer> subscriber = this.actual;
            for (int i2 = this.index; i2 != i; i2++) {
                if (!this.cancelled) {
                    subscriber.onNext(Integer.valueOf(i2));
                } else {
                    return;
                }
            }
            if (!this.cancelled) {
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
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void slowPath(long r6) {
            /*
                r5 = this;
                r0 = r5
                int r0 = r0.end
                r8 = r0
                r0 = r5
                int r0 = r0.index
                r9 = r0
                r0 = r5
                org.reactivestreams.Subscriber<? super java.lang.Integer> r0 = r0.actual
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
                boolean r0 = r0.cancelled
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
                boolean r0 = r0.cancelled
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
                r0.index = r1
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
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableRange.RangeSubscription.slowPath(long):void");
        }
    }

    public FlowableRange(int i, int i2) {
        this.start = i;
        this.end = i + i2;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(Subscriber<? super Integer> subscriber) {
        if (subscriber instanceof ConditionalSubscriber) {
            subscriber.onSubscribe(new RangeConditionalSubscription((ConditionalSubscriber) subscriber, this.start, this.end));
        } else {
            subscriber.onSubscribe(new RangeSubscription(subscriber, this.start, this.end));
        }
    }
}
