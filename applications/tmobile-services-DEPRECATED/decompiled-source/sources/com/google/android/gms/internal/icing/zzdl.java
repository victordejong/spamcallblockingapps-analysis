package com.google.android.gms.internal.icing;

import com.google.android.gms.common.api.Api;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdl.class */
final class zzdl extends zzcp<Double> implements zzee<Double>, zzfq, RandomAccess {

    /* renamed from: i */
    private static final zzdl f7978i;

    /* renamed from: g */
    private double[] f7979g;

    /* renamed from: h */
    private int f7980h;

    static {
        zzdl zzdlVar = new zzdl(new double[0], 0);
        f7978i = zzdlVar;
        zzdlVar.mo13794q();
    }

    zzdl() {
        this(new double[10], 0);
    }

    private zzdl(double[] dArr, int i) {
        this.f7979g = dArr;
        this.f7980h = i;
    }

    /* renamed from: d */
    public static zzdl m13870d() {
        return f7978i;
    }

    /* renamed from: e */
    private final void m13869e(int i) {
        if (i < 0 || i >= this.f7980h) {
            throw new IndexOutOfBoundsException(m13868f(i));
        }
    }

    /* renamed from: f */
    private final String m13868f(int i) {
        int i2 = this.f7980h;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        double doubleValue = ((Double) obj).doubleValue();
        m13986c();
        if (i < 0 || i > (i2 = this.f7980h)) {
            throw new IndexOutOfBoundsException(m13868f(i));
        }
        double[] dArr = this.f7979g;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.f7979g, i, dArr2, i + 1, this.f7980h - i);
            this.f7979g = dArr2;
        }
        this.f7979g[i] = doubleValue;
        this.f7980h++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        m13986c();
        int i = this.f7980h;
        double[] dArr = this.f7979g;
        if (i == dArr.length) {
            double[] dArr2 = new double[((i * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.f7979g = dArr2;
        }
        double[] dArr3 = this.f7979g;
        int i2 = this.f7980h;
        this.f7980h = i2 + 1;
        dArr3[i2] = doubleValue;
        return true;
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        m13986c();
        zzeb.m13806a(collection);
        if (!(collection instanceof zzdl)) {
            return super.addAll(collection);
        }
        zzdl zzdlVar = (zzdl) collection;
        int i = zzdlVar.f7980h;
        if (i == 0) {
            return false;
        }
        int i2 = this.f7980h;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 >= i) {
            int i3 = i2 + i;
            double[] dArr = this.f7979g;
            if (i3 > dArr.length) {
                this.f7979g = Arrays.copyOf(dArr, i3);
            }
            System.arraycopy(zzdlVar.f7979g, 0, this.f7979g, this.f7980h, zzdlVar.f7980h);
            this.f7980h = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.icing.zzee
    /* renamed from: b0 */
    public final /* synthetic */ zzee<Double> mo13713b0(int i) {
        if (i >= this.f7980h) {
            return new zzdl(Arrays.copyOf(this.f7979g, i), this.f7980h);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzdl)) {
            return super.equals(obj);
        }
        zzdl zzdlVar = (zzdl) obj;
        if (this.f7980h != zzdlVar.f7980h) {
            return false;
        }
        double[] dArr = zzdlVar.f7979g;
        for (int i = 0; i < this.f7980h; i++) {
            if (Double.doubleToLongBits(this.f7979g[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m13869e(i);
        return Double.valueOf(this.f7979g[i]);
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f7980h; i2++) {
            i = (i * 31) + zzeb.m13797j(Double.doubleToLongBits(this.f7979g[i2]));
        }
        return i;
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m13986c();
        m13869e(i);
        double[] dArr = this.f7979g;
        double d = dArr[i];
        int i2 = this.f7980h;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.f7980h--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m13986c();
        for (int i = 0; i < this.f7980h; i++) {
            if (obj.equals(Double.valueOf(this.f7979g[i]))) {
                double[] dArr = this.f7979g;
                System.arraycopy(dArr, i + 1, dArr, i, (this.f7980h - i) - 1);
                this.f7980h--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m13986c();
        if (i2 >= i) {
            double[] dArr = this.f7979g;
            System.arraycopy(dArr, i2, dArr, i, this.f7980h - i2);
            this.f7980h -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        m13986c();
        m13869e(i);
        double[] dArr = this.f7979g;
        double d = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f7980h;
    }
}
