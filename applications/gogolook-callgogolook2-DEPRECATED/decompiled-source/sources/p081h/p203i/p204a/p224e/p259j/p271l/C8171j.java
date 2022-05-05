package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.l.j */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/j.class */
public final class C8171j extends AbstractList<String> implements AbstractC8108fa, RandomAccess {

    /* renamed from: a */
    public final AbstractC8108fa f18923a;

    public C8171j(AbstractC8108fa faVar) {
        this.f18923a = faVar;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8108fa
    /* renamed from: B */
    public final List<?> mo18459B() {
        return this.f18923a.mo18459B();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8108fa
    /* renamed from: a */
    public final Object mo18458a(int i) {
        return this.f18923a.mo18458a(i);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8108fa
    /* renamed from: a */
    public final void mo18456a(AbstractC8209k8 k8Var) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.f18923a.get(i);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8108fa
    /* renamed from: i0 */
    public final AbstractC8108fa mo18455i0() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new C8213l(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new C8149i(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18923a.size();
    }
}
