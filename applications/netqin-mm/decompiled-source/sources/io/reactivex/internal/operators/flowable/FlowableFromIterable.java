package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Iterator;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractC9652a;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromIterable.class */
public final class FlowableFromIterable<T> extends AbstractC9814e<T> {

    /* renamed from: b */
    public final Iterable<? extends T> f38387b;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription.class */
    public static abstract class BaseRangeSubscription<T> extends BasicQueueSubscription<T> {
        public static final long serialVersionUID = -2252972430506210021L;
        public volatile boolean cancelled;

        /* renamed from: it */
        public Iterator<? extends T> f38388it;
        public boolean once;

        public BaseRangeSubscription(Iterator<? extends T> it) {
            this.f38388it = it;
        }

        @Override // p611j.p612a.AbstractC10434d
        public final void cancel() {
            this.cancelled = true;
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public final void clear() {
            this.f38388it = null;
        }

        public abstract void fastPath();

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public final boolean isEmpty() {
            Iterator<? extends T> it = this.f38388it;
            return it == null || !it.hasNext();
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public final T poll() {
            Iterator<? extends T> it = this.f38388it;
            if (it == null) {
                return null;
            }
            if (!this.once) {
                this.once = true;
            } else if (!it.hasNext()) {
                return null;
            }
            T t = (T) this.f38388it.next();
            C9650a.m2095a((Object) t, "Iterator.next() returned a null value");
            return t;
        }

        @Override // p611j.p612a.AbstractC10434d
        public final void request(long j) {
            if (SubscriptionHelper.validate(j) && C9800b.m2012a(this, j) == 0) {
                if (j == Long.MAX_VALUE) {
                    fastPath();
                } else {
                    slowPath(j);
                }
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
        public final int requestFusion(int i) {
            return i & 1;
        }

        public abstract void slowPath(long j);
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription.class */
    public static final class IteratorConditionalSubscription<T> extends BaseRangeSubscription<T> {
        public static final long serialVersionUID = -6022804456014692607L;
        public final AbstractC9652a<? super T> actual;

        public IteratorConditionalSubscription(AbstractC9652a<? super T> aVar, Iterator<? extends T> it) {
            super(it);
            this.actual = aVar;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableFromIterable.BaseRangeSubscription
        public void fastPath() {
            Iterator<? extends T> it = this.f38388it;
            AbstractC9652a<? super T> aVar = this.actual;
            while (!this.cancelled) {
                try {
                    Object obj = (Object) it.next();
                    if (!this.cancelled) {
                        if (obj == 0) {
                            aVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                            return;
                        }
                        aVar.tryOnNext(obj);
                        if (!this.cancelled) {
                            try {
                                if (!it.hasNext()) {
                                    if (!this.cancelled) {
                                        aVar.onComplete();
                                        return;
                                    }
                                    return;
                                }
                            } catch (Throwable th) {
                                C9863a.m1822b(th);
                                aVar.onError(th);
                                return;
                            }
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                } catch (Throwable th2) {
                    C9863a.m1822b(th2);
                    aVar.onError(th2);
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
        public void slowPath(long r6) {
            /*
                r5 = this;
                r0 = r5
                java.util.Iterator<? extends T> r0 = r0.f38388it
                r8 = r0
                r0 = r5
                d.c.b0.c.a<? super T> r0 = r0.actual
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
                java.lang.Object r0 = r0.next()     // Catch: all -> 0x0091
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
                boolean r0 = r0.hasNext()     // Catch: all -> 0x0080
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
                p530d.p541c.p569y.C9863a.m1822b(r0)
                r0 = r9
                r1 = r12
                r0.onError(r1)
                return
            L_0x0091:
                r12 = move-exception
                r0 = r12
                p530d.p541c.p569y.C9863a.m1822b(r0)
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

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorSubscription.class */
    public static final class IteratorSubscription<T> extends BaseRangeSubscription<T> {
        public static final long serialVersionUID = -6022804456014692607L;
        public final AbstractC10433c<? super T> actual;

        public IteratorSubscription(AbstractC10433c<? super T> cVar, Iterator<? extends T> it) {
            super(it);
            this.actual = cVar;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableFromIterable.BaseRangeSubscription
        public void fastPath() {
            Iterator<? extends T> it = this.f38388it;
            AbstractC10433c<? super T> cVar = this.actual;
            while (!this.cancelled) {
                try {
                    Object obj = (Object) it.next();
                    if (!this.cancelled) {
                        if (obj == 0) {
                            cVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                            return;
                        }
                        cVar.onNext(obj);
                        if (!this.cancelled) {
                            try {
                                if (!it.hasNext()) {
                                    if (!this.cancelled) {
                                        cVar.onComplete();
                                        return;
                                    }
                                    return;
                                }
                            } catch (Throwable th) {
                                C9863a.m1822b(th);
                                cVar.onError(th);
                                return;
                            }
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                } catch (Throwable th2) {
                    C9863a.m1822b(th2);
                    cVar.onError(th2);
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
        public void slowPath(long r6) {
            /*
                r5 = this;
                r0 = r5
                java.util.Iterator<? extends T> r0 = r0.f38388it
                r8 = r0
                r0 = r5
                j.a.c<? super T> r0 = r0.actual
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
                java.lang.Object r0 = r0.next()     // Catch: all -> 0x008a
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
                boolean r0 = r0.hasNext()     // Catch: all -> 0x0079
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
                p530d.p541c.p569y.C9863a.m1822b(r0)
                r0 = r9
                r1 = r12
                r0.onError(r1)
                return
            L_0x008a:
                r12 = move-exception
                r0 = r12
                p530d.p541c.p569y.C9863a.m1822b(r0)
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
        this.f38387b = iterable;
    }

    /* renamed from: a */
    public static <T> void m251a(AbstractC10433c<? super T> cVar, Iterator<? extends T> it) {
        try {
            if (!it.hasNext()) {
                EmptySubscription.complete(cVar);
            } else if (cVar instanceof AbstractC9652a) {
                cVar.onSubscribe(new IteratorConditionalSubscription((AbstractC9652a) cVar, it));
            } else {
                cVar.onSubscribe(new IteratorSubscription(cVar, it));
            }
        } catch (Throwable th) {
            C9863a.m1822b(th);
            EmptySubscription.error(th, cVar);
        }
    }

    @Override // p530d.p541c.AbstractC9814e
    /* renamed from: a */
    public void mo213a(AbstractC10433c<? super T> cVar) {
        try {
            m251a(cVar, this.f38387b.iterator());
        } catch (Throwable th) {
            C9863a.m1822b(th);
            EmptySubscription.error(th, cVar);
        }
    }
}
