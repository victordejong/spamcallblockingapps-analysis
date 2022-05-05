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
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromIterable.class */
public final class FlowableFromIterable<T> extends Flowable<T> {
    final Iterable<? extends T> source;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription.class */
    static abstract class BaseRangeSubscription<T> extends BasicQueueSubscription<T> {
        private static final long serialVersionUID = -2252972430506210021L;
        volatile boolean cancelled;

        /* renamed from: it */
        Iterator<? extends T> f427it;
        boolean once;

        BaseRangeSubscription(Iterator<? extends T> it) {
            this.f427it = it;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.cancelled = true;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final void clear() {
            this.f427it = null;
        }

        abstract void fastPath();

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final boolean isEmpty() {
            return this.f427it == null || !this.f427it.hasNext();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public final T poll() {
            if (this.f427it == null) {
                return null;
            }
            if (!this.once) {
                this.once = true;
            } else if (!this.f427it.hasNext()) {
                return null;
            }
            return (T) ObjectHelper.requireNonNull(this.f427it.next(), "Iterator.next() returned a null value");
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription.class */
    public static final class IteratorConditionalSubscription<T> extends BaseRangeSubscription<T> {
        private static final long serialVersionUID = -6022804456014692607L;
        final ConditionalSubscriber<? super T> actual;

        IteratorConditionalSubscription(ConditionalSubscriber<? super T> conditionalSubscriber, Iterator<? extends T> it) {
            super(it);
            this.actual = conditionalSubscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableFromIterable.BaseRangeSubscription
        void fastPath() {
            Iterator<? extends T> it = this.f427it;
            ConditionalSubscriber<? super T> conditionalSubscriber = this.actual;
            while (!this.cancelled) {
                try {
                    Object obj = (Object) it.next();
                    if (!this.cancelled) {
                        if (obj == 0) {
                            conditionalSubscriber.onError(new NullPointerException("Iterator.next() returned a null value"));
                            return;
                        }
                        conditionalSubscriber.tryOnNext(obj);
                        if (!this.cancelled) {
                            try {
                                if (!it.hasNext()) {
                                    if (!this.cancelled) {
                                        conditionalSubscriber.onComplete();
                                        return;
                                    }
                                    return;
                                }
                            } catch (Throwable th) {
                                Exceptions.throwIfFatal(th);
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
                    Exceptions.throwIfFatal(th2);
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
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void slowPath(long r6) {
            /*
                r5 = this;
                r0 = r5
                java.util.Iterator<? extends T> r0 = r0.f427it
                r8 = r0
                r0 = r5
                io.reactivex.internal.fuseable.ConditionalSubscriber<? super T> r0 = r0.actual
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
                boolean r0 = r0.cancelled
                if (r0 == 0) goto L_0x001d
                return
            L_0x001d:
                r0 = r8
                java.lang.Object r0 = r0.next()     // Catch: Throwable -> 0x0091
                r12 = r0
                r0 = r5
                boolean r0 = r0.cancelled
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
                boolean r0 = r0.tryOnNext(r1)
                r13 = r0
                r0 = r5
                boolean r0 = r0.cancelled
                if (r0 == 0) goto L_0x0056
                return
            L_0x0056:
                r0 = r8
                boolean r0 = r0.hasNext()     // Catch: Throwable -> 0x0080
                r14 = r0
                r0 = r14
                if (r0 != 0) goto L_0x0072
                r0 = r5
                boolean r0 = r0.cancelled
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
                io.reactivex.exceptions.Exceptions.throwIfFatal(r0)
                r0 = r9
                r1 = r12
                r0.onError(r1)
                return
            L_0x0091:
                r12 = move-exception
                r0 = r12
                io.reactivex.exceptions.Exceptions.throwIfFatal(r0)
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
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableFromIterable.IteratorConditionalSubscription.slowPath(long):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription.class */
    public static final class IteratorSubscription<T> extends BaseRangeSubscription<T> {
        private static final long serialVersionUID = -6022804456014692607L;
        final Subscriber<? super T> actual;

        IteratorSubscription(Subscriber<? super T> subscriber, Iterator<? extends T> it) {
            super(it);
            this.actual = subscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableFromIterable.BaseRangeSubscription
        void fastPath() {
            Iterator<? extends T> it = this.f427it;
            Subscriber<? super T> subscriber = this.actual;
            while (!this.cancelled) {
                try {
                    Object obj = (Object) it.next();
                    if (!this.cancelled) {
                        if (obj == 0) {
                            subscriber.onError(new NullPointerException("Iterator.next() returned a null value"));
                            return;
                        }
                        subscriber.onNext(obj);
                        if (!this.cancelled) {
                            try {
                                if (!it.hasNext()) {
                                    if (!this.cancelled) {
                                        subscriber.onComplete();
                                        return;
                                    }
                                    return;
                                }
                            } catch (Throwable th) {
                                Exceptions.throwIfFatal(th);
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
                    Exceptions.throwIfFatal(th2);
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
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void slowPath(long r6) {
            /*
                r5 = this;
                r0 = r5
                java.util.Iterator<? extends T> r0 = r0.f427it
                r8 = r0
                r0 = r5
                org.reactivestreams.Subscriber<? super T> r0 = r0.actual
                r9 = r0
            L_0x000b:
                r0 = 0
                r10 = r0
            L_0x000e:
                r0 = r10
                r1 = r6
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x009b
                r0 = r5
                boolean r0 = r0.cancelled
                if (r0 == 0) goto L_0x001d
                return
            L_0x001d:
                r0 = r8
                java.lang.Object r0 = r0.next()     // Catch: Throwable -> 0x008a
                r12 = r0
                r0 = r5
                boolean r0 = r0.cancelled
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
                boolean r0 = r0.cancelled
                if (r0 == 0) goto L_0x0054
                return
            L_0x0054:
                r0 = r8
                boolean r0 = r0.hasNext()     // Catch: Throwable -> 0x0079
                r13 = r0
                r0 = r13
                if (r0 != 0) goto L_0x0070
                r0 = r5
                boolean r0 = r0.cancelled
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
                r12 = move-exception
                r0 = r12
                io.reactivex.exceptions.Exceptions.throwIfFatal(r0)
                r0 = r9
                r1 = r12
                r0.onError(r1)
                return
            L_0x008a:
                r12 = move-exception
                r0 = r12
                io.reactivex.exceptions.Exceptions.throwIfFatal(r0)
                r0 = r9
                r1 = r12
                r0.onError(r1)
                return
            L_0x009b:
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
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableFromIterable.IteratorSubscription.slowPath(long):void");
        }
    }

    public FlowableFromIterable(Iterable<? extends T> iterable) {
        this.source = iterable;
    }

    public static <T> void subscribe(Subscriber<? super T> subscriber, Iterator<? extends T> it) {
        try {
            if (!it.hasNext()) {
                EmptySubscription.complete(subscriber);
            } else if (subscriber instanceof ConditionalSubscriber) {
                subscriber.onSubscribe(new IteratorConditionalSubscription((ConditionalSubscriber) subscriber, it));
            } else {
                subscriber.onSubscribe(new IteratorSubscription(subscriber, it));
            }
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptySubscription.error(th, subscriber);
        }
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(Subscriber<? super T> subscriber) {
        try {
            subscribe(subscriber, this.source.iterator());
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptySubscription.error(th, subscriber);
        }
    }
}
