package p530d.p541c.p543b0.p548e.p550b;

import io.reactivex.internal.operators.flowable.FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p564i0.AbstractC9834a;
/* renamed from: d.c.b0.e.b.y */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/y.class */
public final class C9711y<T, B> extends AbstractC9834a<B> {

    /* renamed from: b */
    public final FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber<T, B> f36801b;

    /* renamed from: c */
    public boolean f36802c;

    public C9711y(FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber<T, B> flowableWindowBoundarySupplier$WindowBoundaryMainSubscriber) {
        this.f36801b = flowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (!this.f36802c) {
            this.f36802c = true;
            this.f36801b.innerComplete();
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.f36802c) {
            C9815a.m1923b(th);
            return;
        }
        this.f36802c = true;
        this.f36801b.innerError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(B b) {
        if (!this.f36802c) {
            this.f36802c = true;
            dispose();
            this.f36801b.innerNext(this);
        }
    }
}
