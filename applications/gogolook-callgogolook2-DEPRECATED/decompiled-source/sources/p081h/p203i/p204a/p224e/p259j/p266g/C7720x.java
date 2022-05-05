package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.g.x */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/x.class */
public final class C7720x extends AbstractC7692t<Boolean> implements AbstractC7626k1<Boolean>, RandomAccess {

    /* renamed from: b */
    public boolean[] f18073b;

    /* renamed from: c */
    public int f18074c;

    static {
        new C7720x().mo19803k();
    }

    public C7720x() {
        this(new boolean[10], 0);
    }

    public C7720x(boolean[] zArr, int i) {
        this.f18073b = zArr;
        this.f18074c = i;
    }

    /* renamed from: a */
    public final void m19691a(int i, boolean z) {
        int i2;
        m19805b();
        if (i < 0 || i > (i2 = this.f18074c)) {
            throw new IndexOutOfBoundsException(m19688h(i));
        }
        boolean[] zArr = this.f18073b;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.f18073b, i, zArr2, i + 1, this.f18074c - i);
            this.f18073b = zArr2;
        }
        this.f18073b[i] = z;
        this.f18074c++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: a */
    public final void m19690a(boolean z) {
        m19691a(this.f18074c, z);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m19691a(i, ((Boolean) obj).booleanValue());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7692t, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        m19805b();
        C7602h1.m20132a(collection);
        if (!(collection instanceof C7720x)) {
            return super.addAll(collection);
        }
        C7720x xVar = (C7720x) collection;
        int i = xVar.f18074c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f18074c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            boolean[] zArr = this.f18073b;
            if (i3 > zArr.length) {
                this.f18073b = Arrays.copyOf(zArr, i3);
            }
            System.arraycopy(xVar.f18073b, 0, this.f18073b, this.f18074c, xVar.f18074c);
            this.f18074c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7626k1
    /* renamed from: c */
    public final /* synthetic */ AbstractC7626k1<Boolean> mo19631c(int i) {
        if (i >= this.f18074c) {
            return new C7720x(Arrays.copyOf(this.f18073b, i), this.f18074c);
        }
        throw new IllegalArgumentException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7692t, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7720x)) {
            return super.equals(obj);
        }
        C7720x xVar = (C7720x) obj;
        if (this.f18074c != xVar.f18074c) {
            return false;
        }
        boolean[] zArr = xVar.f18073b;
        for (int i = 0; i < this.f18074c; i++) {
            if (this.f18073b[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final void m19689g(int i) {
        if (i < 0 || i >= this.f18074c) {
            throw new IndexOutOfBoundsException(m19688h(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m19689g(i);
        return Boolean.valueOf(this.f18073b[i]);
    }

    /* renamed from: h */
    public final String m19688h(int i) {
        int i2 = this.f18074c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7692t, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f18074c; i2++) {
            i = (i * 31) + C7602h1.m20129a(this.f18073b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m19805b();
        m19689g(i);
        boolean[] zArr = this.f18073b;
        boolean z = zArr[i];
        int i2 = this.f18074c;
        if (i < i2 - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, i2 - i);
        }
        this.f18074c--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7692t, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m19805b();
        for (int i = 0; i < this.f18074c; i++) {
            if (obj.equals(Boolean.valueOf(this.f18073b[i]))) {
                boolean[] zArr = this.f18073b;
                System.arraycopy(zArr, i + 1, zArr, i, this.f18074c - i);
                this.f18074c--;
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
            boolean[] zArr = this.f18073b;
            System.arraycopy(zArr, i2, zArr, i, this.f18074c - i2);
            this.f18074c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m19805b();
        m19689g(i);
        boolean[] zArr = this.f18073b;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18074c;
    }
}
