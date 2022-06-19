package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yc3.class */
final class yc3 extends uc3<Boolean> implements RandomAccess, re3, tf3 {

    /* renamed from: e */
    private static final yc3 f32474e;

    /* renamed from: f */
    private boolean[] f32475f;

    /* renamed from: g */
    private int f32476g;

    static {
        yc3 yc3Var = new yc3(new boolean[0], 0);
        f32474e = yc3Var;
        yc3Var.mo10354b();
    }

    yc3() {
        this(new boolean[10], 0);
    }

    private yc3(boolean[] zArr, int i) {
        this.f32475f = zArr;
        this.f32476g = i;
    }

    /* renamed from: e */
    private final void m8857e(int i) {
        if (i < 0 || i >= this.f32476g) {
            throw new IndexOutOfBoundsException(m8856h(i));
        }
    }

    /* renamed from: h */
    private final String m8856h(int i) {
        int i2 = this.f32476g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.re3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ re3 mo8859a(int i) {
        if (i >= this.f32476g) {
            return new yc3(Arrays.copyOf(this.f32475f, i), this.f32476g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m10353c();
        if (i < 0 || i > (i2 = this.f32476g)) {
            throw new IndexOutOfBoundsException(m8856h(i));
        }
        boolean[] zArr = this.f32475f;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.f32475f, i, zArr2, i + 1, this.f32476g - i);
            this.f32475f = zArr2;
        }
        this.f32475f[i] = booleanValue;
        this.f32476g++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        m8858d(((Boolean) obj).booleanValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        m10353c();
        se3.m11072a(collection);
        if (!(collection instanceof yc3)) {
            return super.addAll(collection);
        }
        yc3 yc3Var = (yc3) collection;
        int i = yc3Var.f32476g;
        if (i == 0) {
            return false;
        }
        int i2 = this.f32476g;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        boolean[] zArr = this.f32475f;
        if (i3 > zArr.length) {
            this.f32475f = Arrays.copyOf(zArr, i3);
        }
        System.arraycopy(yc3Var.f32475f, 0, this.f32475f, this.f32476g, yc3Var.f32476g);
        this.f32476g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    /* renamed from: d */
    public final void m8858d(boolean z) {
        m10353c();
        int i = this.f32476g;
        boolean[] zArr = this.f32475f;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[((i * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.f32475f = zArr2;
        }
        boolean[] zArr3 = this.f32475f;
        int i2 = this.f32476g;
        this.f32476g = i2 + 1;
        zArr3[i2] = z;
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yc3)) {
            return super.equals(obj);
        }
        yc3 yc3Var = (yc3) obj;
        if (this.f32476g != yc3Var.f32476g) {
            return false;
        }
        boolean[] zArr = yc3Var.f32475f;
        for (int i = 0; i < this.f32476g; i++) {
            if (this.f32475f[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        m8857e(i);
        return Boolean.valueOf(this.f32475f[i]);
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f32476g; i2++) {
            i = (i * 31) + se3.m11067f(this.f32475f[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int i = this.f32476g;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f32475f[i2] == booleanValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        m10353c();
        m8857e(i);
        boolean[] zArr = this.f32475f;
        boolean z = zArr[i];
        int i2 = this.f32476g;
        if (i < i2 - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (i2 - i) - 1);
        }
        this.f32476g--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m10353c();
        if (i2 >= i) {
            boolean[] zArr = this.f32475f;
            System.arraycopy(zArr, i2, zArr, i, this.f32476g - i2);
            this.f32476g -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m10353c();
        m8857e(i);
        boolean[] zArr = this.f32475f;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f32476g;
    }
}
