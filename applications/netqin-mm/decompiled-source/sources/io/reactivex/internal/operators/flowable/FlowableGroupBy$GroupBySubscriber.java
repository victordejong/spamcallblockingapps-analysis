package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p548e.p550b.C9691i;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p530d.p541c.p570z.AbstractC9865b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber.class */
public final class FlowableGroupBy$GroupBySubscriber<T, K, V> extends BasicIntQueueSubscription<AbstractC9865b<K, V>> implements AbstractC9829h<T> {
    public static final Object NULL_KEY = new Object();
    public static final long serialVersionUID = -3688291656102519502L;
    public final AbstractC10433c<? super AbstractC9865b<K, V>> actual;
    public final int bufferSize;
    public final boolean delayError;
    public volatile boolean done;
    public Throwable error;
    public final Queue<C9691i<K, V>> evictedGroups;
    public final Map<Object, C9691i<K, V>> groups;
    public final AbstractC9645h<? super T, ? extends K> keySelector;
    public boolean outputFused;
    public final C9772a<AbstractC9865b<K, V>> queue;

    /* renamed from: s */
    public AbstractC10434d f38389s;
    public final AbstractC9645h<? super T, ? extends V> valueSelector;
    public final AtomicBoolean cancelled = new AtomicBoolean();
    public final AtomicLong requested = new AtomicLong();
    public final AtomicInteger groupCount = new AtomicInteger(1);

    public FlowableGroupBy$GroupBySubscriber(AbstractC10433c<? super AbstractC9865b<K, V>> cVar, AbstractC9645h<? super T, ? extends K> hVar, AbstractC9645h<? super T, ? extends V> hVar2, int i, boolean z, Map<Object, C9691i<K, V>> map, Queue<C9691i<K, V>> queue) {
        this.actual = cVar;
        this.keySelector = hVar;
        this.valueSelector = hVar2;
        this.bufferSize = i;
        this.delayError = z;
        this.groups = map;
        this.evictedGroups = queue;
        this.queue = new C9772a<>(i);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        if (this.cancelled.compareAndSet(false, true) && this.groupCount.decrementAndGet() == 0) {
            this.f38389s.cancel();
        }
    }

    public void cancel(K k) {
        if (k == null) {
            k = (K) NULL_KEY;
        }
        this.groups.remove(k);
        if (this.groupCount.decrementAndGet() == 0) {
            this.f38389s.cancel();
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }
    }

    public boolean checkTerminated(boolean z, boolean z2, AbstractC10433c<?> cVar, C9772a<?> aVar) {
        if (this.cancelled.get()) {
            aVar.clear();
            return true;
        } else if (this.delayError) {
            if (!z || !z2) {
                return false;
            }
            Throwable th = this.error;
            if (th != null) {
                cVar.onError(th);
                return true;
            }
            cVar.onComplete();
            return true;
        } else if (!z) {
            return false;
        } else {
            Throwable th2 = this.error;
            if (th2 != null) {
                aVar.clear();
                cVar.onError(th2);
                return true;
            } else if (!z2) {
                return false;
            } else {
                cVar.onComplete();
                return true;
            }
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public void clear() {
        this.queue.clear();
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            if (this.outputFused) {
                drainFused();
            } else {
                drainNormal();
            }
        }
    }

    public void drainFused() {
        Throwable th;
        C9772a<AbstractC9865b<K, V>> aVar = this.queue;
        AbstractC10433c<? super AbstractC9865b<K, V>> cVar = this.actual;
        int i = 1;
        while (!this.cancelled.get()) {
            boolean z = this.done;
            if (!z || this.delayError || (th = this.error) == null) {
                cVar.onNext(null);
                if (z) {
                    Throwable th2 = this.error;
                    if (th2 != null) {
                        cVar.onError(th2);
                        return;
                    } else {
                        cVar.onComplete();
                        return;
                    }
                } else {
                    int addAndGet = addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                }
            } else {
                aVar.clear();
                cVar.onError(th);
                return;
            }
        }
        aVar.clear();
    }

    public void drainNormal() {
        int addAndGet;
        C9772a<AbstractC9865b<K, V>> aVar = this.queue;
        AbstractC10433c<? super AbstractC9865b<K, V>> cVar = this.actual;
        int i = 1;
        do {
            long j = this.requested.get();
            long j2 = 0;
            while (j2 != j) {
                boolean z = this.done;
                AbstractC9865b<K, V> poll = aVar.poll();
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
                if (j2 != 0) {
                    if (j != Long.MAX_VALUE) {
                        this.requested.addAndGet(-j2);
                    }
                    this.f38389s.request(j2);
                }
                addAndGet = addAndGet(-i);
                i = addAndGet;
            } else {
                return;
            }
        } while (addAndGet != 0);
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean isEmpty() {
        return this.queue.isEmpty();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (!this.done) {
            for (C9691i<K, V> iVar : this.groups.values()) {
                iVar.onComplete();
            }
            this.groups.clear();
            Queue<C9691i<K, V>> queue = this.evictedGroups;
            if (queue != null) {
                queue.clear();
            }
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
        for (C9691i<K, V> iVar : this.groups.values()) {
            iVar.onError(th);
        }
        this.groups.clear();
        Queue<C9691i<K, V>> queue = this.evictedGroups;
        if (queue != null) {
            queue.clear();
        }
        this.error = th;
        this.done = true;
        drain();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (!this.done) {
            C9772a<AbstractC9865b<K, V>> aVar = this.queue;
            try {
                Object apply = this.keySelector.apply(t);
                boolean z = false;
                Object obj = apply != null ? apply : NULL_KEY;
                C9691i<K, V> iVar = this.groups.get(obj);
                C9691i iVar2 = iVar;
                if (iVar == null) {
                    if (!this.cancelled.get()) {
                        iVar2 = C9691i.m2085a(apply, this.bufferSize, (FlowableGroupBy$GroupBySubscriber<?, Object, T>) this, this.delayError);
                        this.groups.put(obj, iVar2);
                        this.groupCount.getAndIncrement();
                        z = true;
                    } else {
                        return;
                    }
                }
                try {
                    Object apply2 = this.valueSelector.apply(t);
                    C9650a.m2095a(apply2, "The valueSelector returned null");
                    iVar2.onNext(apply2);
                    if (this.evictedGroups != null) {
                        while (true) {
                            C9691i<K, V> poll = this.evictedGroups.poll();
                            if (poll == null) {
                                break;
                            }
                            poll.onComplete();
                        }
                    }
                    if (z) {
                        aVar.offer(iVar2);
                        drain();
                    }
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    this.f38389s.cancel();
                    onError(th);
                }
            } catch (Throwable th2) {
                C9863a.m1822b(th2);
                this.f38389s.cancel();
                onError(th2);
            }
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38389s, dVar)) {
            this.f38389s = dVar;
            this.actual.onSubscribe(this);
            dVar.request(this.bufferSize);
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public AbstractC9865b<K, V> poll() {
        return this.queue.poll();
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2012a(this.requested, j);
            drain();
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
    public int requestFusion(int i) {
        if ((i & 2) == 0) {
            return 0;
        }
        this.outputFused = true;
        return 2;
    }
}
