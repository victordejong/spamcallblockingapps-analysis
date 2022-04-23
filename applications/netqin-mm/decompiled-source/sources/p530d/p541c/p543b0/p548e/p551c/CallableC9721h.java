package p530d.p541c.p543b0.p548e.p551c;

import java.util.concurrent.Callable;
import p530d.p541c.AbstractC9833i;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p568x.C9862c;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.b0.e.c.h */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/c/h.class */
public final class CallableC9721h<T> extends AbstractC9833i<T> implements Callable<T> {

    /* renamed from: a */
    public final Callable<? extends T> f36820a;

    public CallableC9721h(Callable<? extends T> callable) {
        this.f36820a = callable;
    }

    @Override // p530d.p541c.AbstractC9833i
    /* renamed from: b */
    public void mo201b(AbstractC9836k<? super T> kVar) {
        AbstractC9861b b = C9862c.m1824b();
        kVar.onSubscribe(b);
        if (!b.isDisposed()) {
            try {
                Object obj = (Object) this.f36820a.call();
                if (b.isDisposed()) {
                    return;
                }
                if (obj == 0) {
                    kVar.onComplete();
                } else {
                    kVar.onSuccess(obj);
                }
            } catch (Throwable th) {
                C9863a.m1822b(th);
                if (!b.isDisposed()) {
                    kVar.onError(th);
                } else {
                    C9815a.m1923b(th);
                }
            }
        }
    }

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        return (T) this.f36820a.call();
    }
}
