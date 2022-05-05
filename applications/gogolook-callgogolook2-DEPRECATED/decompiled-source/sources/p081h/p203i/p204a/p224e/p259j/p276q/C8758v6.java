package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.ListIterator;
/* renamed from: h.i.a.e.j.q.v6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/v6.class */
public final class C8758v6 implements ListIterator<String> {

    /* renamed from: a */
    public ListIterator<String> f20024a;

    /* renamed from: b */
    public final /* synthetic */ int f20025b;

    /* renamed from: c */
    public final /* synthetic */ C8749u6 f20026c;

    public C8758v6(C8749u6 u6Var, int i) {
        AbstractC8738t4 t4Var;
        this.f20026c = u6Var;
        this.f20025b = i;
        t4Var = this.f20026c.f20010a;
        this.f20024a = t4Var.listIterator(this.f20025b);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f20024a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f20024a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f20024a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f20024a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f20024a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f20024a.previousIndex();
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
