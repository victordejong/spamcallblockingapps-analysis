package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.g.t1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/t1.class */
public final class C7694t1 extends AbstractC7692t<String> implements AbstractC7701u1, RandomAccess {

    /* renamed from: c */
    public static final C7694t1 f18028c;

    /* renamed from: b */
    public final List<Object> f18029b;

    static {
        C7694t1 t1Var = new C7694t1();
        f18028c = t1Var;
        t1Var.mo19803k();
    }

    public C7694t1() {
        this(10);
    }

    public C7694t1(int i) {
        this(new ArrayList(i));
    }

    public C7694t1(ArrayList<Object> arrayList) {
        this.f18029b = arrayList;
    }

    /* renamed from: a */
    public static String m19795a(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof AbstractC7539a0 ? ((AbstractC7539a0) obj).m20377q() : C7602h1.m20126c((byte[]) obj);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7701u1
    /* renamed from: a */
    public final Object mo19685a(int i) {
        return this.f18029b.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m19805b();
        this.f18029b.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7692t, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        m19805b();
        List<?> list = collection;
        if (collection instanceof AbstractC7701u1) {
            list = ((AbstractC7701u1) collection).mo19683l();
        }
        boolean addAll = this.f18029b.addAll(i, list);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7692t, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7626k1
    /* renamed from: c */
    public final /* synthetic */ AbstractC7626k1 mo19631c(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f18029b);
            return new C7694t1(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7692t, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m19805b();
        this.f18029b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.f18029b.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof AbstractC7539a0) {
            AbstractC7539a0 a0Var = (AbstractC7539a0) obj;
            String q = a0Var.m20377q();
            if (a0Var.mo20138b()) {
                this.f18029b.set(i, q);
            }
            return q;
        }
        byte[] bArr = (byte[]) obj;
        String c = C7602h1.m20126c(bArr);
        if (C7602h1.m20127b(bArr)) {
            this.f18029b.set(i, c);
        }
        return c;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7701u1
    /* renamed from: l */
    public final List<?> mo19683l() {
        return Collections.unmodifiableList(this.f18029b);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7701u1
    /* renamed from: m */
    public final AbstractC7701u1 mo19682m() {
        return mo19804j() ? new C7724x3(this) : this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m19805b();
        Object remove = this.f18029b.remove(i);
        ((AbstractList) this).modCount++;
        return m19795a(remove);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        m19805b();
        return m19795a(this.f18029b.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18029b.size();
    }
}
