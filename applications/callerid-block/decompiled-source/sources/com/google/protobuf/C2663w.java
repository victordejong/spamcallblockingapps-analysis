package com.google.protobuf;

import com.google.protobuf.C2665x;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.protobuf.w */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/w.class */
public final class C2663w extends AbstractC2576c<Integer> implements C2665x.AbstractC2672g, RandomAccess, AbstractC2662v0 {

    /* renamed from: e */
    private static final C2663w f11219e;

    /* renamed from: c */
    private int[] f11220c;

    /* renamed from: d */
    private int f11221d;

    static {
        C2663w wVar = new C2663w(new int[0], 0);
        f11219e = wVar;
        wVar.mo2236h();
    }

    C2663w() {
        this(new int[10], 0);
    }

    private C2663w(int[] iArr, int i) {
        this.f11220c = iArr;
        this.f11221d = i;
    }

    /* renamed from: A */
    private String m2266A(int i) {
        return "Index:" + i + ", Size:" + this.f11221d;
    }

    /* renamed from: p */
    private void m2260p(int i, int i2) {
        int i3;
        m2894a();
        if (i < 0 || i > (i3 = this.f11221d)) {
            throw new IndexOutOfBoundsException(m2266A(i));
        }
        int[] iArr = this.f11220c;
        if (i3 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i3 - i);
        } else {
            int[] iArr2 = new int[((i3 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f11220c, i, iArr2, i + 1, this.f11221d - i);
            this.f11220c = iArr2;
        }
        this.f11220c[i] = i2;
        this.f11221d++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: r */
    public static C2663w m2259r() {
        return f11219e;
    }

    /* renamed from: u */
    private void m2258u(int i) {
        if (i < 0 || i >= this.f11221d) {
            throw new IndexOutOfBoundsException(m2266A(i));
        }
    }

    /* renamed from: B */
    public Integer remove(int i) {
        m2894a();
        m2258u(i);
        int[] iArr = this.f11220c;
        int i2 = iArr[i];
        int i3 = this.f11221d;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i3 - i) - 1);
        }
        this.f11221d--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    /* renamed from: C */
    public Integer set(int i, Integer num) {
        return Integer.valueOf(m2263F(i, num.intValue()));
    }

    /* renamed from: F */
    public int m2263F(int i, int i2) {
        m2894a();
        m2258u(i);
        int[] iArr = this.f11220c;
        int i3 = iArr[i];
        iArr[i] = i2;
        return i3;
    }

    @Override // com.google.protobuf.AbstractC2576c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Integer> collection) {
        m2894a();
        C2665x.m2251a(collection);
        if (!(collection instanceof C2663w)) {
            return super.addAll(collection);
        }
        C2663w wVar = (C2663w) collection;
        int i = wVar.f11221d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f11221d;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            int[] iArr = this.f11220c;
            if (i3 > iArr.length) {
                this.f11220c = Arrays.copyOf(iArr, i3);
            }
            System.arraycopy(wVar.f11220c, 0, this.f11220c, this.f11221d, wVar.f11221d);
            this.f11221d = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.protobuf.C2665x.AbstractC2674i
    /* renamed from: d */
    public C2665x.AbstractC2674i<Integer> mo2235d(int i) {
        if (i >= this.f11221d) {
            return new C2663w(Arrays.copyOf(this.f11220c, i), this.f11221d);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.AbstractC2576c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2663w)) {
            return super.equals(obj);
        }
        C2663w wVar = (C2663w) obj;
        if (this.f11221d != wVar.f11221d) {
            return false;
        }
        int[] iArr = wVar.f11220c;
        for (int i = 0; i < this.f11221d; i++) {
            if (this.f11220c[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.AbstractC2576c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f11221d; i2++) {
            i = (i * 31) + this.f11220c[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f11220c[i] == intValue) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: j */
    public void add(int i, Integer num) {
        m2260p(i, num.intValue());
    }

    /* renamed from: k */
    public boolean add(Integer num) {
        mo2239n(num.intValue());
        return true;
    }

    @Override // com.google.protobuf.C2665x.AbstractC2672g
    /* renamed from: n */
    public void mo2239n(int i) {
        m2894a();
        int i2 = this.f11221d;
        int[] iArr = this.f11220c;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f11220c = iArr2;
        }
        int[] iArr3 = this.f11220c;
        int i3 = this.f11221d;
        this.f11221d = i3 + 1;
        iArr3[i3] = i;
    }

    @Override // com.google.protobuf.C2665x.AbstractC2672g
    /* renamed from: q */
    public int mo2238q(int i) {
        m2258u(i);
        return this.f11220c[i];
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i, int i2) {
        m2894a();
        if (i2 >= i) {
            int[] iArr = this.f11220c;
            System.arraycopy(iArr, i2, iArr, i, this.f11221d - i2);
            this.f11221d -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f11221d;
    }

    /* renamed from: x */
    public Integer get(int i) {
        return Integer.valueOf(mo2238q(i));
    }
}
