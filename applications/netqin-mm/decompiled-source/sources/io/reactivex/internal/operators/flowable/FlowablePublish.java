package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p543b0.p546c.AbstractC9658g;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
import p530d.p541c.p570z.AbstractC9864a;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowablePublish.class */
public final class FlowablePublish<T> extends AbstractC9864a<T> {

    /* renamed from: b */
    public final AbstractC9814e<T> f38404b;

    /* renamed from: c */
    public final AtomicReference<PublishSubscriber<T>> f38405c;

    /* renamed from: d */
    public final int f38406d;

    /* renamed from: e */
    public final AbstractC10432b<T> f38407e;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber.class */
    public static final class InnerSubscriber<T> extends AtomicLong implements AbstractC10434d {
        public static final long serialVersionUID = -4453897557930727610L;
        public final AbstractC10433c<? super T> child;
        public long emitted;
        public volatile PublishSubscriber<T> parent;

        public InnerSubscriber(AbstractC10433c<? super T> cVar) {
            this.child = cVar;
        }

        @Override // p611j.p612a.AbstractC10434d
        public void cancel() {
            PublishSubscriber<T> publishSubscriber;
            if (get() != Long.MIN_VALUE && getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE && (publishSubscriber = this.parent) != null) {
                publishSubscriber.remove(this);
                publishSubscriber.dispatch();
            }
        }

        @Override // p611j.p612a.AbstractC10434d
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                C9800b.m2010b(this, j);
                PublishSubscriber<T> publishSubscriber = this.parent;
                if (publishSubscriber != null) {
                    publishSubscriber.dispatch();
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber.class */
    public static final class PublishSubscriber<T> extends AtomicInteger implements AbstractC9829h<T>, AbstractC9861b {
        public static final InnerSubscriber[] EMPTY = new InnerSubscriber[0];
        public static final InnerSubscriber[] TERMINATED = new InnerSubscriber[0];
        public static final long serialVersionUID = -202316842419149694L;
        public final int bufferSize;
        public final AtomicReference<PublishSubscriber<T>> current;
        public volatile AbstractC9661j<T> queue;
        public int sourceMode;
        public volatile Object terminalEvent;

        /* renamed from: s */
        public final AtomicReference<AbstractC10434d> f38408s = new AtomicReference<>();
        public final AtomicReference<InnerSubscriber<T>[]> subscribers = new AtomicReference<>(EMPTY);
        public final AtomicBoolean shouldConnect = new AtomicBoolean();

        public PublishSubscriber(AtomicReference<PublishSubscriber<T>> atomicReference, int i) {
            this.current = atomicReference;
            this.bufferSize = i;
        }

        public boolean add(InnerSubscriber<T> innerSubscriber) {
            InnerSubscriber<T>[] innerSubscriberArr;
            InnerSubscriber<T>[] innerSubscriberArr2;
            do {
                innerSubscriberArr = this.subscribers.get();
                if (innerSubscriberArr == TERMINATED) {
                    return false;
                }
                int length = innerSubscriberArr.length;
                innerSubscriberArr2 = new InnerSubscriber[length + 1];
                System.arraycopy(innerSubscriberArr, 0, innerSubscriberArr2, 0, length);
                innerSubscriberArr2[length] = innerSubscriber;
            } while (!this.subscribers.compareAndSet(innerSubscriberArr, innerSubscriberArr2));
            return true;
        }

        public boolean checkTerminated(Object obj, boolean z) {
            if (obj == null) {
                return false;
            }
            if (!NotificationLite.isComplete(obj)) {
                Throwable error = NotificationLite.getError(obj);
                this.current.compareAndSet(this, null);
                InnerSubscriber<T>[] andSet = this.subscribers.getAndSet(TERMINATED);
                if (andSet.length != 0) {
                    for (InnerSubscriber<T> innerSubscriber : andSet) {
                        innerSubscriber.child.onError(error);
                    }
                    return true;
                }
                C9815a.m1923b(error);
                return true;
            } else if (!z) {
                return false;
            } else {
                this.current.compareAndSet(this, null);
                for (InnerSubscriber<T> innerSubscriber2 : this.subscribers.getAndSet(TERMINATED)) {
                    innerSubscriber2.child.onComplete();
                }
                return true;
            }
        }

        public void dispatch() {
            T t;
            T t2;
            InnerSubscriber<T>[] innerSubscriberArr;
            if (getAndIncrement() == 0) {
                AtomicReference<InnerSubscriber<T>[]> atomicReference = this.subscribers;
                InnerSubscriber<T>[] innerSubscriberArr2 = atomicReference.get();
                int i = 1;
                int i2 = 1;
                while (true) {
                    Object obj = this.terminalEvent;
                    AbstractC9661j<T> jVar = this.queue;
                    boolean z = jVar == null || jVar.isEmpty();
                    if (!checkTerminated(obj, z)) {
                        i = i;
                        if (!z) {
                            int length = innerSubscriberArr2.length;
                            int i3 = 0;
                            long j = Long.MAX_VALUE;
                            for (InnerSubscriber<T> innerSubscriber : innerSubscriberArr2) {
                                long j2 = innerSubscriber.get();
                                if (j2 != Long.MIN_VALUE) {
                                    j = Math.min(j, j2 - innerSubscriber.emitted);
                                } else {
                                    i3++;
                                }
                            }
                            if (length == i3) {
                                Object obj2 = this.terminalEvent;
                                try {
                                    t = jVar.poll();
                                } catch (Throwable th) {
                                    C9863a.m1822b(th);
                                    this.f38408s.get().cancel();
                                    obj2 = NotificationLite.error(th);
                                    this.terminalEvent = obj2;
                                    t = null;
                                }
                                if (checkTerminated(obj2, t == null)) {
                                    return;
                                }
                                if (this.sourceMode != i) {
                                    this.f38408s.get().request(1L);
                                }
                            } else {
                                int i4 = 0;
                                do {
                                    long j3 = i4;
                                    if (j3 < j) {
                                        Object obj3 = this.terminalEvent;
                                        try {
                                            t2 = jVar.poll();
                                        } catch (Throwable th2) {
                                            C9863a.m1822b(th2);
                                            this.f38408s.get().cancel();
                                            obj3 = NotificationLite.error(th2);
                                            this.terminalEvent = obj3;
                                            t2 = null;
                                        }
                                        z = t2 == null;
                                        if (checkTerminated(obj3, z)) {
                                            return;
                                        }
                                        if (!z) {
                                            Object value = NotificationLite.getValue(t2);
                                            boolean z2 = false;
                                            for (InnerSubscriber<T> innerSubscriber2 : innerSubscriberArr2) {
                                                long j4 = innerSubscriber2.get();
                                                if (j4 != Long.MIN_VALUE) {
                                                    if (j4 != Long.MAX_VALUE) {
                                                        innerSubscriber2.emitted++;
                                                    }
                                                    innerSubscriber2.child.onNext(value);
                                                } else {
                                                    z2 = true;
                                                }
                                            }
                                            i4++;
                                            innerSubscriberArr = atomicReference.get();
                                            if (z2) {
                                                break;
                                            }
                                        }
                                    }
                                    if (i4 > 0 && this.sourceMode != 1) {
                                        this.f38408s.get().request(j3);
                                    }
                                    i = 1;
                                    i = 1;
                                    if (j != 0) {
                                        i = 1;
                                        if (!z) {
                                            continue;
                                        }
                                    }
                                } while (innerSubscriberArr == innerSubscriberArr2);
                                innerSubscriberArr2 = innerSubscriberArr;
                                i = 1;
                            }
                        }
                        i2 = addAndGet(-i2);
                        if (i2 != 0) {
                            innerSubscriberArr2 = atomicReference.get();
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                }
            }
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            InnerSubscriber<T>[] innerSubscriberArr = this.subscribers.get();
            InnerSubscriber<T>[] innerSubscriberArr2 = TERMINATED;
            if (innerSubscriberArr != innerSubscriberArr2 && this.subscribers.getAndSet(innerSubscriberArr2) != TERMINATED) {
                this.current.compareAndSet(this, null);
                SubscriptionHelper.cancel(this.f38408s);
            }
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.subscribers.get() == TERMINATED;
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onComplete() {
            if (this.terminalEvent == null) {
                this.terminalEvent = NotificationLite.complete();
                dispatch();
            }
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onError(Throwable th) {
            if (this.terminalEvent == null) {
                this.terminalEvent = NotificationLite.error(th);
                dispatch();
                return;
            }
            C9815a.m1923b(th);
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onNext(T t) {
            if (this.sourceMode != 0 || this.queue.offer(t)) {
                dispatch();
            } else {
                onError(new MissingBackpressureException("Prefetch queue is full?!"));
            }
        }

        @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
        public void onSubscribe(AbstractC10434d dVar) {
            if (SubscriptionHelper.setOnce(this.f38408s, dVar)) {
                if (dVar instanceof AbstractC9658g) {
                    AbstractC9658g gVar = (AbstractC9658g) dVar;
                    int requestFusion = gVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.sourceMode = requestFusion;
                        this.queue = gVar;
                        this.terminalEvent = NotificationLite.complete();
                        dispatch();
                        return;
                    } else if (requestFusion == 2) {
                        this.sourceMode = requestFusion;
                        this.queue = gVar;
                        dVar.request(this.bufferSize);
                        return;
                    }
                }
                this.queue = new SpscArrayQueue(this.bufferSize);
                dVar.request(this.bufferSize);
            }
        }

        public void remove(InnerSubscriber<T> innerSubscriber) {
            InnerSubscriber<T>[] innerSubscriberArr;
            InnerSubscriber<T>[] innerSubscriberArr2;
            do {
                innerSubscriberArr = this.subscribers.get();
                int length = innerSubscriberArr.length;
                if (length != 0) {
                    int i = -1;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        } else if (innerSubscriberArr[i2].equals(innerSubscriber)) {
                            i = i2;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (i >= 0) {
                        if (length == 1) {
                            innerSubscriberArr2 = EMPTY;
                        } else {
                            innerSubscriberArr2 = new InnerSubscriber[length - 1];
                            System.arraycopy(innerSubscriberArr, 0, innerSubscriberArr2, 0, i);
                            System.arraycopy(innerSubscriberArr, i + 1, innerSubscriberArr2, i, (length - i) - 1);
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } while (!this.subscribers.compareAndSet(innerSubscriberArr, innerSubscriberArr2));
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowablePublish$a */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowablePublish$a.class */
    public static final class C10407a<T> implements AbstractC10432b<T> {

        /* renamed from: a */
        public final AtomicReference<PublishSubscriber<T>> f38409a;

        /* renamed from: b */
        public final int f38410b;

        public C10407a(AtomicReference<PublishSubscriber<T>> atomicReference, int i) {
            this.f38409a = atomicReference;
            this.f38410b = i;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x004f A[EDGE_INSN: B:19:0x004f->B:11:0x004f ?: BREAK  , SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0010 A[SYNTHETIC] */
        @Override // p611j.p612a.AbstractC10432b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void subscribe(p611j.p612a.AbstractC10433c<? super T> r6) {
            /*
                r5 = this;
                io.reactivex.internal.operators.flowable.FlowablePublish$InnerSubscriber r0 = new io.reactivex.internal.operators.flowable.FlowablePublish$InnerSubscriber
                r1 = r0
                r2 = r6
                r1.<init>(r2)
                r7 = r0
                r0 = r6
                r1 = r7
                r0.onSubscribe(r1)
            L_0x0010:
                r0 = r5
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.FlowablePublish$PublishSubscriber<T>> r0 = r0.f38409a
                java.lang.Object r0 = r0.get()
                io.reactivex.internal.operators.flowable.FlowablePublish$PublishSubscriber r0 = (io.reactivex.internal.operators.flowable.FlowablePublish.PublishSubscriber) r0
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L_0x0028
                r0 = r8
                r6 = r0
                r0 = r8
                boolean r0 = r0.isDisposed()
                if (r0 == 0) goto L_0x0047
            L_0x0028:
                io.reactivex.internal.operators.flowable.FlowablePublish$PublishSubscriber r0 = new io.reactivex.internal.operators.flowable.FlowablePublish$PublishSubscriber
                r1 = r0
                r2 = r5
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.FlowablePublish$PublishSubscriber<T>> r2 = r2.f38409a
                r3 = r5
                int r3 = r3.f38410b
                r1.<init>(r2, r3)
                r6 = r0
                r0 = r5
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.FlowablePublish$PublishSubscriber<T>> r0 = r0.f38409a
                r1 = r8
                r2 = r6
                boolean r0 = r0.compareAndSet(r1, r2)
                if (r0 != 0) goto L_0x0047
                goto L_0x0010
            L_0x0047:
                r0 = r6
                r1 = r7
                boolean r0 = r0.add(r1)
                if (r0 == 0) goto L_0x0010
                r0 = r7
                long r0 = r0.get()
                r1 = -9223372036854775808
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0062
                r0 = r6
                r1 = r7
                r0.remove(r1)
                goto L_0x0067
            L_0x0062:
                r0 = r7
                r1 = r6
                r0.parent = r1
            L_0x0067:
                r0 = r6
                r0.dispatch()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowablePublish.C10407a.subscribe(j.a.c):void");
        }
    }

    public FlowablePublish(AbstractC10432b<T> bVar, AbstractC9814e<T> eVar, AtomicReference<PublishSubscriber<T>> atomicReference, int i) {
        this.f38407e = bVar;
        this.f38404b = eVar;
        this.f38405c = atomicReference;
        this.f38406d = i;
    }

    /* renamed from: a */
    public static <T> AbstractC9864a<T> m250a(AbstractC9814e<T> eVar, int i) {
        AtomicReference atomicReference = new AtomicReference();
        return C9815a.m1929a((AbstractC9864a) new FlowablePublish(new C10407a(atomicReference, i), eVar, atomicReference, i));
    }

    @Override // p530d.p541c.AbstractC9814e
    /* renamed from: a */
    public void mo213a(AbstractC10433c<? super T> cVar) {
        this.f38407e.subscribe(cVar);
    }

    @Override // p530d.p541c.p570z.AbstractC9864a
    /* renamed from: c */
    public void mo249c(AbstractC9644g<? super AbstractC9861b> gVar) {
        PublishSubscriber<T> publishSubscriber;
        PublishSubscriber<T> publishSubscriber2;
        do {
            publishSubscriber = this.f38405c.get();
            if (publishSubscriber != null) {
                publishSubscriber2 = publishSubscriber;
                if (!publishSubscriber.isDisposed()) {
                    break;
                }
            }
            publishSubscriber2 = new PublishSubscriber<>(this.f38405c, this.f38406d);
        } while (!this.f38405c.compareAndSet(publishSubscriber, publishSubscriber2));
        boolean z = true;
        if (publishSubscriber2.shouldConnect.get() || !publishSubscriber2.shouldConnect.compareAndSet(false, true)) {
            z = false;
        }
        try {
            gVar.accept(publishSubscriber2);
            if (z) {
                this.f38404b.m1965a((AbstractC9829h) publishSubscriber2);
            }
        } catch (Throwable th) {
            C9863a.m1822b(th);
            throw ExceptionHelper.m222b(th);
        }
    }
}
