package p530d.p541c.p543b0.p548e.p551c;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p568x.AbstractC9861b;
/* renamed from: d.c.b0.e.c.g */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/c/g.class */
public final class C9720g<R> implements AbstractC9851u<R> {

    /* renamed from: a */
    public final AtomicReference<AbstractC9861b> f36818a;

    /* renamed from: b */
    public final AbstractC9836k<? super R> f36819b;

    public C9720g(AtomicReference<AbstractC9861b> atomicReference, AbstractC9836k<? super R> kVar) {
        this.f36818a = atomicReference;
        this.f36819b = kVar;
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onError(Throwable th) {
        this.f36819b.onError(th);
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.replace(this.f36818a, bVar);
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSuccess(R r) {
        this.f36819b.onSuccess(r);
    }
}
