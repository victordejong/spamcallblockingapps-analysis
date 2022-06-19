package com.google.protobuf;

import com.google.protobuf.C2665x;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.protobuf.f */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/f.class */
final class C2599f extends AbstractC2576c<Boolean> implements C2665x.AbstractC2666a, RandomAccess, AbstractC2662v0 {

    /* renamed from: e */
    private static final C2599f f11090e;

    /* renamed from: c */
    private boolean[] f11091c;

    /* renamed from: d */
    private int f11092d;

    static {
        C2599f c2599f = new C2599f(new boolean[0], 0);
        f11090e = c2599f;
        c2599f.mo2236h();
    }

    C2599f() {
        this(new boolean[10], 0);
    }

    private C2599f(boolean[] zArr, int i) {
        this.f11091c = zArr;
        this.f11092d = i;
    }

    /* renamed from: B */
    private String m2757B(int i) {
        return "Index:" + i + ", Size:" + this.f11092d;
    }

    /* renamed from: p */
    private void m2750p(int i, boolean z) {
        int i2;
        m2894a();
        if (i < 0 || i > (i2 = this.f11092d)) {
            throw new IndexOutOfBoundsException(m2757B(i));
        }
        boolean[] zArr = this.f11091c;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.f11091c, i, zArr2, i + 1, this.f11092d - i);
            this.f11091c = zArr2;
        }
        this.f11091c[i] = z;
        this.f11092d++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: u */
    private void m2748u(int i) {
        if (i < 0 || i >= this.f11092d) {
            throw new IndexOutOfBoundsException(m2757B(i));
        }
    }

    /* renamed from: A */
    public boolean m2758A(int i) {
        m2748u(i);
        return this.f11091c[i];
    }

    /* renamed from: C */
    public C2665x.AbstractC2666a mo2235d(int i) {
        if (i >= this.f11092d) {
            return new C2599f(Arrays.copyOf(this.f11091c, i), this.f11092d);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: F */
    public Boolean remove(int i) {
        m2894a();
        m2748u(i);
        boolean[] zArr = this.f11091c;
        boolean z = zArr[i];
        int i2 = this.f11092d;
        if (i < i2 - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (i2 - i) - 1);
        }
        this.f11092d--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    /* renamed from: G */
    public Boolean set(int i, Boolean bool) {
        return Boolean.valueOf(m2753I(i, bool.booleanValue()));
    }

    /* renamed from: I */
    public boolean m2753I(int i, boolean z) {
        m2894a();
        m2748u(i);
        boolean[] zArr = this.f11091c;
        boolean z2 = zArr[i];
        zArr[i] = z;
        return z2;
    }

    @Override // com.google.protobuf.AbstractC2576c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Boolean> collection) {
        m2894a();
        C2665x.m2251a(collection);
        if (!(collection instanceof C2599f)) {
            return super.addAll(collection);
        }
        C2599f c2599f = (C2599f) collection;
        int i = c2599f.f11092d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f11092d;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        boolean[] zArr = this.f11091c;
        if (i3 > zArr.length) {
            this.f11091c = Arrays.copyOf(zArr, i3);
        }
        System.arraycopy(c2599f.f11091c, 0, this.f11091c, this.f11092d, c2599f.f11092d);
        this.f11092d = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.protobuf.AbstractC2576c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2599f)) {
            return super.equals(obj);
        }
        C2599f c2599f = (C2599f) obj;
        if (this.f11092d != c2599f.f11092d) {
            return false;
        }
        boolean[] zArr = c2599f.f11091c;
        for (int i = 0; i < this.f11092d; i++) {
            if (this.f11091c[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.AbstractC2576c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f11092d; i2++) {
            i = (i * 31) + C2665x.m2249c(this.f11091c[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f11091c[i] == booleanValue) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: j */
    public void add(int i, Boolean bool) {
        m2750p(i, bool.booleanValue());
    }

    /* renamed from: k */
    public boolean add(Boolean bool) {
        m2749r(bool.booleanValue());
        return true;
    }

    /* renamed from: r */
    public void m2749r(boolean z) {
        m2894a();
        int i = this.f11092d;
        boolean[] zArr = this.f11091c;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[((i * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.f11091c = zArr2;
        }
        boolean[] zArr3 = this.f11091c;
        int i2 = this.f11092d;
        this.f11092d = i2 + 1;
        zArr3[i2] = z;
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i, int i2) {
        m2894a();
        if (i2 >= i) {
            boolean[] zArr = this.f11091c;
            System.arraycopy(zArr, i2, zArr, i, this.f11092d - i2);
            this.f11092d -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f11092d;
    }

    /* renamed from: x */
    public Boolean get(int i) {
        return Boolean.valueOf(m2758A(i));
    }
}
