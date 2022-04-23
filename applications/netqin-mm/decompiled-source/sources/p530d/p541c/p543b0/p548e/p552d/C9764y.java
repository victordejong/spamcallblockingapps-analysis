package p530d.p541c.p543b0.p548e.p552d;

import io.reactivex.internal.operators.observable.ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;
import p530d.p541c.p559d0.AbstractC9813b;
import p530d.p541c.p560e0.C9815a;
/* renamed from: d.c.b0.e.d.y */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/y.class */
public final class C9764y<T, B> extends AbstractC9813b<B> {

    /* renamed from: b */
    public final ObservableWindowBoundarySupplier$WindowBoundaryMainObserver<T, B> f36896b;

    /* renamed from: c */
    public boolean f36897c;

    public C9764y(ObservableWindowBoundarySupplier$WindowBoundaryMainObserver<T, B> observableWindowBoundarySupplier$WindowBoundaryMainObserver) {
        this.f36896b = observableWindowBoundarySupplier$WindowBoundaryMainObserver;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        if (!this.f36897c) {
            this.f36897c = true;
            this.f36896b.innerComplete();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        if (this.f36897c) {
            C9815a.m1923b(th);
            return;
        }
        this.f36897c = true;
        this.f36896b.innerError(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(B b) {
        if (!this.f36897c) {
            this.f36897c = true;
            dispose();
            this.f36896b.innerNext(this);
        }
    }
}
