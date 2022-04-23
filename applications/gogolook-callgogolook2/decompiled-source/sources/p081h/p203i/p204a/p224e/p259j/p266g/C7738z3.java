package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.Iterator;
/* renamed from: h.i.a.e.j.g.z3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/z3.class */
public final class C7738z3 implements Iterator<String> {

    /* renamed from: a */
    public Iterator<String> f18133a;

    /* renamed from: b */
    public final /* synthetic */ C7724x3 f18134b;

    public C7738z3(C7724x3 x3Var) {
        AbstractC7701u1 u1Var;
        this.f18134b = x3Var;
        u1Var = this.f18134b.f18080a;
        this.f18133a = u1Var.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f18133a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f18133a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
