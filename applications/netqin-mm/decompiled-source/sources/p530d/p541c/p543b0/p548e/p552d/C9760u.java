package p530d.p541c.p543b0.p548e.p552d;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* renamed from: d.c.b0.e.d.u */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/u.class */
public final class C9760u<T> implements AbstractC9844r<T> {

    /* renamed from: a */
    public final AbstractC9844r<? super T> f36890a;

    /* renamed from: b */
    public final AtomicReference<AbstractC9861b> f36891b;

    public C9760u(AbstractC9844r<? super T> rVar, AtomicReference<AbstractC9861b> atomicReference) {
        this.f36890a = rVar;
        this.f36891b = atomicReference;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.f36890a.onComplete();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.f36890a.onError(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        this.f36890a.onNext(t);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.replace(this.f36891b, bVar);
    }
}
