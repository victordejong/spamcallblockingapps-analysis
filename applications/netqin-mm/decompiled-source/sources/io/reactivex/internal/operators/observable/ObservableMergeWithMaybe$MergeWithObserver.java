package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9840o;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p546c.AbstractC9660i;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver.class */
public final class ObservableMergeWithMaybe$MergeWithObserver<T> extends AtomicInteger implements AbstractC9844r<T>, AbstractC9861b {
    public static final int OTHER_STATE_CONSUMED_OR_EMPTY = 2;
    public static final int OTHER_STATE_HAS_VALUE = 1;
    public static final long serialVersionUID = -4592979584110982903L;
    public final AbstractC9844r<? super T> actual;
    public volatile boolean disposed;
    public volatile boolean mainDone;
    public volatile int otherState;
    public volatile AbstractC9660i<T> queue;
    public T singleItem;
    public final AtomicReference<AbstractC9861b> mainDisposable = new AtomicReference<>();
    public final OtherObserver<T> otherObserver = new OtherObserver<>(this);
    public final AtomicThrowable error = new AtomicThrowable();

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver$OtherObserver.class */
    public static final class OtherObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9836k<T> {
        public static final long serialVersionUID = -2935427570954647017L;
        public final ObservableMergeWithMaybe$MergeWithObserver<T> parent;

        public OtherObserver(ObservableMergeWithMaybe$MergeWithObserver<T> observableMergeWithMaybe$MergeWithObserver) {
            this.parent = observableMergeWithMaybe$MergeWithObserver;
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onComplete() {
            this.parent.otherComplete();
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onError(Throwable th) {
            this.parent.otherError(th);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSuccess(T t) {
            this.parent.otherSuccess(t);
        }
    }

    public ObservableMergeWithMaybe$MergeWithObserver(AbstractC9844r<? super T> rVar) {
        this.actual = rVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.disposed = true;
        DisposableHelper.dispose(this.mainDisposable);
        DisposableHelper.dispose(this.otherObserver);
        if (getAndIncrement() == 0) {
            this.queue = null;
            this.singleItem = null;
        }
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            drainLoop();
        }
    }

    public void drainLoop() {
        AbstractC9844r<? super T> rVar = this.actual;
        int i = 1;
        while (!this.disposed) {
            if (this.error.get() != null) {
                this.singleItem = null;
                this.queue = null;
                rVar.onError(this.error.terminate());
                return;
            }
            int i2 = this.otherState;
            int i3 = i2;
            if (i2 == 1) {
                this.singleItem = null;
                this.otherState = 2;
                rVar.onNext((T) this.singleItem);
                i3 = 2;
            }
            boolean z = this.mainDone;
            AbstractC9660i<T> iVar = this.queue;
            T poll = iVar != null ? iVar.poll() : (Object) null;
            boolean z2 = poll == null;
            if (z && z2 && i3 == 2) {
                this.queue = null;
                rVar.onComplete();
                return;
            } else if (z2) {
                int addAndGet = addAndGet(-i);
                i = addAndGet;
                if (addAndGet == 0) {
                    return;
                }
            } else {
                rVar.onNext(poll);
            }
        }
        this.singleItem = null;
        this.queue = null;
    }

    public AbstractC9660i<T> getOrCreateQueue() {
        AbstractC9660i<T> iVar = this.queue;
        AbstractC9660i<T> iVar2 = iVar;
        if (iVar == null) {
            iVar2 = new C9772a<>(AbstractC9840o.m1870a());
            this.queue = iVar2;
        }
        return iVar2;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(this.mainDisposable.get());
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.mainDone = true;
        drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        if (this.error.addThrowable(th)) {
            DisposableHelper.dispose(this.mainDisposable);
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        if (compareAndSet(0, 1)) {
            this.actual.onNext(t);
            if (decrementAndGet() == 0) {
                return;
            }
        } else {
            getOrCreateQueue().offer(t);
            if (getAndIncrement() != 0) {
                return;
            }
        }
        drainLoop();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this.mainDisposable, bVar);
    }

    public void otherComplete() {
        this.otherState = 2;
        drain();
    }

    public void otherError(Throwable th) {
        if (this.error.addThrowable(th)) {
            DisposableHelper.dispose(this.mainDisposable);
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    public void otherSuccess(T t) {
        if (compareAndSet(0, 1)) {
            this.actual.onNext(t);
            this.otherState = 2;
        } else {
            this.singleItem = t;
            this.otherState = 1;
            if (getAndIncrement() != 0) {
                return;
            }
        }
        drainLoop();
    }
}
