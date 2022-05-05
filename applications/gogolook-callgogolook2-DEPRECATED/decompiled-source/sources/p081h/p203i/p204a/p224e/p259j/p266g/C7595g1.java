package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.g.g1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/g1.class */
public final class C7595g1 extends AbstractC7692t<Integer> implements AbstractC7626k1<Integer>, RandomAccess {

    /* renamed from: b */
    public int[] f17855b;

    /* renamed from: c */
    public int f17856c;

    static {
        new C7595g1().mo19803k();
    }

    public C7595g1() {
        this(new int[10], 0);
    }

    public C7595g1(int[] iArr, int i) {
        this.f17855b = iArr;
        this.f17856c = i;
    }

    /* renamed from: a */
    public final void m20160a(int i, int i2) {
        int i3;
        m19805b();
        if (i < 0 || i > (i3 = this.f17856c)) {
            throw new IndexOutOfBoundsException(m20157i(i));
        }
        int[] iArr = this.f17855b;
        if (i3 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i3 - i);
        } else {
            int[] iArr2 = new int[((i3 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f17855b, i, iArr2, i + 1, this.f17856c - i);
            this.f17855b = iArr2;
        }
        this.f17855b[i] = i2;
        this.f17856c++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m20160a(i, ((Integer) obj).intValue());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7692t, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        m19805b();
        C7602h1.m20132a(collection);
        if (!(collection instanceof C7595g1)) {
            return super.addAll(collection);
        }
        C7595g1 g1Var = (C7595g1) collection;
        int i = g1Var.f17856c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f17856c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            int[] iArr = this.f17855b;
            if (i3 > iArr.length) {
                this.f17855b = Arrays.copyOf(iArr, i3);
            }
            System.arraycopy(g1Var.f17855b, 0, this.f17855b, this.f17856c, g1Var.f17856c);
            this.f17856c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7626k1
    /* renamed from: c */
    public final /* synthetic */ AbstractC7626k1<Integer> mo19631c(int i) {
        if (i >= this.f17856c) {
            return new C7595g1(Arrays.copyOf(this.f17855b, i), this.f17856c);
        }
        throw new IllegalArgumentException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7692t, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7595g1)) {
            return super.equals(obj);
        }
        C7595g1 g1Var = (C7595g1) obj;
        if (this.f17856c != g1Var.f17856c) {
            return false;
        }
        int[] iArr = g1Var.f17855b;
        for (int i = 0; i < this.f17856c; i++) {
            if (this.f17855b[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final void m20159g(int i) {
        m20160a(this.f17856c, i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(getInt(i));
    }

    public final int getInt(int i) {
        m20158h(i);
        return this.f17855b[i];
    }

    /* renamed from: h */
    public final void m20158h(int i) {
        if (i < 0 || i >= this.f17856c) {
            throw new IndexOutOfBoundsException(m20157i(i));
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7692t, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f17856c; i2++) {
            i = (i * 31) + this.f17855b[i2];
        }
        return i;
    }

    /* renamed from: i */
    public final String m20157i(int i) {
        int i2 = this.f17856c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m19805b();
        m20158h(i);
        int[] iArr = this.f17855b;
        int i2 = iArr[i];
        int i3 = this.f17856c;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, i3 - i);
        }
        this.f17856c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7692t, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m19805b();
        for (int i = 0; i < this.f17856c; i++) {
            if (obj.equals(Integer.valueOf(this.f17855b[i]))) {
                int[] iArr = this.f17855b;
                System.arraycopy(iArr, i + 1, iArr, i, this.f17856c - i);
                this.f17856c--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m19805b();
        if (i2 >= i) {
            int[] iArr = this.f17855b;
            System.arraycopy(iArr, i2, iArr, i, this.f17856c - i2);
            this.f17856c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m19805b();
        m20158h(i);
        int[] iArr = this.f17855b;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f17856c;
    }
}
