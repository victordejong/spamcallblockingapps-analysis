package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.ListIterator;
/* renamed from: h.i.a.e.j.g.y3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/y3.class */
public final class C7731y3 implements ListIterator<String> {

    /* renamed from: a */
    public ListIterator<String> f18083a;

    /* renamed from: b */
    public final /* synthetic */ int f18084b;

    /* renamed from: c */
    public final /* synthetic */ C7724x3 f18085c;

    public C7731y3(C7724x3 x3Var, int i) {
        AbstractC7701u1 u1Var;
        this.f18085c = x3Var;
        this.f18084b = i;
        u1Var = this.f18085c.f18080a;
        this.f18083a = u1Var.listIterator(this.f18084b);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f18083a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f18083a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f18083a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f18083a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f18083a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f18083a.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }
}
