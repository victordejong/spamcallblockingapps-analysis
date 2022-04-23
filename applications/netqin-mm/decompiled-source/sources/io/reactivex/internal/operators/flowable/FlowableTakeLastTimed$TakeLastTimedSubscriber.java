package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p543b0.p557i.C9800b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber.class */
public final class FlowableTakeLastTimed$TakeLastTimedSubscriber<T> extends AtomicInteger implements AbstractC9829h<T>, AbstractC10434d {
    public static final long serialVersionUID = -5677354903406201275L;
    public final AbstractC10433c<? super T> actual;
    public volatile boolean cancelled;
    public final long count;
    public final boolean delayError;
    public volatile boolean done;
    public Throwable error;
    public final C9772a<Object> queue;
    public final AtomicLong requested = new AtomicLong();

    /* renamed from: s */
    public AbstractC10434d f38433s;
    public final AbstractC9845s scheduler;
    public final long time;
    public final TimeUnit unit;

    public FlowableTakeLastTimed$TakeLastTimedSubscriber(AbstractC10433c<? super T> cVar, long j, long j2, TimeUnit timeUnit, AbstractC9845s sVar, int i, boolean z) {
        this.actual = cVar;
        this.count = j;
        this.time = j2;
        this.unit = timeUnit;
        this.scheduler = sVar;
        this.queue = new C9772a<>(i);
        this.delayError = z;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        if (!this.cancelled) {
            this.cancelled = true;
            this.f38433s.cancel();
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }
    }

    public boolean checkTerminated(boolean z, AbstractC10433c<? super T> cVar, boolean z2) {
        if (this.cancelled) {
            this.queue.clear();
            return true;
        } else if (!z2) {
            Throwable th = this.error;
            if (th != null) {
                this.queue.clear();
                cVar.onError(th);
                return true;
            } else if (!z) {
                return false;
            } else {
                cVar.onComplete();
                return true;
            }
        } else if (!z) {
            return false;
        } else {
            Throwable th2 = this.error;
            if (th2 != null) {
                cVar.onError(th2);
                return true;
            }
            cVar.onComplete();
            return true;
        }
    }

    public void drain() {
        int addAndGet;
        if (getAndIncrement() == 0) {
            AbstractC10433c<? super T> cVar = this.actual;
            C9772a<Object> aVar = this.queue;
            boolean z = this.delayError;
            int i = 1;
            do {
                if (this.done) {
                    if (!checkTerminated(aVar.isEmpty(), cVar, z)) {
                        long j = this.requested.get();
                        long j2 = 0;
                        while (true) {
                            if (!checkTerminated(aVar.peek() == null, cVar, z)) {
                                if (j != j2) {
                                    aVar.poll();
                                    cVar.onNext(aVar.poll());
                                    j2++;
                                } else if (j2 != 0) {
                                    C9800b.m2009c(this.requested, j2);
                                }
                            } else {
                                return;
                            }
                        }
                    } else {
                        return;
                    }
                }
                addAndGet = addAndGet(-i);
                i = addAndGet;
            } while (addAndGet != 0);
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        trim(this.scheduler.m1852a(this.unit), this.queue);
        this.done = true;
        drain();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.delayError) {
            trim(this.scheduler.m1852a(this.unit), this.queue);
        }
        this.error = th;
        this.done = true;
        drain();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        C9772a<Object> aVar = this.queue;
        long a = this.scheduler.m1852a(this.unit);
        aVar.m2065a(Long.valueOf(a), (Long) t);
        trim(a, aVar);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38433s, dVar)) {
            this.f38433s = dVar;
            this.actual.onSubscribe(this);
            dVar.request(Long.MAX_VALUE);
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2012a(this.requested, j);
            drain();
        }
    }

    public void trim(long j, C9772a<Object> aVar) {
        long j2 = this.time;
        long j3 = this.count;
        boolean z = j3 == Long.MAX_VALUE;
        while (!aVar.isEmpty()) {
            if (((Long) aVar.peek()).longValue() < j - j2 || (!z && (aVar.m2051e() >> 1) > j3)) {
                aVar.poll();
                aVar.poll();
            } else {
                return;
            }
        }
    }
}
