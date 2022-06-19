package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/je3.class */
final class je3 extends uc3<Integer> implements RandomAccess, ne3, tf3 {

    /* renamed from: e */
    private static final je3 f24853e;

    /* renamed from: f */
    private int[] f24854f;

    /* renamed from: g */
    private int f24855g;

    static {
        je3 je3Var = new je3(new int[0], 0);
        f24853e = je3Var;
        je3Var.mo10354b();
    }

    je3() {
        this(new int[10], 0);
    }

    private je3(int[] iArr, int i) {
        this.f24854f = iArr;
        this.f24855g = i;
    }

    /* renamed from: d */
    public static je3 m14135d() {
        return f24853e;
    }

    /* renamed from: h */
    private final void m14133h(int i) {
        if (i < 0 || i >= this.f24855g) {
            throw new IndexOutOfBoundsException(m14132i(i));
        }
    }

    /* renamed from: i */
    private final String m14132i(int i) {
        int i2 = this.f24855g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.ne3
    /* renamed from: A */
    public final ne3 mo8859a(int i) {
        if (i >= this.f24855g) {
            return new je3(Arrays.copyOf(this.f24854f, i), this.f24855g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        m10353c();
        if (i < 0 || i > (i2 = this.f24855g)) {
            throw new IndexOutOfBoundsException(m14132i(i));
        }
        int[] iArr = this.f24854f;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f24854f, i, iArr2, i + 1, this.f24855g - i);
            this.f24854f = iArr2;
        }
        this.f24854f[i] = intValue;
        this.f24855g++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        mo12940d0(((Integer) obj).intValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        m10353c();
        se3.m11072a(collection);
        if (!(collection instanceof je3)) {
            return super.addAll(collection);
        }
        je3 je3Var = (je3) collection;
        int i = je3Var.f24855g;
        if (i == 0) {
            return false;
        }
        int i2 = this.f24855g;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.f24854f;
        if (i3 > iArr.length) {
            this.f24854f = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(je3Var.f24854f, 0, this.f24854f, this.f24855g, je3Var.f24855g);
        this.f24855g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.ads.ne3
    /* renamed from: d0 */
    public final void mo12940d0(int i) {
        m10353c();
        int i2 = this.f24855g;
        int[] iArr = this.f24854f;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f24854f = iArr2;
        }
        int[] iArr3 = this.f24854f;
        int i3 = this.f24855g;
        this.f24855g = i3 + 1;
        iArr3[i3] = i;
    }

    /* renamed from: e */
    public final int m14134e(int i) {
        m14133h(i);
        return this.f24854f[i];
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof je3)) {
            return super.equals(obj);
        }
        je3 je3Var = (je3) obj;
        if (this.f24855g != je3Var.f24855g) {
            return false;
        }
        int[] iArr = je3Var.f24854f;
        for (int i = 0; i < this.f24855g; i++) {
            if (this.f24854f[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        m14133h(i);
        return Integer.valueOf(this.f24854f[i]);
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f24855g; i2++) {
            i = (i * 31) + this.f24854f[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int i = this.f24855g;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f24854f[i2] == intValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        m10353c();
        m14133h(i);
        int[] iArr = this.f24854f;
        int i2 = iArr[i];
        int i3 = this.f24855g;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i3 - i) - 1);
        }
        this.f24855g--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m10353c();
        if (i2 >= i) {
            int[] iArr = this.f24854f;
            System.arraycopy(iArr, i2, iArr, i, this.f24855g - i2);
            this.f24855g -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m10353c();
        m14133h(i);
        int[] iArr = this.f24854f;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f24855g;
    }
}
