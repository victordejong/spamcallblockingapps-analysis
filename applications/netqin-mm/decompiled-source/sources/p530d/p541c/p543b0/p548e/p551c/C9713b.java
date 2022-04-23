package p530d.p541c.p543b0.p548e.p551c;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.p568x.AbstractC9861b;
/* renamed from: d.c.b0.e.c.b */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/c/b.class */
public final class C9713b<T> implements AbstractC9836k<T> {

    /* renamed from: a */
    public final AtomicReference<AbstractC9861b> f36804a;

    /* renamed from: b */
    public final AbstractC9836k<? super T> f36805b;

    public C9713b(AtomicReference<AbstractC9861b> atomicReference, AbstractC9836k<? super T> kVar) {
        this.f36804a = atomicReference;
        this.f36805b = kVar;
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onComplete() {
        this.f36805b.onComplete();
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onError(Throwable th) {
        this.f36805b.onError(th);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.replace(this.f36804a, bVar);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSuccess(T t) {
        this.f36805b.onSuccess(t);
    }
}
