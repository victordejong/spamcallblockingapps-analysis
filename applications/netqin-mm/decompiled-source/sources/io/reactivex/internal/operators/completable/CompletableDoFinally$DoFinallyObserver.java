package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.p542a0.AbstractC9638a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableDoFinally$DoFinallyObserver.class */
public final class CompletableDoFinally$DoFinallyObserver extends AtomicInteger implements AbstractC9647b, AbstractC9861b {
    public static final long serialVersionUID = 4109457741734051389L;
    public final AbstractC9647b actual;

    /* renamed from: d */
    public AbstractC9861b f38334d;
    public final AbstractC9638a onFinally;

    public CompletableDoFinally$DoFinallyObserver(AbstractC9647b bVar, AbstractC9638a aVar) {
        this.actual = bVar;
        this.onFinally = aVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.f38334d.dispose();
        runFinally();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.f38334d.isDisposed();
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onComplete() {
        this.actual.onComplete();
        runFinally();
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onError(Throwable th) {
        this.actual.onError(th);
        runFinally();
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38334d, bVar)) {
            this.f38334d = bVar;
            this.actual.onSubscribe(this);
        }
    }

    public void runFinally() {
        if (compareAndSet(0, 1)) {
            try {
                this.onFinally.run();
            } catch (Throwable th) {
                C9863a.m1822b(th);
                C9815a.m1923b(th);
            }
        }
    }
}
