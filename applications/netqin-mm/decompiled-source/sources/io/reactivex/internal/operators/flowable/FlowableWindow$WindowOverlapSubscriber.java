package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.processors.UnicastProcessor;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber.class */
public final class FlowableWindow$WindowOverlapSubscriber<T> extends AtomicInteger implements AbstractC9829h<T>, AbstractC10434d, Runnable {
    public static final long serialVersionUID = 2428527070996323976L;
    public final AbstractC10433c<? super AbstractC9814e<T>> actual;
    public final int bufferSize;
    public volatile boolean cancelled;
    public volatile boolean done;
    public Throwable error;
    public long index;
    public long produced;
    public final C9772a<UnicastProcessor<T>> queue;

    /* renamed from: s */
    public AbstractC10434d f38442s;
    public final long size;
    public final long skip;
    public final ArrayDeque<UnicastProcessor<T>> windows = new ArrayDeque<>();
    public final AtomicBoolean once = new AtomicBoolean();
    public final AtomicBoolean firstRequest = new AtomicBoolean();
    public final AtomicLong requested = new AtomicLong();
    public final AtomicInteger wip = new AtomicInteger();

    public FlowableWindow$WindowOverlapSubscriber(AbstractC10433c<? super AbstractC9814e<T>> cVar, long j, long j2, int i) {
        super(1);
        this.actual = cVar;
        this.size = j;
        this.skip = j2;
        this.queue = new C9772a<>(i);
        this.bufferSize = i;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        this.cancelled = true;
        if (this.once.compareAndSet(false, true)) {
            run();
        }
    }

    public boolean checkTerminated(boolean z, boolean z2, AbstractC10433c<?> cVar, C9772a<?> aVar) {
        if (this.cancelled) {
            aVar.clear();
            return true;
        } else if (!z) {
            return false;
        } else {
            Throwable th = this.error;
            if (th != null) {
                aVar.clear();
                cVar.onError(th);
                return true;
            } else if (!z2) {
                return false;
            } else {
                cVar.onComplete();
                return true;
            }
        }
    }

    public void drain() {
        int addAndGet;
        if (this.wip.getAndIncrement() == 0) {
            AbstractC10433c<? super AbstractC9814e<T>> cVar = this.actual;
            C9772a<UnicastProcessor<T>> aVar = this.queue;
            int i = 1;
            do {
                long j = this.requested.get();
                long j2 = 0;
                while (j2 != j) {
                    boolean z = this.done;
                    UnicastProcessor<T> poll = aVar.poll();
                    boolean z2 = poll == null;
                    if (!checkTerminated(z, z2, cVar, aVar)) {
                        if (z2) {
                            break;
                        }
                        cVar.onNext(poll);
                        j2++;
                    } else {
                        return;
                    }
                }
                if (j2 != j || !checkTerminated(this.done, aVar.isEmpty(), cVar, aVar)) {
                    if (!(j2 == 0 || j == Long.MAX_VALUE)) {
                        this.requested.addAndGet(-j2);
                    }
                    addAndGet = this.wip.addAndGet(-i);
                    i = addAndGet;
                } else {
                    return;
                }
            } while (addAndGet != 0);
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (!this.done) {
            Iterator<UnicastProcessor<T>> it = this.windows.iterator();
            while (it.hasNext()) {
                it.next().onComplete();
            }
            this.windows.clear();
            this.done = true;
            drain();
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.done) {
            C9815a.m1923b(th);
            return;
        }
        Iterator<UnicastProcessor<T>> it = this.windows.iterator();
        while (it.hasNext()) {
            it.next().onError(th);
        }
        this.windows.clear();
        this.error = th;
        this.done = true;
        drain();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (!this.done) {
            long j = this.index;
            if (j == 0 && !this.cancelled) {
                getAndIncrement();
                UnicastProcessor<T> a = UnicastProcessor.m214a(this.bufferSize, this);
                this.windows.offer(a);
                this.queue.offer(a);
                drain();
            }
            long j2 = j + 1;
            Iterator<UnicastProcessor<T>> it = this.windows.iterator();
            while (it.hasNext()) {
                it.next().onNext(t);
            }
            long j3 = this.produced + 1;
            if (j3 == this.size) {
                this.produced = j3 - this.skip;
                UnicastProcessor<T> poll = this.windows.poll();
                if (poll != null) {
                    poll.onComplete();
                }
            } else {
                this.produced = j3;
            }
            if (j2 == this.skip) {
                this.index = 0L;
            } else {
                this.index = j2;
            }
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38442s, dVar)) {
            this.f38442s = dVar;
            this.actual.onSubscribe(this);
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2012a(this.requested, j);
            if (this.firstRequest.get() || !this.firstRequest.compareAndSet(false, true)) {
                this.f38442s.request(C9800b.m2011b(this.skip, j));
            } else {
                this.f38442s.request(C9800b.m2013a(this.size, C9800b.m2011b(this.skip, j - 1)));
            }
            drain();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (decrementAndGet() == 0) {
            this.f38442s.cancel();
        }
    }
}
