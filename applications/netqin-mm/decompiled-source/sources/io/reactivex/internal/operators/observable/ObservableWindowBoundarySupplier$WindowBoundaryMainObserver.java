package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.subjects.UnicastSubject;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9840o;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p548e.p552d.C9764y;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver.class */
public final class ObservableWindowBoundarySupplier$WindowBoundaryMainObserver<T, B> extends AtomicInteger implements AbstractC9844r<T>, AbstractC9861b, Runnable {
    public static final C9764y<Object, Object> BOUNDARY_DISPOSED = new C9764y<>(null);
    public static final Object NEXT_WINDOW = new Object();
    public static final long serialVersionUID = 2233020065421370272L;
    public final int capacityHint;
    public volatile boolean done;
    public final AbstractC9844r<? super AbstractC9840o<T>> downstream;
    public final Callable<? extends AbstractC9843q<B>> other;
    public AbstractC9861b upstream;
    public UnicastSubject<T> window;
    public final AtomicReference<C9764y<T, B>> boundaryObserver = new AtomicReference<>();
    public final AtomicInteger windows = new AtomicInteger(1);
    public final MpscLinkedQueue<Object> queue = new MpscLinkedQueue<>();
    public final AtomicThrowable errors = new AtomicThrowable();
    public final AtomicBoolean stopWindows = new AtomicBoolean();

    public ObservableWindowBoundarySupplier$WindowBoundaryMainObserver(AbstractC9844r<? super AbstractC9840o<T>> rVar, int i, Callable<? extends AbstractC9843q<B>> callable) {
        this.downstream = rVar;
        this.capacityHint = i;
        this.other = callable;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (this.stopWindows.compareAndSet(false, true)) {
            disposeBoundary();
            if (this.windows.decrementAndGet() == 0) {
                this.upstream.dispose();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void disposeBoundary() {
        AbstractC9861b bVar = (AbstractC9861b) this.boundaryObserver.getAndSet(BOUNDARY_DISPOSED);
        if (bVar != null && bVar != BOUNDARY_DISPOSED) {
            bVar.dispose();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void drain() {
        if (getAndIncrement() == 0) {
            AbstractC9844r<? super AbstractC9840o<T>> rVar = this.downstream;
            MpscLinkedQueue<Object> mpscLinkedQueue = this.queue;
            AtomicThrowable atomicThrowable = this.errors;
            int i = 1;
            while (this.windows.get() != 0) {
                UnicastSubject<T> unicastSubject = this.window;
                boolean z = this.done;
                if (!z || atomicThrowable.get() == null) {
                    Object poll = mpscLinkedQueue.poll();
                    boolean z2 = poll == null;
                    if (z && z2) {
                        Throwable terminate = atomicThrowable.terminate();
                        if (terminate == null) {
                            if (unicastSubject != 0) {
                                this.window = null;
                                unicastSubject.onComplete();
                            }
                            rVar.onComplete();
                            return;
                        }
                        if (unicastSubject != 0) {
                            this.window = null;
                            unicastSubject.onError(terminate);
                        }
                        rVar.onError(terminate);
                        return;
                    } else if (z2) {
                        int addAndGet = addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    } else if (poll != NEXT_WINDOW) {
                        unicastSubject.onNext(poll);
                    } else {
                        if (unicastSubject != 0) {
                            this.window = null;
                            unicastSubject.onComplete();
                        }
                        if (!this.stopWindows.get()) {
                            UnicastSubject<T> a = UnicastSubject.m194a(this.capacityHint, this);
                            this.window = a;
                            this.windows.getAndIncrement();
                            try {
                                Object call = this.other.call();
                                C9650a.m2095a(call, "The other Callable returned a null ObservableSource");
                                AbstractC9843q qVar = (AbstractC9843q) call;
                                C9764y<T, B> yVar = new C9764y<>(this);
                                if (this.boundaryObserver.compareAndSet(null, yVar)) {
                                    qVar.subscribe(yVar);
                                    rVar.onNext(a);
                                }
                            } catch (Throwable th) {
                                C9863a.m1822b(th);
                                atomicThrowable.addThrowable(th);
                                this.done = true;
                            }
                        }
                    }
                } else {
                    mpscLinkedQueue.clear();
                    Throwable terminate2 = atomicThrowable.terminate();
                    if (unicastSubject != 0) {
                        this.window = null;
                        unicastSubject.onError(terminate2);
                    }
                    rVar.onError(terminate2);
                    return;
                }
            }
            mpscLinkedQueue.clear();
            this.window = null;
        }
    }

    public void innerComplete() {
        this.upstream.dispose();
        this.done = true;
        drain();
    }

    public void innerError(Throwable th) {
        this.upstream.dispose();
        if (this.errors.addThrowable(th)) {
            this.done = true;
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    public void innerNext(C9764y<T, B> yVar) {
        this.boundaryObserver.compareAndSet(yVar, null);
        this.queue.offer(NEXT_WINDOW);
        drain();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.stopWindows.get();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        disposeBoundary();
        this.done = true;
        drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        disposeBoundary();
        if (this.errors.addThrowable(th)) {
            this.done = true;
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        this.queue.offer(t);
        drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.upstream, bVar)) {
            this.upstream = bVar;
            this.downstream.onSubscribe(this);
            this.queue.offer(NEXT_WINDOW);
            drain();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.windows.decrementAndGet() == 0) {
            this.upstream.dispose();
        }
    }
}
