package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber.class */
public final class FlowableSwitchMap$SwitchMapSubscriber<T, R> extends AtomicInteger implements AbstractC9829h<T>, AbstractC10434d {
    public static final FlowableSwitchMap$SwitchMapInnerSubscriber<Object, Object> CANCELLED;
    public static final long serialVersionUID = -3491074160481096299L;
    public final AbstractC10433c<? super R> actual;
    public final int bufferSize;
    public volatile boolean cancelled;
    public final boolean delayErrors;
    public volatile boolean done;
    public final AbstractC9645h<? super T, ? extends AbstractC10432b<? extends R>> mapper;

    /* renamed from: s */
    public AbstractC10434d f38430s;
    public volatile long unique;
    public final AtomicReference<FlowableSwitchMap$SwitchMapInnerSubscriber<T, R>> active = new AtomicReference<>();
    public final AtomicLong requested = new AtomicLong();
    public final AtomicThrowable error = new AtomicThrowable();

    static {
        FlowableSwitchMap$SwitchMapInnerSubscriber<Object, Object> flowableSwitchMap$SwitchMapInnerSubscriber = new FlowableSwitchMap$SwitchMapInnerSubscriber<>(null, -1L, 1);
        CANCELLED = flowableSwitchMap$SwitchMapInnerSubscriber;
        flowableSwitchMap$SwitchMapInnerSubscriber.cancel();
    }

    public FlowableSwitchMap$SwitchMapSubscriber(AbstractC10433c<? super R> cVar, AbstractC9645h<? super T, ? extends AbstractC10432b<? extends R>> hVar, int i, boolean z) {
        this.actual = cVar;
        this.mapper = hVar;
        this.bufferSize = i;
        this.delayErrors = z;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        if (!this.cancelled) {
            this.cancelled = true;
            this.f38430s.cancel();
            disposeInner();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void disposeInner() {
        FlowableSwitchMap$SwitchMapInnerSubscriber<Object, Object> flowableSwitchMap$SwitchMapInnerSubscriber;
        FlowableSwitchMap$SwitchMapInnerSubscriber<T, R> flowableSwitchMap$SwitchMapInnerSubscriber2 = this.active.get();
        FlowableSwitchMap$SwitchMapInnerSubscriber<Object, Object> flowableSwitchMap$SwitchMapInnerSubscriber3 = CANCELLED;
        if (flowableSwitchMap$SwitchMapInnerSubscriber2 != flowableSwitchMap$SwitchMapInnerSubscriber3 && (flowableSwitchMap$SwitchMapInnerSubscriber = (FlowableSwitchMap$SwitchMapInnerSubscriber) this.active.getAndSet(flowableSwitchMap$SwitchMapInnerSubscriber3)) != CANCELLED && flowableSwitchMap$SwitchMapInnerSubscriber != null) {
            flowableSwitchMap$SwitchMapInnerSubscriber.cancel();
        }
    }

    public void drain() {
        boolean z;
        R r;
        if (getAndIncrement() == 0) {
            AbstractC10433c<? super R> cVar = this.actual;
            int i = 1;
            while (!this.cancelled) {
                if (this.done) {
                    if (this.delayErrors) {
                        if (this.active.get() == null) {
                            if (this.error.get() != null) {
                                cVar.onError(this.error.terminate());
                                return;
                            } else {
                                cVar.onComplete();
                                return;
                            }
                        }
                    } else if (this.error.get() != null) {
                        disposeInner();
                        cVar.onError(this.error.terminate());
                        return;
                    } else if (this.active.get() == null) {
                        cVar.onComplete();
                        return;
                    }
                }
                FlowableSwitchMap$SwitchMapInnerSubscriber<T, R> flowableSwitchMap$SwitchMapInnerSubscriber = this.active.get();
                AbstractC9661j<R> jVar = flowableSwitchMap$SwitchMapInnerSubscriber != null ? flowableSwitchMap$SwitchMapInnerSubscriber.queue : null;
                if (jVar != null) {
                    if (flowableSwitchMap$SwitchMapInnerSubscriber.done) {
                        if (!this.delayErrors) {
                            if (this.error.get() != null) {
                                disposeInner();
                                cVar.onError(this.error.terminate());
                                return;
                            } else if (jVar.isEmpty()) {
                                this.active.compareAndSet(flowableSwitchMap$SwitchMapInnerSubscriber, null);
                            }
                        } else if (jVar.isEmpty()) {
                            this.active.compareAndSet(flowableSwitchMap$SwitchMapInnerSubscriber, null);
                        }
                    }
                    long j = this.requested.get();
                    long j2 = 0;
                    while (true) {
                        z = false;
                        if (j2 != j) {
                            if (!this.cancelled) {
                                boolean z2 = flowableSwitchMap$SwitchMapInnerSubscriber.done;
                                try {
                                    r = jVar.poll();
                                } catch (Throwable th) {
                                    C9863a.m1822b(th);
                                    flowableSwitchMap$SwitchMapInnerSubscriber.cancel();
                                    this.error.addThrowable(th);
                                    r = (Object) null;
                                    z2 = true;
                                }
                                boolean z3 = r == null;
                                if (flowableSwitchMap$SwitchMapInnerSubscriber != this.active.get()) {
                                    break;
                                }
                                if (z2) {
                                    if (this.delayErrors) {
                                        if (z3) {
                                            this.active.compareAndSet(flowableSwitchMap$SwitchMapInnerSubscriber, null);
                                            break;
                                        }
                                    } else if (this.error.get() == null) {
                                        if (z3) {
                                            this.active.compareAndSet(flowableSwitchMap$SwitchMapInnerSubscriber, null);
                                            break;
                                        }
                                    } else {
                                        cVar.onError(this.error.terminate());
                                        return;
                                    }
                                }
                                if (z3) {
                                    z = false;
                                    break;
                                } else {
                                    cVar.onNext(r);
                                    j2++;
                                }
                            } else {
                                return;
                            }
                        } else {
                            break;
                        }
                    }
                    z = true;
                    if (j2 != 0 && !this.cancelled) {
                        if (j != Long.MAX_VALUE) {
                            this.requested.addAndGet(-j2);
                        }
                        flowableSwitchMap$SwitchMapInnerSubscriber.get().request(j2);
                    }
                    if (z) {
                        continue;
                    }
                }
                int addAndGet = addAndGet(-i);
                i = addAndGet;
                if (addAndGet == 0) {
                    return;
                }
            }
            this.active.lazySet(null);
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (!this.done) {
            this.done = true;
            drain();
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.done || !this.error.addThrowable(th)) {
            C9815a.m1923b(th);
            return;
        }
        if (!this.delayErrors) {
            disposeInner();
        }
        this.done = true;
        drain();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        FlowableSwitchMap$SwitchMapInnerSubscriber<T, R> flowableSwitchMap$SwitchMapInnerSubscriber;
        if (!this.done) {
            long j = this.unique + 1;
            this.unique = j;
            FlowableSwitchMap$SwitchMapInnerSubscriber<T, R> flowableSwitchMap$SwitchMapInnerSubscriber2 = this.active.get();
            if (flowableSwitchMap$SwitchMapInnerSubscriber2 != null) {
                flowableSwitchMap$SwitchMapInnerSubscriber2.cancel();
            }
            try {
                Object apply = this.mapper.apply(t);
                C9650a.m2095a(apply, "The publisher returned is null");
                AbstractC10432b bVar = (AbstractC10432b) apply;
                FlowableSwitchMap$SwitchMapInnerSubscriber<T, R> flowableSwitchMap$SwitchMapInnerSubscriber3 = new FlowableSwitchMap$SwitchMapInnerSubscriber<>(this, j, this.bufferSize);
                do {
                    flowableSwitchMap$SwitchMapInnerSubscriber = this.active.get();
                    if (flowableSwitchMap$SwitchMapInnerSubscriber == CANCELLED) {
                        return;
                    }
                } while (!this.active.compareAndSet(flowableSwitchMap$SwitchMapInnerSubscriber, flowableSwitchMap$SwitchMapInnerSubscriber3));
                bVar.subscribe(flowableSwitchMap$SwitchMapInnerSubscriber3);
            } catch (Throwable th) {
                C9863a.m1822b(th);
                this.f38430s.cancel();
                onError(th);
            }
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38430s, dVar)) {
            this.f38430s = dVar;
            this.actual.onSubscribe(this);
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2012a(this.requested, j);
            if (this.unique == 0) {
                this.f38430s.request(Long.MAX_VALUE);
            } else {
                drain();
            }
        }
    }
}
