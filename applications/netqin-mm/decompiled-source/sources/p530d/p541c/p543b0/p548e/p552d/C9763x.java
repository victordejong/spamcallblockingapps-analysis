package p530d.p541c.p543b0.p548e.p552d;

import io.reactivex.internal.operators.observable.ObservableWindowBoundary$WindowBoundaryMainObserver;
import p530d.p541c.p559d0.AbstractC9813b;
import p530d.p541c.p560e0.C9815a;
/* renamed from: d.c.b0.e.d.x */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/x.class */
public final class C9763x<T, B> extends AbstractC9813b<B> {

    /* renamed from: b */
    public final ObservableWindowBoundary$WindowBoundaryMainObserver<T, B> f36894b;

    /* renamed from: c */
    public boolean f36895c;

    public C9763x(ObservableWindowBoundary$WindowBoundaryMainObserver<T, B> observableWindowBoundary$WindowBoundaryMainObserver) {
        this.f36894b = observableWindowBoundary$WindowBoundaryMainObserver;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        if (!this.f36895c) {
            this.f36895c = true;
            this.f36894b.innerComplete();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        if (this.f36895c) {
            C9815a.m1923b(th);
            return;
        }
        this.f36895c = true;
        this.f36894b.innerError(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(B b) {
        if (!this.f36895c) {
            this.f36894b.innerNext();
        }
    }
}
