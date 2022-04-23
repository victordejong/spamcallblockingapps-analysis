package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.ListIterator;
/* renamed from: h.i.a.e.j.j.h4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/h4.class */
public final class C7821h4 implements ListIterator<String> {

    /* renamed from: a */
    public ListIterator<String> f18336a;

    /* renamed from: b */
    public final /* synthetic */ int f18337b;

    /* renamed from: c */
    public final /* synthetic */ C7812g4 f18338c;

    public C7821h4(C7812g4 g4Var, int i) {
        AbstractC7785d2 d2Var;
        this.f18338c = g4Var;
        this.f18337b = i;
        d2Var = this.f18338c.f18266a;
        this.f18336a = d2Var.listIterator(this.f18337b);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f18336a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f18336a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f18336a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f18336a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f18336a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f18336a.previousIndex();
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
