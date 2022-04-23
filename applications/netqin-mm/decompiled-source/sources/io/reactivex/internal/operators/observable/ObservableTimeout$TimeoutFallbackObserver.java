package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p548e.p552d.AbstractC9759t;
import p530d.p541c.p543b0.p548e.p552d.C9760u;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver.class */
public final class ObservableTimeout$TimeoutFallbackObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9844r<T>, AbstractC9861b, AbstractC9759t {
    public static final long serialVersionUID = -7508389464265974549L;
    public final AbstractC9844r<? super T> actual;
    public AbstractC9843q<? extends T> fallback;
    public final AbstractC9645h<? super T, ? extends AbstractC9843q<?>> itemTimeoutIndicator;
    public final SequentialDisposable task = new SequentialDisposable();
    public final AtomicLong index = new AtomicLong();
    public final AtomicReference<AbstractC9861b> upstream = new AtomicReference<>();

    public ObservableTimeout$TimeoutFallbackObserver(AbstractC9844r<? super T> rVar, AbstractC9645h<? super T, ? extends AbstractC9843q<?>> hVar, AbstractC9843q<? extends T> qVar) {
        this.actual = rVar;
        this.itemTimeoutIndicator = hVar;
        this.fallback = qVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this.upstream);
        DisposableHelper.dispose(this);
        this.task.dispose();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        if (this.index.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
            this.task.dispose();
            this.actual.onComplete();
            this.task.dispose();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        if (this.index.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
            this.task.dispose();
            this.actual.onError(th);
            this.task.dispose();
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        long j = this.index.get();
        if (j != Long.MAX_VALUE) {
            long j2 = 1 + j;
            if (this.index.compareAndSet(j, j2)) {
                AbstractC9861b bVar = this.task.get();
                if (bVar != null) {
                    bVar.dispose();
                }
                this.actual.onNext(t);
                try {
                    Object apply = this.itemTimeoutIndicator.apply(t);
                    C9650a.m2095a(apply, "The itemTimeoutIndicator returned a null ObservableSource.");
                    AbstractC9843q qVar = (AbstractC9843q) apply;
                    ObservableTimeout$TimeoutConsumer observableTimeout$TimeoutConsumer = new ObservableTimeout$TimeoutConsumer(j2, this);
                    if (this.task.replace(observableTimeout$TimeoutConsumer)) {
                        qVar.subscribe(observableTimeout$TimeoutConsumer);
                    }
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    this.upstream.get().dispose();
                    this.index.getAndSet(Long.MAX_VALUE);
                    this.actual.onError(th);
                }
            }
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this.upstream, bVar);
    }

    @Override // p530d.p541c.p543b0.p548e.p552d.AbstractC9761v
    public void onTimeout(long j) {
        if (this.index.compareAndSet(j, Long.MAX_VALUE)) {
            DisposableHelper.dispose(this.upstream);
            AbstractC9843q<? extends T> qVar = this.fallback;
            this.fallback = null;
            qVar.subscribe(new C9760u(this.actual, this));
        }
    }

    @Override // p530d.p541c.p543b0.p548e.p552d.AbstractC9759t
    public void onTimeoutError(long j, Throwable th) {
        if (this.index.compareAndSet(j, Long.MAX_VALUE)) {
            DisposableHelper.dispose(this);
            this.actual.onError(th);
            return;
        }
        C9815a.m1923b(th);
    }

    public void startFirstTimeout(AbstractC9843q<?> qVar) {
        if (qVar != null) {
            ObservableTimeout$TimeoutConsumer observableTimeout$TimeoutConsumer = new ObservableTimeout$TimeoutConsumer(0L, this);
            if (this.task.replace(observableTimeout$TimeoutConsumer)) {
                qVar.subscribe(observableTimeout$TimeoutConsumer);
            }
        }
    }
}
