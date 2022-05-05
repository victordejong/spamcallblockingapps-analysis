package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.q.r2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/r2.class */
public final class C8718r2 extends AbstractC8690o2<Boolean> implements AbstractC8638i4<Boolean>, AbstractC8748u5, RandomAccess {

    /* renamed from: b */
    public boolean[] f19943b;

    /* renamed from: c */
    public int f19944c;

    static {
        new C8718r2().mo17285g();
    }

    public C8718r2() {
        this(new boolean[10], 0);
    }

    public C8718r2(boolean[] zArr, int i) {
        this.f19943b = zArr;
        this.f19944c = i;
    }

    /* renamed from: a */
    public final void m17233a(int i, boolean z) {
        int i2;
        m17286f();
        if (i < 0 || i > (i2 = this.f19944c)) {
            throw new IndexOutOfBoundsException(m17230h(i));
        }
        boolean[] zArr = this.f19943b;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.f19943b, i, zArr2, i + 1, this.f19944c - i);
            this.f19943b = zArr2;
        }
        this.f19943b[i] = z;
        this.f19944c++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: a */
    public final void m17232a(boolean z) {
        m17233a(this.f19944c, z);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m17233a(i, ((Boolean) obj).booleanValue());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8690o2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        m17286f();
        C8591e4.m17688a(collection);
        if (!(collection instanceof C8718r2)) {
            return super.addAll(collection);
        }
        C8718r2 r2Var = (C8718r2) collection;
        int i = r2Var.f19944c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f19944c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            boolean[] zArr = this.f19943b;
            if (i3 > zArr.length) {
                this.f19943b = Arrays.copyOf(zArr, i3);
            }
            System.arraycopy(r2Var.f19943b, 0, this.f19943b, this.f19944c, r2Var.f19944c);
            this.f19944c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8690o2, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C8718r2)) {
            return super.equals(obj);
        }
        C8718r2 r2Var = (C8718r2) obj;
        if (this.f19944c != r2Var.f19944c) {
            return false;
        }
        boolean[] zArr = r2Var.f19943b;
        for (int i = 0; i < this.f19944c; i++) {
            if (this.f19943b[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8638i4
    /* renamed from: f */
    public final /* synthetic */ AbstractC8638i4<Boolean> mo16949f(int i) {
        if (i >= this.f19944c) {
            return new C8718r2(Arrays.copyOf(this.f19943b, i), this.f19944c);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: g */
    public final void m17231g(int i) {
        if (i < 0 || i >= this.f19944c) {
            throw new IndexOutOfBoundsException(m17230h(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m17231g(i);
        return Boolean.valueOf(this.f19943b[i]);
    }

    /* renamed from: h */
    public final String m17230h(int i) {
        int i2 = this.f19944c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8690o2, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f19944c; i2++) {
            i = (i * 31) + C8591e4.m17685a(this.f19943b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m17286f();
        m17231g(i);
        boolean[] zArr = this.f19943b;
        boolean z = zArr[i];
        int i2 = this.f19944c;
        if (i < i2 - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, i2 - i);
        }
        this.f19944c--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8690o2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m17286f();
        for (int i = 0; i < this.f19944c; i++) {
            if (obj.equals(Boolean.valueOf(this.f19943b[i]))) {
                boolean[] zArr = this.f19943b;
                System.arraycopy(zArr, i + 1, zArr, i, this.f19944c - i);
                this.f19944c--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m17286f();
        if (i2 >= i) {
            boolean[] zArr = this.f19943b;
            System.arraycopy(zArr, i2, zArr, i, this.f19944c - i2);
            this.f19944c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m17286f();
        m17231g(i);
        boolean[] zArr = this.f19943b;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f19944c;
    }
}
