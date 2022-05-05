package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
/* renamed from: h.i.a.e.j.j.h3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/h3.class */
public final class C7820h3<E> extends AbstractC7964z<E> {

    /* renamed from: c */
    public static final C7820h3<Object> f18334c;

    /* renamed from: b */
    public final List<E> f18335b;

    static {
        C7820h3<Object> h3Var = new C7820h3<>();
        f18334c = h3Var;
        h3Var.mo18745a();
    }

    public C7820h3() {
        this(new ArrayList(10));
    }

    public C7820h3(List<E> list) {
        this.f18335b = list;
    }

    /* renamed from: c */
    public static <E> C7820h3<E> m19359c() {
        return (C7820h3<E>) f18334c;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        m18744b();
        this.f18335b.add(i, e);
        ((AbstractList) this).modCount++;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7912s1
    /* renamed from: c */
    public final /* synthetic */ AbstractC7912s1 mo18849c(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f18335b);
            return new C7820h3(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        return this.f18335b.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final E remove(int i) {
        m18744b();
        E remove = this.f18335b.remove(i);
        ((AbstractList) this).modCount++;
        return remove;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        m18744b();
        E e2 = this.f18335b.set(i, e);
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18335b.size();
    }
}
