package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzcn;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
/* renamed from: c.d.b.d.g.c.k1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/k1.class */
public final class C4367k1<E> extends AbstractC4374l<E> {

    /* renamed from: c */
    public static final C4367k1<Object> f16543c;

    /* renamed from: b */
    public final List<E> f16544b;

    static {
        C4367k1<Object> k1Var = new C4367k1<>();
        f16543c = k1Var;
        k1Var.zzv();
    }

    public C4367k1() {
        this(new ArrayList(10));
    }

    public C4367k1(List<E> list) {
        this.f16544b = list;
    }

    /* renamed from: b */
    public static <E> C4367k1<E> m25885b() {
        return (C4367k1<E>) f16543c;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        m25822a();
        this.f16544b.add(i, e);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.clearcut.zzcn
    /* renamed from: c */
    public final /* synthetic */ zzcn mo10687c(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f16544b);
            return new C4367k1(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        return this.f16544b.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final E remove(int i) {
        m25822a();
        E remove = this.f16544b.remove(i);
        ((AbstractList) this).modCount++;
        return remove;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        m25822a();
        E e2 = this.f16544b.set(i, e);
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f16544b.size();
    }
}
