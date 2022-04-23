package io.reactivex.internal.operators.mixed;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p546c.AbstractC9660i;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableConcatMapMaybe$ConcatMapMaybeMainObserver.class */
public final class ObservableConcatMapMaybe$ConcatMapMaybeMainObserver<T, R> extends AtomicInteger implements AbstractC9844r<T>, AbstractC9861b {
    public static final int STATE_ACTIVE = 1;
    public static final int STATE_INACTIVE = 0;
    public static final int STATE_RESULT_VALUE = 2;
    public static final long serialVersionUID = -9140123220065488293L;
    public volatile boolean cancelled;
    public volatile boolean done;
    public final AbstractC9844r<? super R> downstream;
    public final ErrorMode errorMode;
    public final AtomicThrowable errors = new AtomicThrowable();
    public final ConcatMapMaybeObserver<R> inner = new ConcatMapMaybeObserver<>(this);
    public R item;
    public final AbstractC9645h<? super T, ? extends AbstractC9838m<? extends R>> mapper;
    public final AbstractC9660i<T> queue;
    public volatile int state;
    public AbstractC9861b upstream;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableConcatMapMaybe$ConcatMapMaybeMainObserver$ConcatMapMaybeObserver.class */
    public static final class ConcatMapMaybeObserver<R> extends AtomicReference<AbstractC9861b> implements AbstractC9836k<R> {
        public static final long serialVersionUID = -3051469169682093892L;
        public final ObservableConcatMapMaybe$ConcatMapMaybeMainObserver<?, R> parent;

        public ConcatMapMaybeObserver(ObservableConcatMapMaybe$ConcatMapMaybeMainObserver<?, R> observableConcatMapMaybe$ConcatMapMaybeMainObserver) {
            this.parent = observableConcatMapMaybe$ConcatMapMaybeMainObserver;
        }

        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onComplete() {
            this.parent.innerComplete();
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onError(Throwable th) {
            this.parent.innerError(th);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.replace(this, bVar);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSuccess(R r) {
            this.parent.innerSuccess(r);
        }
    }

    public ObservableConcatMapMaybe$ConcatMapMaybeMainObserver(AbstractC9844r<? super R> rVar, AbstractC9645h<? super T, ? extends AbstractC9838m<? extends R>> hVar, int i, ErrorMode errorMode) {
        this.downstream = rVar;
        this.mapper = hVar;
        this.errorMode = errorMode;
        this.queue = new C9772a(i);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.cancelled = true;
        this.upstream.dispose();
        this.inner.dispose();
        if (getAndIncrement() == 0) {
            this.queue.clear();
            this.item = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0053, code lost:
        r0.clear();
        r3.item = null;
        r0.onError(r0.terminate());
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0069, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drain() {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.mixed.ObservableConcatMapMaybe$ConcatMapMaybeMainObserver.drain():void");
    }

    public void innerComplete() {
        this.state = 0;
        drain();
    }

    public void innerError(Throwable th) {
        if (this.errors.addThrowable(th)) {
            if (this.errorMode != ErrorMode.END) {
                this.upstream.dispose();
            }
            this.state = 0;
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    public void innerSuccess(R r) {
        this.item = r;
        this.state = 2;
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
            if (this.errorMode == ErrorMode.IMMEDIATE) {
                this.inner.dispose();
            }
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
        }
    }
}
