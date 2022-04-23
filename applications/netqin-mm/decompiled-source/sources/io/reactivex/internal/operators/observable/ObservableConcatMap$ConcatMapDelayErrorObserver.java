package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractC9656e;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver.class */
public final class ObservableConcatMap$ConcatMapDelayErrorObserver<T, R> extends AtomicInteger implements AbstractC9844r<T>, AbstractC9861b {
    public static final long serialVersionUID = -6951100001833242599L;
    public volatile boolean active;
    public final AbstractC9844r<? super R> actual;
    public final int bufferSize;
    public volatile boolean cancelled;

    /* renamed from: d */
    public AbstractC9861b f38486d;
    public volatile boolean done;
    public final AtomicThrowable error = new AtomicThrowable();
    public final AbstractC9645h<? super T, ? extends AbstractC9843q<? extends R>> mapper;
    public final DelayErrorInnerObserver<R> observer;
    public AbstractC9661j<T> queue;
    public int sourceMode;
    public final boolean tillTheEnd;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver$DelayErrorInnerObserver.class */
    public static final class DelayErrorInnerObserver<R> extends AtomicReference<AbstractC9861b> implements AbstractC9844r<R> {
        public static final long serialVersionUID = 2620149119579502636L;
        public final AbstractC9844r<? super R> actual;
        public final ObservableConcatMap$ConcatMapDelayErrorObserver<?, R> parent;

        public DelayErrorInnerObserver(AbstractC9844r<? super R> rVar, ObservableConcatMap$ConcatMapDelayErrorObserver<?, R> observableConcatMap$ConcatMapDelayErrorObserver) {
            this.actual = rVar;
            this.parent = observableConcatMap$ConcatMapDelayErrorObserver;
        }

        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onComplete() {
            ObservableConcatMap$ConcatMapDelayErrorObserver<?, R> observableConcatMap$ConcatMapDelayErrorObserver = this.parent;
            observableConcatMap$ConcatMapDelayErrorObserver.active = false;
            observableConcatMap$ConcatMapDelayErrorObserver.drain();
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onError(Throwable th) {
            ObservableConcatMap$ConcatMapDelayErrorObserver<?, R> observableConcatMap$ConcatMapDelayErrorObserver = this.parent;
            if (observableConcatMap$ConcatMapDelayErrorObserver.error.addThrowable(th)) {
                if (!observableConcatMap$ConcatMapDelayErrorObserver.tillTheEnd) {
                    observableConcatMap$ConcatMapDelayErrorObserver.f38486d.dispose();
                }
                observableConcatMap$ConcatMapDelayErrorObserver.active = false;
                observableConcatMap$ConcatMapDelayErrorObserver.drain();
                return;
            }
            C9815a.m1923b(th);
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onNext(R r) {
            this.actual.onNext(r);
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.replace(this, bVar);
        }
    }

    public ObservableConcatMap$ConcatMapDelayErrorObserver(AbstractC9844r<? super R> rVar, AbstractC9645h<? super T, ? extends AbstractC9843q<? extends R>> hVar, int i, boolean z) {
        this.actual = rVar;
        this.mapper = hVar;
        this.bufferSize = i;
        this.tillTheEnd = z;
        this.observer = new DelayErrorInnerObserver<>(rVar, this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.cancelled = true;
        this.f38486d.dispose();
        this.observer.dispose();
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            AbstractC9844r<? super R> rVar = this.actual;
            AbstractC9661j<T> jVar = this.queue;
            AtomicThrowable atomicThrowable = this.error;
            while (true) {
                if (!this.active) {
                    if (this.cancelled) {
                        jVar.clear();
                        return;
                    } else if (this.tillTheEnd || atomicThrowable.get() == null) {
                        boolean z = this.done;
                        try {
                            T poll = jVar.poll();
                            boolean z2 = poll == null;
                            if (z && z2) {
                                this.cancelled = true;
                                Throwable terminate = atomicThrowable.terminate();
                                if (terminate != null) {
                                    rVar.onError(terminate);
                                    return;
                                } else {
                                    rVar.onComplete();
                                    return;
                                }
                            } else if (!z2) {
                                try {
                                    Object apply = this.mapper.apply(poll);
                                    C9650a.m2095a(apply, "The mapper returned a null ObservableSource");
                                    AbstractC9843q qVar = (AbstractC9843q) apply;
                                    if (qVar instanceof Callable) {
                                        try {
                                            Object obj = (Object) ((Callable) qVar).call();
                                            if (obj != 0 && !this.cancelled) {
                                                rVar.onNext(obj);
                                            }
                                        } catch (Throwable th) {
                                            C9863a.m1822b(th);
                                            atomicThrowable.addThrowable(th);
                                        }
                                    } else {
                                        this.active = true;
                                        qVar.subscribe(this.observer);
                                    }
                                } catch (Throwable th2) {
                                    C9863a.m1822b(th2);
                                    this.cancelled = true;
                                    this.f38486d.dispose();
                                    jVar.clear();
                                    atomicThrowable.addThrowable(th2);
                                    rVar.onError(atomicThrowable.terminate());
                                    return;
                                }
                            }
                        } catch (Throwable th3) {
                            C9863a.m1822b(th3);
                            this.cancelled = true;
                            this.f38486d.dispose();
                            atomicThrowable.addThrowable(th3);
                            rVar.onError(atomicThrowable.terminate());
                            return;
                        }
                    } else {
                        jVar.clear();
                        this.cancelled = true;
                        rVar.onError(atomicThrowable.terminate());
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.cancelled;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.done = true;
        drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        if (this.error.addThrowable(th)) {
            this.done = true;
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        if (this.sourceMode == 0) {
            this.queue.offer(t);
        }
        drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38486d, bVar)) {
            this.f38486d = bVar;
            if (bVar instanceof AbstractC9656e) {
                AbstractC9656e eVar = (AbstractC9656e) bVar;
                int requestFusion = eVar.requestFusion(3);
                if (requestFusion == 1) {
                    this.sourceMode = requestFusion;
                    this.queue = eVar;
                    this.done = true;
                    this.actual.onSubscribe(this);
                    drain();
                    return;
                } else if (requestFusion == 2) {
                    this.sourceMode = requestFusion;
                    this.queue = eVar;
                    this.actual.onSubscribe(this);
                    return;
                }
            }
            this.queue = new C9772a(this.bufferSize);
            this.actual.onSubscribe(this);
        }
    }
}
