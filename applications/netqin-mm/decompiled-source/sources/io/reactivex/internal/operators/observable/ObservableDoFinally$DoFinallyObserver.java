package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9638a;
import p530d.p541c.p543b0.p546c.AbstractC9656e;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver.class */
public final class ObservableDoFinally$DoFinallyObserver<T> extends BasicIntQueueDisposable<T> implements AbstractC9844r<T> {
    public static final long serialVersionUID = 4109457741734051389L;
    public final AbstractC9844r<? super T> actual;

    /* renamed from: d */
    public AbstractC9861b f38489d;
    public final AbstractC9638a onFinally;

    /* renamed from: qd */
    public AbstractC9656e<T> f38490qd;
    public boolean syncFused;

    public ObservableDoFinally$DoFinallyObserver(AbstractC9844r<? super T> rVar, AbstractC9638a aVar) {
        this.actual = rVar;
        this.onFinally = aVar;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public void clear() {
        this.f38490qd.clear();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.f38489d.dispose();
        runFinally();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.f38489d.isDisposed();
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean isEmpty() {
        return this.f38490qd.isEmpty();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.actual.onComplete();
        runFinally();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.actual.onError(th);
        runFinally();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        this.actual.onNext(t);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38489d, bVar)) {
            this.f38489d = bVar;
            if (bVar instanceof AbstractC9656e) {
                this.f38490qd = (AbstractC9656e) bVar;
            }
            this.actual.onSubscribe(this);
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public T poll() throws Exception {
        T poll = this.f38490qd.poll();
        if (poll == null && this.syncFused) {
            runFinally();
        }
        return poll;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
    public int requestFusion(int i) {
        AbstractC9656e<T> eVar = this.f38490qd;
        boolean z = false;
        if (eVar == null || (i & 4) != 0) {
            return 0;
        }
        int requestFusion = eVar.requestFusion(i);
        if (requestFusion != 0) {
            if (requestFusion == 1) {
                z = true;
            }
            this.syncFused = z;
        }
        return requestFusion;
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
