package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromArray.class */
public final class FlowableFromArray<T> extends Flowable<T> {

    /* renamed from: g */
    final T[] f15965g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription.class */
    static final class ArrayConditionalSubscription<T> extends BaseArraySubscription<T> {
        private static final long serialVersionUID = 2587302975077663557L;

        /* renamed from: i */
        final ConditionalSubscriber<? super T> f15966i;

        ArrayConditionalSubscription(ConditionalSubscriber<? super T> conditionalSubscriber, T[] tArr) {
            super(tArr);
            this.f15966i = conditionalSubscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableFromArray.BaseArraySubscription
        /* renamed from: a */
        void mo4217a() {
            T[] tArr = this.f15968f;
            int length = tArr.length;
            ConditionalSubscriber<? super T> conditionalSubscriber = this.f15966i;
            for (int i = this.f15969g; i != length; i++) {
                if (!this.f15970h) {
                    T t = tArr[i];
                    if (t == null) {
                        conditionalSubscriber.onError(new NullPointerException("The element at index " + i + " is null"));
                        return;
                    }
                    conditionalSubscriber.mo3605p(t);
                } else {
                    return;
                }
            }
            if (!this.f15970h) {
                conditionalSubscriber.onComplete();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v16, types: [long] */
        /* JADX WARN: Type inference failed for: r0v22, types: [long] */
        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v2 */
        /* JADX WARN: Type inference failed for: r12v4 */
        /* JADX WARN: Type inference failed for: r15v1 */
        /* JADX WARN: Type inference failed for: r15v4 */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r6v4 */
        /* JADX WARN: Type inference failed for: r6v5 */
        /* JADX WARN: Type inference failed for: r6v9 */
        /* JADX WARN: Unknown variable types count: 4 */
        @Override // io.reactivex.internal.operators.flowable.FlowableFromArray.BaseArraySubscription
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void mo4216b(long r6) {
            /*
                r5 = this;
                r0 = r5
                T[] r0 = r0.f15968f
                r8 = r0
                r0 = r8
                int r0 = r0.length
                r9 = r0
                r0 = r5
                int r0 = r0.f15969g
                r10 = r0
                r0 = r5
                io.reactivex.internal.fuseable.ConditionalSubscriber<? super T> r0 = r0.f15966i
                r11 = r0
            L_0x0015:
                r0 = 0
                r12 = r0
            L_0x0018:
                r0 = r12
                r1 = r6
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x008e
                r0 = r10
                r1 = r9
                if (r0 == r1) goto L_0x008e
                r0 = r5
                boolean r0 = r0.f15970h
                if (r0 == 0) goto L_0x002e
                return
            L_0x002e:
                r0 = r8
                r1 = r10
                r0 = r0[r1]
                r14 = r0
                r0 = r14
                if (r0 != 0) goto L_0x006e
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r1.<init>()
                r14 = r0
                r0 = r14
                java.lang.String r1 = "The element at index "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r14
                r1 = r10
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r14
                java.lang.String r1 = " is null"
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r11
                java.lang.NullPointerException r1 = new java.lang.NullPointerException
                r2 = r1
                r3 = r14
                java.lang.String r3 = r3.toString()
                r2.<init>(r3)
                r0.onError(r1)
                return
            L_0x006e:
                r0 = r12
                r15 = r0
                r0 = r11
                r1 = r14
                boolean r0 = r0.mo3605p(r1)
                if (r0 == 0) goto L_0x0084
                r0 = r12
                r1 = 1
                long r0 = r0 + r1
                r15 = r0
            L_0x0084:
                int r10 = r10 + 1
                r0 = r15
                r12 = r0
                goto L_0x0018
            L_0x008e:
                r0 = r10
                r1 = r9
                if (r0 != r1) goto L_0x00a4
                r0 = r5
                boolean r0 = r0.f15970h
                if (r0 != 0) goto L_0x00a3
                r0 = r11
                r0.onComplete()
            L_0x00a3:
                return
            L_0x00a4:
                r0 = r5
                long r0 = r0.get()
                r15 = r0
                r0 = r15
                r6 = r0
                r0 = r12
                r1 = r15
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0018
                r0 = r5
                r1 = r10
                r0.f15969g = r1
                r0 = r5
                r1 = r12
                long r1 = -r1
                long r0 = r0.addAndGet(r1)
                r12 = r0
                r0 = r12
                r6 = r0
                r0 = r12
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0015
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableFromArray.ArrayConditionalSubscription.mo4216b(long):void");
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription.class */
    static final class ArraySubscription<T> extends BaseArraySubscription<T> {
        private static final long serialVersionUID = 2587302975077663557L;

        /* renamed from: i */
        final Subscriber<? super T> f15967i;

        ArraySubscription(Subscriber<? super T> subscriber, T[] tArr) {
            super(tArr);
            this.f15967i = subscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableFromArray.BaseArraySubscription
        /* renamed from: a */
        void mo4217a() {
            T[] tArr = this.f15968f;
            int length = tArr.length;
            Subscriber<? super T> subscriber = this.f15967i;
            for (int i = this.f15969g; i != length; i++) {
                if (!this.f15970h) {
                    T t = tArr[i];
                    if (t == null) {
                        subscriber.onError(new NullPointerException("The element at index " + i + " is null"));
                        return;
                    }
                    subscriber.onNext(t);
                } else {
                    return;
                }
            }
            if (!this.f15970h) {
                subscriber.onComplete();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v16, types: [long] */
        /* JADX WARN: Type inference failed for: r0v22, types: [long] */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r6v4 */
        /* JADX WARN: Type inference failed for: r6v5 */
        /* JADX WARN: Type inference failed for: r6v9 */
        /* JADX WARN: Unknown variable types count: 3 */
        @Override // io.reactivex.internal.operators.flowable.FlowableFromArray.BaseArraySubscription
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void mo4216b(long r6) {
            /*
                r5 = this;
                r0 = r5
                T[] r0 = r0.f15968f
                r8 = r0
                r0 = r8
                int r0 = r0.length
                r9 = r0
                r0 = r5
                int r0 = r0.f15969g
                r10 = r0
                r0 = r5
                org.reactivestreams.Subscriber<? super T> r0 = r0.f15967i
                r11 = r0
            L_0x0015:
                r0 = 0
                r12 = r0
            L_0x0018:
                r0 = r12
                r1 = r6
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x007e
                r0 = r10
                r1 = r9
                if (r0 == r1) goto L_0x007e
                r0 = r5
                boolean r0 = r0.f15970h
                if (r0 == 0) goto L_0x002e
                return
            L_0x002e:
                r0 = r8
                r1 = r10
                r0 = r0[r1]
                r14 = r0
                r0 = r14
                if (r0 != 0) goto L_0x0069
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r1.<init>()
                r8 = r0
                r0 = r8
                java.lang.String r1 = "The element at index "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                r1 = r10
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                java.lang.String r1 = " is null"
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r11
                java.lang.NullPointerException r1 = new java.lang.NullPointerException
                r2 = r1
                r3 = r8
                java.lang.String r3 = r3.toString()
                r2.<init>(r3)
                r0.onError(r1)
                return
            L_0x0069:
                r0 = r11
                r1 = r14
                r0.onNext(r1)
                r0 = r12
                r1 = 1
                long r0 = r0 + r1
                r12 = r0
                int r10 = r10 + 1
                goto L_0x0018
            L_0x007e:
                r0 = r10
                r1 = r9
                if (r0 != r1) goto L_0x0094
                r0 = r5
                boolean r0 = r0.f15970h
                if (r0 != 0) goto L_0x0093
                r0 = r11
                r0.onComplete()
            L_0x0093:
                return
            L_0x0094:
                r0 = r5
                long r0 = r0.get()
                r15 = r0
                r0 = r15
                r6 = r0
                r0 = r12
                r1 = r15
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0018
                r0 = r5
                r1 = r10
                r0.f15969g = r1
                r0 = r5
                r1 = r12
                long r1 = -r1
                long r0 = r0.addAndGet(r1)
                r12 = r0
                r0 = r12
                r6 = r0
                r0 = r12
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0015
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableFromArray.ArraySubscription.mo4216b(long):void");
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription.class */
    static abstract class BaseArraySubscription<T> extends BasicQueueSubscription<T> {
        private static final long serialVersionUID = -2252972430506210021L;

        /* renamed from: f */
        final T[] f15968f;

        /* renamed from: g */
        int f15969g;

        /* renamed from: h */
        volatile boolean f15970h;

        BaseArraySubscription(T[] tArr) {
            this.f15968f = tArr;
        }

        /* renamed from: a */
        abstract void mo4217a();

        /* renamed from: b */
        abstract void mo4216b(long j);

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.f15970h = true;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final void clear() {
            this.f15969g = this.f15968f.length;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final boolean isEmpty() {
            return this.f15969g == this.f15968f.length;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public final T poll() {
            int i = this.f15969g;
            T[] tArr = this.f15968f;
            if (i == tArr.length) {
                return null;
            }
            this.f15969g = i + 1;
            T t = tArr[i];
            ObjectHelper.m4363e(t, "array element is null");
            return t;
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            if (SubscriptionHelper.validate(j) && BackpressureHelper.m3454a(this, j) == 0) {
                if (j == Long.MAX_VALUE) {
                    mo4217a();
                } else {
                    mo4216b(j);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public final int requestFusion(int i) {
            return i & 1;
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super T> subscriber) {
        if (subscriber instanceof ConditionalSubscriber) {
            subscriber.onSubscribe(new ArrayConditionalSubscription((ConditionalSubscriber) subscriber, this.f15965g));
        } else {
            subscriber.onSubscribe(new ArraySubscription(subscriber, this.f15965g));
        }
    }
}
