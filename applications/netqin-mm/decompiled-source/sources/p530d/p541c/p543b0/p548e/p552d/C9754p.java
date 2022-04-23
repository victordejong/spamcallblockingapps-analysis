package p530d.p541c.p543b0.p548e.p552d;

import io.reactivex.internal.operators.observable.ObservableSampleWithObservable$SampleMainObserver;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* renamed from: d.c.b0.e.d.p */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/p.class */
public final class C9754p<T> implements AbstractC9844r<Object> {

    /* renamed from: a */
    public final ObservableSampleWithObservable$SampleMainObserver<T> f36874a;

    public C9754p(ObservableSampleWithObservable$SampleMainObserver<T> observableSampleWithObservable$SampleMainObserver) {
        this.f36874a = observableSampleWithObservable$SampleMainObserver;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.f36874a.complete();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.f36874a.error(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(Object obj) {
        this.f36874a.run();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        this.f36874a.setOther(bVar);
    }
}
