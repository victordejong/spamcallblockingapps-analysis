package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.q.s4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/s4.class */
public final class C8729s4 extends AbstractC8690o2<String> implements AbstractC8738t4, RandomAccess {

    /* renamed from: c */
    public static final C8729s4 f19958c;

    /* renamed from: b */
    public final List<Object> f19959b;

    static {
        C8729s4 s4Var = new C8729s4();
        f19958c = s4Var;
        s4Var.mo17285g();
    }

    public C8729s4() {
        this(10);
    }

    public C8729s4(int i) {
        this(new ArrayList(i));
    }

    public C8729s4(ArrayList<Object> arrayList) {
        this.f19959b = arrayList;
    }

    /* renamed from: a */
    public static String m17204a(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof AbstractC8736t2 ? ((AbstractC8736t2) obj).m17173b() : C8591e4.m17682c((byte[]) obj);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8738t4
    /* renamed from: a */
    public final Object mo17118a(int i) {
        return this.f19959b.get(i);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8738t4
    /* renamed from: a */
    public final void mo17117a(AbstractC8736t2 t2Var) {
        m17286f();
        this.f19959b.add(t2Var);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m17286f();
        this.f19959b.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8690o2, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        m17286f();
        List<?> list = collection;
        if (collection instanceof AbstractC8738t4) {
            list = ((AbstractC8738t4) collection).mo17115f0();
        }
        boolean addAll = this.f19959b.addAll(i, list);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8690o2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8690o2, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m17286f();
        this.f19959b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8638i4
    /* renamed from: f */
    public final /* synthetic */ AbstractC8638i4 mo16949f(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f19959b);
            return new C8729s4(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8738t4
    /* renamed from: f0 */
    public final List<?> mo17115f0() {
        return Collections.unmodifiableList(this.f19959b);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.f19959b.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof AbstractC8736t2) {
            AbstractC8736t2 t2Var = (AbstractC8736t2) obj;
            String b = t2Var.m17173b();
            if (t2Var.mo17170c()) {
                this.f19959b.set(i, b);
            }
            return b;
        }
        byte[] bArr = (byte[]) obj;
        String c = C8591e4.m17682c(bArr);
        if (C8591e4.m17683b(bArr)) {
            this.f19959b.set(i, c);
        }
        return c;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8738t4
    /* renamed from: p */
    public final AbstractC8738t4 mo17114p() {
        return mo17284i() ? new C8749u6(this) : this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m17286f();
        Object remove = this.f19959b.remove(i);
        ((AbstractList) this).modCount++;
        return m17204a(remove);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        m17286f();
        return m17204a(this.f19959b.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f19959b.size();
    }
}
