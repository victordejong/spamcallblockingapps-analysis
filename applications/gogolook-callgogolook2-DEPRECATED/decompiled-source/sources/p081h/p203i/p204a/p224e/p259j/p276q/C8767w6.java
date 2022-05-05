package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.Iterator;
/* renamed from: h.i.a.e.j.q.w6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/w6.class */
public final class C8767w6 implements Iterator<String> {

    /* renamed from: a */
    public Iterator<String> f20093a;

    /* renamed from: b */
    public final /* synthetic */ C8749u6 f20094b;

    public C8767w6(C8749u6 u6Var) {
        AbstractC8738t4 t4Var;
        this.f20094b = u6Var;
        t4Var = this.f20094b.f20010a;
        this.f20093a = t4Var.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f20093a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f20093a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
