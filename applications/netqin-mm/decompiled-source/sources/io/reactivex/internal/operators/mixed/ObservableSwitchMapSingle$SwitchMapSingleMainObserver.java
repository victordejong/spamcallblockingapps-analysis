package io.reactivex.internal.operators.mixed;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.AbstractC9852v;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableSwitchMapSingle$SwitchMapSingleMainObserver.class */
public final class ObservableSwitchMapSingle$SwitchMapSingleMainObserver<T, R> extends AtomicInteger implements AbstractC9844r<T>, AbstractC9861b {
    public static final SwitchMapSingleObserver<Object> INNER_DISPOSED = new SwitchMapSingleObserver<>(null);
    public static final long serialVersionUID = -5402190102429853762L;
    public volatile boolean cancelled;
    public final boolean delayErrors;
    public volatile boolean done;
    public final AbstractC9844r<? super R> downstream;
    public final AtomicThrowable errors = new AtomicThrowable();
    public final AtomicReference<SwitchMapSingleObserver<R>> inner = new AtomicReference<>();
    public final AbstractC9645h<? super T, ? extends AbstractC9852v<? extends R>> mapper;
    public AbstractC9861b upstream;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableSwitchMapSingle$SwitchMapSingleMainObserver$SwitchMapSingleObserver.class */
    public static final class SwitchMapSingleObserver<R> extends AtomicReference<AbstractC9861b> implements AbstractC9851u<R> {
        public static final long serialVersionUID = 8042919737683345351L;
        public volatile R item;
        public final ObservableSwitchMapSingle$SwitchMapSingleMainObserver<?, R> parent;

        public SwitchMapSingleObserver(ObservableSwitchMapSingle$SwitchMapSingleMainObserver<?, R> observableSwitchMapSingle$SwitchMapSingleMainObserver) {
            this.parent = observableSwitchMapSingle$SwitchMapSingleMainObserver;
        }

        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onError(Throwable th) {
            this.parent.innerError(this, th);
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSuccess(R r) {
            this.item = r;
            this.parent.drain();
        }
    }

    public ObservableSwitchMapSingle$SwitchMapSingleMainObserver(AbstractC9844r<? super R> rVar, AbstractC9645h<? super T, ? extends AbstractC9852v<? extends R>> hVar, boolean z) {
        this.downstream = rVar;
        this.mapper = hVar;
        this.delayErrors = z;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.cancelled = true;
        this.upstream.dispose();
        disposeInner();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void disposeInner() {
        SwitchMapSingleObserver<Object> switchMapSingleObserver = (SwitchMapSingleObserver) this.inner.getAndSet(INNER_DISPOSED);
        if (switchMapSingleObserver != null && switchMapSingleObserver != INNER_DISPOSED) {
            switchMapSingleObserver.dispose();
        }
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            AbstractC9844r<? super R> rVar = this.downstream;
            AtomicThrowable atomicThrowable = this.errors;
            AtomicReference<SwitchMapSingleObserver<R>> atomicReference = this.inner;
            int i = 1;
            while (!this.cancelled) {
                if (atomicThrowable.get() == null || this.delayErrors) {
                    boolean z = this.done;
                    SwitchMapSingleObserver<R> switchMapSingleObserver = atomicReference.get();
                    boolean z2 = switchMapSingleObserver == null;
                    if (z && z2) {
                        Throwable terminate = atomicThrowable.terminate();
                        if (terminate != null) {
                            rVar.onError(terminate);
                            return;
                        } else {
                            rVar.onComplete();
                            return;
                        }
                    } else if (z2 || switchMapSingleObserver.item == null) {
                        int addAndGet = addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    } else {
                        atomicReference.compareAndSet(switchMapSingleObserver, null);
                        rVar.onNext((R) switchMapSingleObserver.item);
                    }
                } else {
                    rVar.onError(atomicThrowable.terminate());
                    return;
                }
            }
        }
    }

    public void innerError(SwitchMapSingleObserver<R> switchMapSingleObserver, Throwable th) {
        if (!this.inner.compareAndSet(switchMapSingleObserver, null) || !this.errors.addThrowable(th)) {
            C9815a.m1923b(th);
            return;
        }
        if (!this.delayErrors) {
            this.upstream.dispose();
            disposeInner();
        }
        drain();
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
        if (this.errors.addThrowable(th)) {
            if (!this.delayErrors) {
                disposeInner();
            }
            this.done = true;
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        SwitchMapSingleObserver<R> switchMapSingleObserver;
        SwitchMapSingleObserver<R> switchMapSingleObserver2 = this.inner.get();
        if (switchMapSingleObserver2 != null) {
            switchMapSingleObserver2.dispose();
        }
        try {
            Object apply = this.mapper.apply(t);
            C9650a.m2095a(apply, "The mapper returned a null SingleSource");
            AbstractC9852v vVar = (AbstractC9852v) apply;
            SwitchMapSingleObserver<R> switchMapSingleObserver3 = new SwitchMapSingleObserver<>(this);
            do {
                switchMapSingleObserver = this.inner.get();
                if (switchMapSingleObserver == INNER_DISPOSED) {
                    return;
                }
            } while (!this.inner.compareAndSet(switchMapSingleObserver, switchMapSingleObserver3));
            vVar.mo1841a(switchMapSingleObserver3);
        } catch (Throwable th) {
            C9863a.m1822b(th);
            this.upstream.dispose();
            this.inner.getAndSet(INNER_DISPOSED);
            onError(th);
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.upstream, bVar)) {
            this.upstream = bVar;
            this.downstream.onSubscribe(this);
        }
    }
}
