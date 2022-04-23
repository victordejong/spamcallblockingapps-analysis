package io.reactivex.internal.operators.observable;

import java.util.concurrent.TimeUnit;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.AbstractC9845s;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedNoLast.class */
public final class ObservableSampleTimed$SampleTimedNoLast<T> extends ObservableSampleTimed$SampleTimedObserver<T> {
    public static final long serialVersionUID = -7139995637533111443L;

    public ObservableSampleTimed$SampleTimedNoLast(AbstractC9844r<? super T> rVar, long j, TimeUnit timeUnit, AbstractC9845s sVar) {
        super(rVar, j, timeUnit, sVar);
    }

    @Override // io.reactivex.internal.operators.observable.ObservableSampleTimed$SampleTimedObserver
    public void complete() {
        this.actual.onComplete();
    }

    @Override // java.lang.Runnable
    public void run() {
        emit();
    }
}
