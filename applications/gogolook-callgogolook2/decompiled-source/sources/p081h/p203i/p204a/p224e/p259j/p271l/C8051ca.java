package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.l.ca */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/ca.class */
public final class C8051ca extends AbstractC8145h8<String> implements AbstractC8108fa, RandomAccess {

    /* renamed from: c */
    public static final C8051ca f18780c;

    /* renamed from: b */
    public final List<Object> f18781b;

    static {
        C8051ca caVar = new C8051ca();
        f18780c = caVar;
        caVar.mo18116e();
    }

    public C8051ca() {
        this(10);
    }

    public C8051ca(int i) {
        this(new ArrayList(i));
    }

    public C8051ca(ArrayList<Object> arrayList) {
        this.f18781b = arrayList;
    }

    /* renamed from: a */
    public static String m18640a(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof AbstractC8209k8 ? ((AbstractC8209k8) obj).m18375c() : C8302p9.m18199c((byte[]) obj);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8108fa
    /* renamed from: B */
    public final List<?> mo18459B() {
        return Collections.unmodifiableList(this.f18781b);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8108fa
    /* renamed from: a */
    public final Object mo18458a(int i) {
        return this.f18781b.get(i);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8108fa
    /* renamed from: a */
    public final void mo18456a(AbstractC8209k8 k8Var) {
        m18479b();
        this.f18781b.add(k8Var);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m18479b();
        this.f18781b.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8145h8, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        m18479b();
        List<?> list = collection;
        if (collection instanceof AbstractC8108fa) {
            list = ((AbstractC8108fa) collection).mo18459B();
        }
        boolean addAll = this.f18781b.addAll(i, list);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8145h8, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8409v9
    /* renamed from: b */
    public final /* synthetic */ AbstractC8409v9 mo18117b(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f18781b);
            return new C8051ca(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8145h8, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m18479b();
        this.f18781b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.f18781b.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof AbstractC8209k8) {
            AbstractC8209k8 k8Var = (AbstractC8209k8) obj;
            String c = k8Var.m18375c();
            if (k8Var.mo18140q()) {
                this.f18781b.set(i, c);
            }
            return c;
        }
        byte[] bArr = (byte[]) obj;
        String c2 = C8302p9.m18199c(bArr);
        if (C8302p9.m18200b(bArr)) {
            this.f18781b.set(i, c2);
        }
        return c2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8108fa
    /* renamed from: i0 */
    public final AbstractC8108fa mo18455i0() {
        return mo18115f() ? new C8171j(this) : this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m18479b();
        Object remove = this.f18781b.remove(i);
        ((AbstractList) this).modCount++;
        return m18640a(remove);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        m18479b();
        return m18640a(this.f18781b.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18781b.size();
    }
}
