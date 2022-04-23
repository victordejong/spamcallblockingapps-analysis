package p530d.p541c.p543b0.p548e.p553e;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.p568x.AbstractC9861b;
/* renamed from: d.c.b0.e.e.c */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/e/c.class */
public final class C9770c<R> implements AbstractC9836k<R> {

    /* renamed from: a */
    public final AtomicReference<AbstractC9861b> f36911a;

    /* renamed from: b */
    public final AbstractC9836k<? super R> f36912b;

    public C9770c(AtomicReference<AbstractC9861b> atomicReference, AbstractC9836k<? super R> kVar) {
        this.f36911a = atomicReference;
        this.f36912b = kVar;
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onComplete() {
        this.f36912b.onComplete();
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onError(Throwable th) {
        this.f36912b.onError(th);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.replace(this.f36911a, bVar);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSuccess(R r) {
        this.f36912b.onSuccess(r);
    }
}
