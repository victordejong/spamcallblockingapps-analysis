package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.ListIterator;
/* renamed from: h.i.a.e.j.l.i */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/i.class */
public final class C8149i implements ListIterator<String> {

    /* renamed from: a */
    public ListIterator<String> f18879a;

    /* renamed from: b */
    public final /* synthetic */ int f18880b;

    /* renamed from: c */
    public final /* synthetic */ C8171j f18881c;

    public C8149i(C8171j jVar, int i) {
        AbstractC8108fa faVar;
        this.f18881c = jVar;
        this.f18880b = i;
        faVar = this.f18881c.f18923a;
        this.f18879a = faVar.listIterator(this.f18880b);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f18879a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f18879a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f18879a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f18879a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f18879a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f18879a.previousIndex();
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
