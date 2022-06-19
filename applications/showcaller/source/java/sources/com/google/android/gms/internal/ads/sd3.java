package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sd3.class */
final class sd3 extends uc3<Double> implements RandomAccess, re3, tf3 {

    /* renamed from: e */
    private static final sd3 f29454e;

    /* renamed from: f */
    private double[] f29455f;

    /* renamed from: g */
    private int f29456g;

    static {
        sd3 sd3Var = new sd3(new double[0], 0);
        f29454e = sd3Var;
        sd3Var.mo10354b();
    }

    sd3() {
        this(new double[10], 0);
    }

    private sd3(double[] dArr, int i) {
        this.f29455f = dArr;
        this.f29456g = i;
    }

    /* renamed from: e */
    private final void m11079e(int i) {
        if (i < 0 || i >= this.f29456g) {
            throw new IndexOutOfBoundsException(m11078h(i));
        }
    }

    /* renamed from: h */
    private final String m11078h(int i) {
        int i2 = this.f29456g;
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
        if (i >= this.f29456g) {
            return new sd3(Arrays.copyOf(this.f29455f, i), this.f29456g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        double doubleValue = ((Double) obj).doubleValue();
        m10353c();
        if (i < 0 || i > (i2 = this.f29456g)) {
            throw new IndexOutOfBoundsException(m11078h(i));
        }
        double[] dArr = this.f29455f;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.f29455f, i, dArr2, i + 1, this.f29456g - i);
            this.f29455f = dArr2;
        }
        this.f29455f[i] = doubleValue;
        this.f29456g++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        m11080d(((Double) obj).doubleValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        m10353c();
        se3.m11072a(collection);
        if (!(collection instanceof sd3)) {
            return super.addAll(collection);
        }
        sd3 sd3Var = (sd3) collection;
        int i = sd3Var.f29456g;
        if (i == 0) {
            return false;
        }
        int i2 = this.f29456g;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        double[] dArr = this.f29455f;
        if (i3 > dArr.length) {
            this.f29455f = Arrays.copyOf(dArr, i3);
        }
        System.arraycopy(sd3Var.f29455f, 0, this.f29455f, this.f29456g, sd3Var.f29456g);
        this.f29456g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    /* renamed from: d */
    public final void m11080d(double d) {
        m10353c();
        int i = this.f29456g;
        double[] dArr = this.f29455f;
        if (i == dArr.length) {
            double[] dArr2 = new double[((i * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.f29455f = dArr2;
        }
        double[] dArr3 = this.f29455f;
        int i2 = this.f29456g;
        this.f29456g = i2 + 1;
        dArr3[i2] = d;
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sd3)) {
            return super.equals(obj);
        }
        sd3 sd3Var = (sd3) obj;
        if (this.f29456g != sd3Var.f29456g) {
            return false;
        }
        double[] dArr = sd3Var.f29455f;
        for (int i = 0; i < this.f29456g; i++) {
            if (Double.doubleToLongBits(this.f29455f[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        m11079e(i);
        return Double.valueOf(this.f29455f[i]);
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f29456g; i2++) {
            i = (i * 31) + se3.m11068e(Double.doubleToLongBits(this.f29455f[i2]));
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double doubleValue = ((Double) obj).doubleValue();
        int i = this.f29456g;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f29455f[i2] == doubleValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        m10353c();
        m11079e(i);
        double[] dArr = this.f29455f;
        double d = dArr[i];
        int i2 = this.f29456g;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.f29456g--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m10353c();
        if (i2 >= i) {
            double[] dArr = this.f29455f;
            System.arraycopy(dArr, i2, dArr, i, this.f29456g - i2);
            this.f29456g -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        m10353c();
        m11079e(i);
        double[] dArr = this.f29455f;
        double d = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29456g;
    }
}
