package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
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
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver.class */
public final class ObservableConcatMap$SourceObserver<T, U> extends AtomicInteger implements AbstractC9844r<T>, AbstractC9861b {
    public static final long serialVersionUID = 8828587559905699186L;
    public volatile boolean active;
    public final AbstractC9844r<? super U> actual;
    public final int bufferSize;
    public volatile boolean disposed;
    public volatile boolean done;
    public int fusionMode;
    public final InnerObserver<U> inner;
    public final AbstractC9645h<? super T, ? extends AbstractC9843q<? extends U>> mapper;
    public AbstractC9661j<T> queue;

    /* renamed from: s */
    public AbstractC9861b f38487s;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver$InnerObserver.class */
    public static final class InnerObserver<U> extends AtomicReference<AbstractC9861b> implements AbstractC9844r<U> {
        public static final long serialVersionUID = -7449079488798789337L;
        public final AbstractC9844r<? super U> actual;
        public final ObservableConcatMap$SourceObserver<?, ?> parent;

        public InnerObserver(AbstractC9844r<? super U> rVar, ObservableConcatMap$SourceObserver<?, ?> observableConcatMap$SourceObserver) {
            this.actual = rVar;
            this.parent = observableConcatMap$SourceObserver;
        }

        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onComplete() {
            this.parent.innerComplete();
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onError(Throwable th) {
            this.parent.dispose();
            this.actual.onError(th);
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onNext(U u) {
            this.actual.onNext(u);
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.set(this, bVar);
        }
    }

    public ObservableConcatMap$SourceObserver(AbstractC9844r<? super U> rVar, AbstractC9645h<? super T, ? extends AbstractC9843q<? extends U>> hVar, int i) {
        this.actual = rVar;
        this.mapper = hVar;
        this.bufferSize = i;
        this.inner = new InnerObserver<>(rVar, this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.disposed = true;
        this.inner.dispose();
        this.f38487s.dispose();
        if (getAndIncrement() == 0) {
            this.queue.clear();
        }
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            while (!this.disposed) {
                if (!this.active) {
                    boolean z = this.done;
                    try {
                        T poll = this.queue.poll();
                        boolean z2 = poll == null;
                        if (z && z2) {
                            this.disposed = true;
                            this.actual.onComplete();
                            return;
                        } else if (!z2) {
                            try {
                                Object apply = this.mapper.apply(poll);
                                C9650a.m2095a(apply, "The mapper returned a null ObservableSource");
                                AbstractC9843q qVar = (AbstractC9843q) apply;
                                this.active = true;
                                qVar.subscribe(this.inner);
                            } catch (Throwable th) {
                                C9863a.m1822b(th);
                                dispose();
                                this.queue.clear();
                                this.actual.onError(th);
                                return;
                            }
                        }
                    } catch (Throwable th2) {
                        C9863a.m1822b(th2);
                        dispose();
                        this.queue.clear();
                        this.actual.onError(th2);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            this.queue.clear();
        }
    }

    public void innerComplete() {
        this.active = false;
        drain();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.disposed;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        if (!this.done) {
            this.done = true;
            drain();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        if (this.done) {
            C9815a.m1923b(th);
            return;
        }
        this.done = true;
        dispose();
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        if (!this.done) {
            if (this.fusionMode == 0) {
                this.queue.offer(t);
            }
            drain();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38487s, bVar)) {
            this.f38487s = bVar;
            if (bVar instanceof AbstractC9656e) {
                AbstractC9656e eVar = (AbstractC9656e) bVar;
                int requestFusion = eVar.requestFusion(3);
                if (requestFusion == 1) {
                    this.fusionMode = requestFusion;
                    this.queue = eVar;
                    this.done = true;
                    this.actual.onSubscribe(this);
                    drain();
                    return;
                } else if (requestFusion == 2) {
                    this.fusionMode = requestFusion;
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
