package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p543b0.p557i.C9800b;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableGroupBy$State.class */
public final class FlowableGroupBy$State<T, K> extends BasicIntQueueSubscription<T> implements AbstractC10432b<T> {
    public static final long serialVersionUID = -3852313036005250360L;
    public final boolean delayError;
    public volatile boolean done;
    public Throwable error;
    public final K key;
    public boolean outputFused;
    public final FlowableGroupBy$GroupBySubscriber<?, K, T> parent;
    public int produced;
    public final C9772a<T> queue;
    public final AtomicLong requested = new AtomicLong();
    public final AtomicBoolean cancelled = new AtomicBoolean();
    public final AtomicReference<AbstractC10433c<? super T>> actual = new AtomicReference<>();
    public final AtomicBoolean once = new AtomicBoolean();

    public FlowableGroupBy$State(int i, FlowableGroupBy$GroupBySubscriber<?, K, T> flowableGroupBy$GroupBySubscriber, K k, boolean z) {
        this.queue = new C9772a<>(i);
        this.parent = flowableGroupBy$GroupBySubscriber;
        this.key = k;
        this.delayError = z;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        if (this.cancelled.compareAndSet(false, true)) {
            this.parent.cancel(this.key);
        }
    }

    public boolean checkTerminated(boolean z, boolean z2, AbstractC10433c<? super T> cVar, boolean z3) {
        if (this.cancelled.get()) {
            this.queue.clear();
            return true;
        } else if (!z) {
            return false;
        } else {
            if (!z3) {
                Throwable th = this.error;
                if (th != null) {
                    this.queue.clear();
                    cVar.onError(th);
                    return true;
                } else if (!z2) {
                    return false;
                } else {
                    cVar.onComplete();
                    return true;
                }
            } else if (!z2) {
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
        C9772a<T> aVar = this.queue;
        AbstractC10433c<? super T> cVar = this.actual.get();
        int i = 1;
        while (true) {
            if (cVar != null) {
                if (this.cancelled.get()) {
                    aVar.clear();
                    return;
                }
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
                    }
                } else {
                    aVar.clear();
                    cVar.onError(th);
                    return;
                }
            }
            int addAndGet = addAndGet(-i);
            if (addAndGet != 0) {
                i = addAndGet;
                if (cVar == null) {
                    cVar = this.actual.get();
                    i = addAndGet;
                }
            } else {
                return;
            }
        }
    }

    public void drainNormal() {
        C9772a<T> aVar = this.queue;
        boolean z = this.delayError;
        AbstractC10433c<? super T> cVar = this.actual.get();
        int i = 1;
        while (true) {
            if (cVar != null) {
                long j = this.requested.get();
                long j2 = 0;
                while (j2 != j) {
                    boolean z2 = this.done;
                    Object obj = (T) aVar.poll();
                    boolean z3 = obj == null;
                    if (!checkTerminated(z2, z3, cVar, z)) {
                        if (z3) {
                            break;
                        }
                        cVar.onNext(obj);
                        j2++;
                    } else {
                        return;
                    }
                }
                if (j2 == j && checkTerminated(this.done, aVar.isEmpty(), cVar, z)) {
                    return;
                }
                if (j2 != 0) {
                    if (j != Long.MAX_VALUE) {
                        this.requested.addAndGet(-j2);
                    }
                    this.parent.f38389s.request(j2);
                }
            }
            int addAndGet = addAndGet(-i);
            if (addAndGet != 0) {
                i = addAndGet;
                if (cVar == null) {
                    cVar = this.actual.get();
                    i = addAndGet;
                }
            } else {
                return;
            }
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean isEmpty() {
        return this.queue.isEmpty();
    }

    public void onComplete() {
        this.done = true;
        drain();
    }

    public void onError(Throwable th) {
        this.error = th;
        this.done = true;
        drain();
    }

    public void onNext(T t) {
        this.queue.offer(t);
        drain();
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public T poll() {
        T poll = this.queue.poll();
        if (poll != null) {
            this.produced++;
            return poll;
        }
        int i = this.produced;
        if (i == 0) {
            return null;
        }
        this.produced = 0;
        this.parent.f38389s.request(i);
        return null;
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

    @Override // p611j.p612a.AbstractC10432b
    public void subscribe(AbstractC10433c<? super T> cVar) {
        if (this.once.compareAndSet(false, true)) {
            cVar.onSubscribe(this);
            this.actual.lazySet(cVar);
            drain();
            return;
        }
        EmptySubscription.error(new IllegalStateException("Only one Subscriber allowed!"), cVar);
    }
}
