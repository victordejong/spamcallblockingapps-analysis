package io.reactivex.processors;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import p530d.p541c.p543b0.p557i.C9798a;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p561f0.AbstractC9817a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/processors/BehaviorProcessor.class */
public final class BehaviorProcessor<T> extends AbstractC9817a<T> {

    /* renamed from: e */
    public static final Object[] f38574e = new Object[0];

    /* renamed from: b */
    public final Lock f38575b;

    /* renamed from: c */
    public final AtomicReference<Object> f38576c;

    /* renamed from: d */
    public long f38577d;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/BehaviorProcessor$BehaviorSubscription.class */
    public static final class BehaviorSubscription<T> extends AtomicLong implements AbstractC10434d, C9798a.AbstractC9799a<Object> {
        public static final long serialVersionUID = 3293175281126227086L;
        public final AbstractC10433c<? super T> actual;
        public volatile boolean cancelled;
        public boolean emitting;
        public boolean fastPath;
        public long index;
        public boolean next;
        public C9798a<Object> queue;
        public final BehaviorProcessor<T> state;

        public BehaviorSubscription(AbstractC10433c<? super T> cVar, BehaviorProcessor<T> behaviorProcessor) {
            this.actual = cVar;
            this.state = behaviorProcessor;
        }

        @Override // p611j.p612a.AbstractC10434d
        public void cancel() {
            if (!this.cancelled) {
                this.cancelled = true;
                this.state.m220a((BehaviorSubscription) this);
                throw null;
            }
        }

        public void emitFirst() {
            if (!this.cancelled) {
                synchronized (this) {
                    if (!this.cancelled) {
                        if (!this.next) {
                            BehaviorProcessor<T> behaviorProcessor = this.state;
                            Lock lock = behaviorProcessor.f38575b;
                            lock.lock();
                            this.index = behaviorProcessor.f38577d;
                            Object obj = behaviorProcessor.f38576c.get();
                            lock.unlock();
                            this.emitting = obj != null;
                            this.next = true;
                            if (obj != null && !test(obj)) {
                                emitLoop();
                            }
                        }
                    }
                }
            }
        }

        public void emitLoop() {
            C9798a<Object> aVar;
            while (!this.cancelled) {
                synchronized (this) {
                    try {
                        aVar = this.queue;
                        if (aVar == null) {
                            this.emitting = false;
                            return;
                        }
                        this.queue = null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                aVar.m2015a((C9798a.AbstractC9799a<? super Object>) this);
            }
        }

        public void emitNext(Object obj, long j) {
            if (!this.cancelled) {
                if (!this.fastPath) {
                    synchronized (this) {
                        if (!this.cancelled) {
                            if (this.index != j) {
                                if (this.emitting) {
                                    C9798a<Object> aVar = this.queue;
                                    C9798a<Object> aVar2 = aVar;
                                    if (aVar == null) {
                                        aVar2 = new C9798a<>(4);
                                        this.queue = aVar2;
                                    }
                                    aVar2.m2014a((C9798a<Object>) obj);
                                    return;
                                }
                                this.next = true;
                                this.fastPath = true;
                            } else {
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                }
                test(obj);
            }
        }

        public boolean isFull() {
            return get() == 0;
        }

        @Override // p611j.p612a.AbstractC10434d
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                C9800b.m2012a(this, j);
            }
        }

        @Override // p530d.p541c.p543b0.p557i.C9798a.AbstractC9799a, p530d.p541c.p542a0.AbstractC9646i
        public boolean test(Object obj) {
            if (this.cancelled) {
                return true;
            }
            if (NotificationLite.isComplete(obj)) {
                this.actual.onComplete();
                return true;
            } else if (NotificationLite.isError(obj)) {
                this.actual.onError(NotificationLite.getError(obj));
                return true;
            } else {
                long j = get();
                if (j != 0) {
                    this.actual.onNext((Object) NotificationLite.getValue(obj));
                    if (j == Long.MAX_VALUE) {
                        return false;
                    }
                    decrementAndGet();
                    return false;
                }
                cancel();
                this.actual.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
                return true;
            }
        }
    }

    /* renamed from: a */
    public void m220a(BehaviorSubscription<T> behaviorSubscription) {
        throw null;
    }
}
