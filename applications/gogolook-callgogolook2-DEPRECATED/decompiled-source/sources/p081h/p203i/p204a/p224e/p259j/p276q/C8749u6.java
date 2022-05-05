package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.q.u6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/u6.class */
public final class C8749u6 extends AbstractList<String> implements AbstractC8738t4, RandomAccess {

    /* renamed from: a */
    public final AbstractC8738t4 f20010a;

    public C8749u6(AbstractC8738t4 t4Var) {
        this.f20010a = t4Var;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8738t4
    /* renamed from: a */
    public final Object mo17118a(int i) {
        return this.f20010a.mo17118a(i);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8738t4
    /* renamed from: a */
    public final void mo17117a(AbstractC8736t2 t2Var) {
        throw new UnsupportedOperationException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8738t4
    /* renamed from: f0 */
    public final List<?> mo17115f0() {
        return this.f20010a.mo17115f0();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.f20010a.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new C8767w6(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new C8758v6(this, i);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8738t4
    /* renamed from: p */
    public final AbstractC8738t4 mo17114p() {
        return this;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f20010a.size();
    }
}
