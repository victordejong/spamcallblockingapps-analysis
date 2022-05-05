package p033i.p064c.p066b0.p073e.p078f.p083e;

import java.util.Iterator;
import p033i.p064c.p066b0.p070b.AbstractC0449a0;
import p033i.p064c.p066b0.p070b.AbstractC0453c0;
/* renamed from: i.c.b0.e.f.e.d */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/d.class */
public final class C0511d<T> implements Iterable<T> {

    /* renamed from: f */
    final AbstractC0449a0<T> f1089f;

    /* renamed from: g */
    final T f1090g;

    public C0511d(AbstractC0449a0<T> a0Var, T t) {
        this.f1089f = a0Var;
        this.f1090g = t;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        AbstractC0453c0<? super T> aVar = new a<>(this.f1090g);
        this.f1089f.subscribe(aVar);
        return aVar.b();
    }
}
