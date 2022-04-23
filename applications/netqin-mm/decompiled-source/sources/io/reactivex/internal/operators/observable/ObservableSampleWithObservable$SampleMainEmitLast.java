package io.reactivex.internal.operators.observable;

import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast.class */
public final class ObservableSampleWithObservable$SampleMainEmitLast<T> extends ObservableSampleWithObservable$SampleMainObserver<T> {
    public static final long serialVersionUID = -3029755663834015785L;
    public volatile boolean done;
    public final AtomicInteger wip = new AtomicInteger();

    public ObservableSampleWithObservable$SampleMainEmitLast(AbstractC9844r<? super T> rVar, AbstractC9843q<?> qVar) {
        super(rVar, qVar);
    }

    @Override // io.reactivex.internal.operators.observable.ObservableSampleWithObservable$SampleMainObserver
    public void completeMain() {
        this.done = true;
        if (this.wip.getAndIncrement() == 0) {
            emit();
            this.actual.onComplete();
        }
    }

    @Override // io.reactivex.internal.operators.observable.ObservableSampleWithObservable$SampleMainObserver
    public void completeOther() {
        this.done = true;
        if (this.wip.getAndIncrement() == 0) {
            emit();
            this.actual.onComplete();
        }
    }

    @Override // io.reactivex.internal.operators.observable.ObservableSampleWithObservable$SampleMainObserver
    public void run() {
        if (this.wip.getAndIncrement() == 0) {
            do {
                boolean z = this.done;
                emit();
                if (z) {
                    this.actual.onComplete();
                    return;
                }
            } while (this.wip.decrementAndGet() != 0);
        }
    }
}
