package p530d.p541c.p543b0.p548e.p551c;

import p530d.p541c.AbstractC9833i;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.p543b0.p546c.AbstractCallableC9659h;
import p530d.p541c.p568x.C9862c;
/* renamed from: d.c.b0.e.c.l */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/c/l.class */
public final class C9728l<T> extends AbstractC9833i<T> implements AbstractCallableC9659h<T> {

    /* renamed from: a */
    public final T f36829a;

    public C9728l(T t) {
        this.f36829a = t;
    }

    @Override // p530d.p541c.AbstractC9833i
    /* renamed from: b */
    public void mo201b(AbstractC9836k<? super T> kVar) {
        kVar.onSubscribe(C9862c.m1826a());
        kVar.onSuccess((T) this.f36829a);
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractCallableC9659h, java.util.concurrent.Callable
    public T call() {
        return this.f36829a;
    }
}
