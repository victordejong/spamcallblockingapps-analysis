package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.annotations.Nullable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import java.util.Iterator;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromIterable.class */
public final class FlowableFromIterable<T> extends Flowable<T> {

    /* renamed from: g */
    final Iterable<? extends T> f15975g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription.class */
    static abstract class BaseRangeSubscription<T> extends BasicQueueSubscription<T> {
        private static final long serialVersionUID = -2252972430506210021L;

        /* renamed from: f */
        Iterator<? extends T> f15976f;

        /* renamed from: g */
        volatile boolean f15977g;

        /* renamed from: h */
        boolean f15978h;

        BaseRangeSubscription(Iterator<? extends T> it) {
            this.f15976f = it;
        }

        /* renamed from: a */
        abstract void mo4214a();

        /* renamed from: b */
        abstract void mo4213b(long j);

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.f15977g = true;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final void clear() {
            this.f15976f = null;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final boolean isEmpty() {
            Iterator<? extends T> it = this.f15976f;
            return it == null || !it.hasNext();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public final T poll() {
            Iterator<? extends T> it = this.f15976f;
            if (it == null) {
                return null;
            }
            if (!this.f15978h) {
                this.f15978h = true;
            } else if (!it.hasNext()) {
                return null;
            }
            T t = (T) this.f15976f.next();
            ObjectHelper.m4363e(t, "Iterator.next() returned a null value");
            return t;
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            if (SubscriptionHelper.validate(j) && BackpressureHelper.m3454a(this, j) == 0) {
                if (j == Long.MAX_VALUE) {
                    mo4214a();
                } else {
                    mo4213b(j);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public final int requestFusion(int i) {
            return i & 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription.class */
    public static final class IteratorConditionalSubscription<T> extends BaseRangeSubscription<T> {
        private static final long serialVersionUID = -6022804456014692607L;

        /* renamed from: i */
        final ConditionalSubscriber<? super T> f15979i;

        IteratorConditionalSubscription(ConditionalSubscriber<? super T> conditionalSubscriber, Iterator<? extends T> it) {
            super(it);
            this.f15979i = conditionalSubscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableFromIterable.BaseRangeSubscription
        /* renamed from: a */
        void mo4214a() {
            Iterator<? extends T> it = this.f15976f;
            ConditionalSubscriber<? super T> conditionalSubscriber = this.f15979i;
            while (!this.f15977g) {
                try {
                    Object obj = (Object) it.next();
                    if (!this.f15977g) {
                        if (obj == 0) {
                            conditionalSubscriber.onError(new NullPointerException("Iterator.next() returned a null value"));
                            return;
                        }
                        conditionalSubscriber.mo3605p(obj);
                        if (!this.f15977g) {
                            try {
                                if (!it.hasNext()) {
                                    if (!this.f15977g) {
                                        conditionalSubscriber.onComplete();
                                        return;
                                    }
                                    return;
                                }
                            } catch (Throwable th) {
                                Exceptions.m4428b(th);
                                conditionalSubscriber.onError(th);
                                return;
                            }
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                } catch (Throwable th2) {
                    Exceptions.m4428b(th2);
                    conditionalSubscriber.onError(th2);
                    return;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v33, types: [long] */
        /* JADX WARN: Type inference failed for: r0v38, types: [long] */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r6v4 */
        /* JADX WARN: Type inference failed for: r6v5 */
        /* JADX WARN: Type inference failed for: r6v9 */
        /* JADX WARN: Unknown variable types count: 3 */
        @Override // io.reactivex.internal.operators.flowable.FlowableFromIterable.BaseRangeSubscription
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void mo4213b(long r6) {
            /*
                r5 = this;
                r0 = r5
                java.util.Iterator<? extends T> r0 = r0.f15976f
                r8 = r0
                r0 = r5
                io.reactivex.internal.fuseable.ConditionalSubscriber<? super T> r0 = r0.f15979i
                r9 = r0
            L_0x000b:
                r0 = 0
                r10 = r0
            L_0x000e:
                r0 = r10
                r1 = r6
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x00a2
                r0 = r5
                boolean r0 = r0.f15977g
                if (r0 == 0) goto L_0x001d
                return
            L_0x001d:
                r0 = r8
                java.lang.Object r0 = r0.next()     // Catch: all -> 0x0091
                r12 = r0
                r0 = r5
                boolean r0 = r0.f15977g
                if (r0 == 0) goto L_0x002d
                return
            L_0x002d:
                r0 = r12
                if (r0 != 0) goto L_0x0043
                r0 = r9
                java.lang.NullPointerException r1 = new java.lang.NullPointerException
                r2 = r1
                java.lang.String r3 = "Iterator.next() returned a null value"
                r2.<init>(r3)
                r0.onError(r1)
                return
            L_0x0043:
                r0 = r9
                r1 = r12
                boolean r0 = r0.mo3605p(r1)
                r13 = r0
                r0 = r5
                boolean r0 = r0.f15977g
                if (r0 == 0) goto L_0x0056
                return
            L_0x0056:
                r0 = r8
                boolean r0 = r0.hasNext()     // Catch: all -> 0x0080
                r14 = r0
                r0 = r14
                if (r0 != 0) goto L_0x0072
                r0 = r5
                boolean r0 = r0.f15977g
                if (r0 != 0) goto L_0x0071
                r0 = r9
                r0.onComplete()
            L_0x0071:
                return
            L_0x0072:
                r0 = r13
                if (r0 == 0) goto L_0x000e
                r0 = r10
                r1 = 1
                long r0 = r0 + r1
                r10 = r0
                goto L_0x000e
            L_0x0080:
                r12 = move-exception
                r0 = r12
                io.reactivex.exceptions.Exceptions.m4428b(r0)
                r0 = r9
                r1 = r12
                r0.onError(r1)
                return
            L_0x0091:
                r12 = move-exception
                r0 = r12
                io.reactivex.exceptions.Exceptions.m4428b(r0)
                r0 = r9
                r1 = r12
                r0.onError(r1)
                return
            L_0x00a2:
                r0 = r5
                long r0 = r0.get()
                r15 = r0
                r0 = r15
                r6 = r0
                r0 = r10
                r1 = r15
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x000e
                r0 = r5
                r1 = r10
                long r1 = -r1
                long r0 = r0.addAndGet(r1)
                r10 = r0
                r0 = r10
                r6 = r0
                r0 = r10
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x000b
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableFromIterable.IteratorConditionalSubscription.mo4213b(long):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription.class */
    public static final class IteratorSubscription<T> extends BaseRangeSubscription<T> {
        private static final long serialVersionUID = -6022804456014692607L;

        /* renamed from: i */
        final Subscriber<? super T> f15980i;

        IteratorSubscription(Subscriber<? super T> subscriber, Iterator<? extends T> it) {
            super(it);
            this.f15980i = subscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableFromIterable.BaseRangeSubscription
        /* renamed from: a */
        void mo4214a() {
            Iterator<? extends T> it = this.f15976f;
            Subscriber<? super T> subscriber = this.f15980i;
            while (!this.f15977g) {
                try {
                    Object obj = (Object) it.next();
                    if (!this.f15977g) {
                        if (obj == 0) {
                            subscriber.onError(new NullPointerException("Iterator.next() returned a null value"));
                            return;
                        }
                        subscriber.onNext(obj);
                        if (!this.f15977g) {
                            try {
                                if (!it.hasNext()) {
                                    if (!this.f15977g) {
                                        subscriber.onComplete();
                                        return;
                                    }
                                    return;
                                }
                            } catch (Throwable th) {
                                Exceptions.m4428b(th);
                                subscriber.onError(th);
                                return;
                            }
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                } catch (Throwable th2) {
                    Exceptions.m4428b(th2);
                    subscriber.onError(th2);
                    return;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v31, types: [long] */
        /* JADX WARN: Type inference failed for: r0v36, types: [long] */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r6v4 */
        /* JADX WARN: Type inference failed for: r6v5 */
        /* JADX WARN: Type inference failed for: r6v9 */
        /* JADX WARN: Unknown variable types count: 3 */
        @Override // io.reactivex.internal.operators.flowable.FlowableFromIterable.BaseRangeSubscription
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void mo4213b(long r6) {
            /*
                r5 = this;
                r0 = r5
                java.util.Iterator<? extends T> r0 = r0.f15976f
                r8 = r0
                r0 = r5
                org.reactivestreams.Subscriber<? super T> r0 = r0.f15980i
                r9 = r0
            L_0x000b:
                r0 = 0
                r10 = r0
            L_0x000e:
                r0 = r10
                r1 = r6
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x0095
                r0 = r5
                boolean r0 = r0.f15977g
                if (r0 == 0) goto L_0x001d
                return
            L_0x001d:
                r0 = r8
                java.lang.Object r0 = r0.next()     // Catch: all -> 0x0087
                r12 = r0
                r0 = r5
                boolean r0 = r0.f15977g
                if (r0 == 0) goto L_0x002d
                return
            L_0x002d:
                r0 = r12
                if (r0 != 0) goto L_0x0043
                r0 = r9
                java.lang.NullPointerException r1 = new java.lang.NullPointerException
                r2 = r1
                java.lang.String r3 = "Iterator.next() returned a null value"
                r2.<init>(r3)
                r0.onError(r1)
                return
            L_0x0043:
                r0 = r9
                r1 = r12
                r0.onNext(r1)
                r0 = r5
                boolean r0 = r0.f15977g
                if (r0 == 0) goto L_0x0054
                return
            L_0x0054:
                r0 = r8
                boolean r0 = r0.hasNext()     // Catch: all -> 0x0079
                r13 = r0
                r0 = r13
                if (r0 != 0) goto L_0x0070
                r0 = r5
                boolean r0 = r0.f15977g
                if (r0 != 0) goto L_0x006f
                r0 = r9
                r0.onComplete()
            L_0x006f:
                return
            L_0x0070:
                r0 = r10
                r1 = 1
                long r0 = r0 + r1
                r10 = r0
                goto L_0x000e
            L_0x0079:
                r8 = move-exception
                r0 = r8
                io.reactivex.exceptions.Exceptions.m4428b(r0)
                r0 = r9
                r1 = r8
                r0.onError(r1)
                return
            L_0x0087:
                r8 = move-exception
                r0 = r8
                io.reactivex.exceptions.Exceptions.m4428b(r0)
                r0 = r9
                r1 = r8
                r0.onError(r1)
                return
            L_0x0095:
                r0 = r5
                long r0 = r0.get()
                r14 = r0
                r0 = r14
                r6 = r0
                r0 = r10
                r1 = r14
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x000e
                r0 = r5
                r1 = r10
                long r1 = -r1
                long r0 = r0.addAndGet(r1)
                r10 = r0
                r0 = r10
                r6 = r0
                r0 = r10
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x000b
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableFromIterable.IteratorSubscription.mo4213b(long):void");
        }
    }

    public FlowableFromIterable(Iterable<? extends T> iterable) {
        this.f15975g = iterable;
    }

    /* renamed from: C */
    public static <T> void m4215C(Subscriber<? super T> subscriber, Iterator<? extends T> it) {
        try {
            if (!it.hasNext()) {
                EmptySubscription.complete(subscriber);
            } else if (subscriber instanceof ConditionalSubscriber) {
                subscriber.onSubscribe(new IteratorConditionalSubscription((ConditionalSubscriber) subscriber, it));
            } else {
                subscriber.onSubscribe(new IteratorSubscription(subscriber, it));
            }
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptySubscription.error(th, subscriber);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super T> subscriber) {
        try {
            m4215C(subscriber, this.f15975g.iterator());
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptySubscription.error(th, subscriber);
        }
    }
}
