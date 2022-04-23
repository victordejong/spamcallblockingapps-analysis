package p530d.p541c.p543b0.p548e.p550b;

import io.reactivex.internal.operators.flowable.FlowableWindowBoundary$WindowBoundaryMainSubscriber;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p564i0.AbstractC9834a;
/* renamed from: d.c.b0.e.b.x */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/x.class */
public final class C9710x<T, B> extends AbstractC9834a<B> {

    /* renamed from: b */
    public final FlowableWindowBoundary$WindowBoundaryMainSubscriber<T, B> f36799b;

    /* renamed from: c */
    public boolean f36800c;

    public C9710x(FlowableWindowBoundary$WindowBoundaryMainSubscriber<T, B> flowableWindowBoundary$WindowBoundaryMainSubscriber) {
        this.f36799b = flowableWindowBoundary$WindowBoundaryMainSubscriber;
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (!this.f36800c) {
            this.f36800c = true;
            this.f36799b.innerComplete();
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.f36800c) {
            C9815a.m1923b(th);
            return;
        }
        this.f36800c = true;
        this.f36799b.innerError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(B b) {
        if (!this.f36800c) {
            this.f36799b.innerNext();
        }
    }
}
