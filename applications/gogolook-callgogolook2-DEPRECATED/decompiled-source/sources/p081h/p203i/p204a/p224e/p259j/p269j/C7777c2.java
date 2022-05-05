package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.j.c2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/c2.class */
public final class C7777c2 extends AbstractC7964z<String> implements AbstractC7785d2, RandomAccess {

    /* renamed from: c */
    public static final C7777c2 f18207c;

    /* renamed from: b */
    public final List<Object> f18208b;

    static {
        C7777c2 c2Var = new C7777c2();
        f18207c = c2Var;
        c2Var.mo18745a();
    }

    public C7777c2() {
        this(10);
    }

    public C7777c2(int i) {
        this(new ArrayList(i));
    }

    public C7777c2(ArrayList<Object> arrayList) {
        this.f18208b = arrayList;
    }

    /* renamed from: a */
    public static String m19493a(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof AbstractC7791e0 ? ((AbstractC7791e0) obj).m19473b() : C7891p1.m19099c((byte[]) obj);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7785d2
    /* renamed from: a */
    public final Object mo19378a(int i) {
        return this.f18208b.get(i);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7785d2
    /* renamed from: a */
    public final void mo19377a(AbstractC7791e0 e0Var) {
        m18744b();
        this.f18208b.add(e0Var);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m18744b();
        this.f18208b.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7964z, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        m18744b();
        List<?> list = collection;
        if (collection instanceof AbstractC7785d2) {
            list = ((AbstractC7785d2) collection).mo19375g0();
        }
        boolean addAll = this.f18208b.addAll(i, list);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7964z, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7912s1
    /* renamed from: c */
    public final /* synthetic */ AbstractC7912s1 mo18849c(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f18208b);
            return new C7777c2(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7964z, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m18744b();
        this.f18208b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7785d2
    /* renamed from: g0 */
    public final List<?> mo19375g0() {
        return Collections.unmodifiableList(this.f18208b);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.f18208b.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof AbstractC7791e0) {
            AbstractC7791e0 e0Var = (AbstractC7791e0) obj;
            String b = e0Var.m19473b();
            if (e0Var.mo19165c()) {
                this.f18208b.set(i, b);
            }
            return b;
        }
        byte[] bArr = (byte[]) obj;
        String c = C7891p1.m19099c(bArr);
        if (C7891p1.m19100b(bArr)) {
            this.f18208b.set(i, c);
        }
        return c;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7785d2
    /* renamed from: h0 */
    public final AbstractC7785d2 mo19374h0() {
        return mo18743h() ? new C7812g4(this) : this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m18744b();
        Object remove = this.f18208b.remove(i);
        ((AbstractList) this).modCount++;
        return m19493a(remove);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        m18744b();
        return m19493a(this.f18208b.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18208b.size();
    }
}
