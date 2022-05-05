package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
/* renamed from: h.i.a.e.j.g.x2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/x2.class */
public final class C7723x2<E> extends AbstractC7692t<E> {

    /* renamed from: c */
    public static final C7723x2<Object> f18078c;

    /* renamed from: b */
    public final List<E> f18079b;

    static {
        C7723x2<Object> x2Var = new C7723x2<>();
        f18078c = x2Var;
        x2Var.mo19803k();
    }

    public C7723x2() {
        this(new ArrayList(10));
    }

    public C7723x2(List<E> list) {
        this.f18079b = list;
    }

    /* renamed from: c */
    public static <E> C7723x2<E> m19686c() {
        return (C7723x2<E>) f18078c;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        m19805b();
        this.f18079b.add(i, e);
        ((AbstractList) this).modCount++;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7626k1
    /* renamed from: c */
    public final /* synthetic */ AbstractC7626k1 mo19631c(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f18079b);
            return new C7723x2(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        return this.f18079b.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final E remove(int i) {
        m19805b();
        E remove = this.f18079b.remove(i);
        ((AbstractList) this).modCount++;
        return remove;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        m19805b();
        E e2 = this.f18079b.set(i, e);
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18079b.size();
    }
}
