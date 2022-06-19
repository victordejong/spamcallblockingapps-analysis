package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.i5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/i5.class */
final class C7406i5 extends AbstractC7503p4<Double> implements RandomAccess, AbstractC7351e6, AbstractC7380g7 {

    /* renamed from: e */
    private static final C7406i5 f34520e;

    /* renamed from: f */
    private double[] f34521f;

    /* renamed from: g */
    private int f34522g;

    static {
        C7406i5 c7406i5 = new C7406i5(new double[0], 0);
        f34520e = c7406i5;
        c7406i5.mo7028b();
    }

    C7406i5() {
        this(new double[10], 0);
    }

    private C7406i5(double[] dArr, int i) {
        this.f34521f = dArr;
        this.f34522g = i;
    }

    /* renamed from: e */
    private final void m7335e(int i) {
        if (i < 0 || i >= this.f34522g) {
            throw new IndexOutOfBoundsException(m7334h(i));
        }
    }

    /* renamed from: h */
    private final String m7334h(int i) {
        int i2 = this.f34522g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7351e6
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC7351e6 mo6737a(int i) {
        if (i >= this.f34522g) {
            return new C7406i5(Arrays.copyOf(this.f34521f, i), this.f34522g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        double doubleValue = ((Double) obj).doubleValue();
        m7027c();
        if (i < 0 || i > (i2 = this.f34522g)) {
            throw new IndexOutOfBoundsException(m7334h(i));
        }
        double[] dArr = this.f34521f;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.f34521f, i, dArr2, i + 1, this.f34522g - i);
            this.f34521f = dArr2;
        }
        this.f34521f[i] = doubleValue;
        this.f34522g++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        m7336d(((Double) obj).doubleValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        m7027c();
        C7365f6.m7503a(collection);
        if (!(collection instanceof C7406i5)) {
            return super.addAll(collection);
        }
        C7406i5 c7406i5 = (C7406i5) collection;
        int i = c7406i5.f34522g;
        if (i == 0) {
            return false;
        }
        int i2 = this.f34522g;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        double[] dArr = this.f34521f;
        if (i3 > dArr.length) {
            this.f34521f = Arrays.copyOf(dArr, i3);
        }
        System.arraycopy(c7406i5.f34521f, 0, this.f34521f, this.f34522g, c7406i5.f34522g);
        this.f34522g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    /* renamed from: d */
    public final void m7336d(double d) {
        m7027c();
        int i = this.f34522g;
        double[] dArr = this.f34521f;
        if (i == dArr.length) {
            double[] dArr2 = new double[((i * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.f34521f = dArr2;
        }
        double[] dArr3 = this.f34521f;
        int i2 = this.f34522g;
        this.f34522g = i2 + 1;
        dArr3[i2] = d;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7406i5)) {
            return super.equals(obj);
        }
        C7406i5 c7406i5 = (C7406i5) obj;
        if (this.f34522g != c7406i5.f34522g) {
            return false;
        }
        double[] dArr = c7406i5.f34521f;
        for (int i = 0; i < this.f34522g; i++) {
            if (Double.doubleToLongBits(this.f34521f[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        m7335e(i);
        return Double.valueOf(this.f34521f[i]);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f34522g; i2++) {
            i = (i * 31) + C7365f6.m7499e(Double.doubleToLongBits(this.f34521f[i2]));
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double doubleValue = ((Double) obj).doubleValue();
        int i = this.f34522g;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f34521f[i2] == doubleValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        m7027c();
        m7335e(i);
        double[] dArr = this.f34521f;
        double d = dArr[i];
        int i2 = this.f34522g;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.f34522g--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m7027c();
        if (i2 >= i) {
            double[] dArr = this.f34521f;
            System.arraycopy(dArr, i2, dArr, i, this.f34522g - i2);
            this.f34522g -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        m7027c();
        m7335e(i);
        double[] dArr = this.f34521f;
        double d = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f34522g;
    }
}
