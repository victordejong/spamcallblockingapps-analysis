package p530d.p541c.p543b0.p547d;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p568x.AbstractC9861b;
/* renamed from: d.c.b0.d.d */
/* loaded from: classes2-dex2jar.jar:d/c/b0/d/d.class */
public final class C9665d<T> implements AbstractC9851u<T> {

    /* renamed from: a */
    public final AtomicReference<AbstractC9861b> f36728a;

    /* renamed from: b */
    public final AbstractC9851u<? super T> f36729b;

    public C9665d(AtomicReference<AbstractC9861b> atomicReference, AbstractC9851u<? super T> uVar) {
        this.f36728a = atomicReference;
        this.f36729b = uVar;
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onError(Throwable th) {
        this.f36729b.onError(th);
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.replace(this.f36728a, bVar);
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSuccess(T t) {
        this.f36729b.onSuccess(t);
    }
}
