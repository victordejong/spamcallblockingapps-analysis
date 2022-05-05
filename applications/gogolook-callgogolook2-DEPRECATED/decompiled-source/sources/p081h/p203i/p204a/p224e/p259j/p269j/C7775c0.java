package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.j.c0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/c0.class */
public final class C7775c0 extends AbstractC7964z<Boolean> implements AbstractC7912s1<Boolean>, AbstractC7803f3, RandomAccess {

    /* renamed from: b */
    public boolean[] f18205b;

    /* renamed from: c */
    public int f18206c;

    static {
        new C7775c0().mo18745a();
    }

    public C7775c0() {
        this(new boolean[10], 0);
    }

    public C7775c0(boolean[] zArr, int i) {
        this.f18205b = zArr;
        this.f18206c = i;
    }

    /* renamed from: a */
    public final void m19508a(int i, boolean z) {
        int i2;
        m18744b();
        if (i < 0 || i > (i2 = this.f18206c)) {
            throw new IndexOutOfBoundsException(m19505h(i));
        }
        boolean[] zArr = this.f18205b;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.f18205b, i, zArr2, i + 1, this.f18206c - i);
            this.f18205b = zArr2;
        }
        this.f18205b[i] = z;
        this.f18206c++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: a */
    public final void m19507a(boolean z) {
        m19508a(this.f18206c, z);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m19508a(i, ((Boolean) obj).booleanValue());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7964z, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        m18744b();
        C7891p1.m19105a(collection);
        if (!(collection instanceof C7775c0)) {
            return super.addAll(collection);
        }
        C7775c0 c0Var = (C7775c0) collection;
        int i = c0Var.f18206c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f18206c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            boolean[] zArr = this.f18205b;
            if (i3 > zArr.length) {
                this.f18205b = Arrays.copyOf(zArr, i3);
            }
            System.arraycopy(c0Var.f18205b, 0, this.f18205b, this.f18206c, c0Var.f18206c);
            this.f18206c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7912s1
    /* renamed from: c */
    public final /* synthetic */ AbstractC7912s1<Boolean> mo18849c(int i) {
        if (i >= this.f18206c) {
            return new C7775c0(Arrays.copyOf(this.f18205b, i), this.f18206c);
        }
        throw new IllegalArgumentException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7964z, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7775c0)) {
            return super.equals(obj);
        }
        C7775c0 c0Var = (C7775c0) obj;
        if (this.f18206c != c0Var.f18206c) {
            return false;
        }
        boolean[] zArr = c0Var.f18205b;
        for (int i = 0; i < this.f18206c; i++) {
            if (this.f18205b[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final void m19506g(int i) {
        if (i < 0 || i >= this.f18206c) {
            throw new IndexOutOfBoundsException(m19505h(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m19506g(i);
        return Boolean.valueOf(this.f18205b[i]);
    }

    /* renamed from: h */
    public final String m19505h(int i) {
        int i2 = this.f18206c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7964z, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f18206c; i2++) {
            i = (i * 31) + C7891p1.m19102a(this.f18205b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m18744b();
        m19506g(i);
        boolean[] zArr = this.f18205b;
        boolean z = zArr[i];
        int i2 = this.f18206c;
        if (i < i2 - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, i2 - i);
        }
        this.f18206c--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7964z, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m18744b();
        for (int i = 0; i < this.f18206c; i++) {
            if (obj.equals(Boolean.valueOf(this.f18205b[i]))) {
                boolean[] zArr = this.f18205b;
                System.arraycopy(zArr, i + 1, zArr, i, this.f18206c - i);
                this.f18206c--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m18744b();
        if (i2 >= i) {
            boolean[] zArr = this.f18205b;
            System.arraycopy(zArr, i2, zArr, i, this.f18206c - i2);
            this.f18206c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m18744b();
        m19506g(i);
        boolean[] zArr = this.f18205b;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18206c;
    }
}
