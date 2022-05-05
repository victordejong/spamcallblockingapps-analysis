package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.api.Api;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhl.class */
final class zzhl extends zzgl<Double> implements zzii<Double>, zzjt, RandomAccess {

    /* renamed from: g */
    private double[] f8495g;

    /* renamed from: h */
    private int f8496h;

    static {
        new zzhl(new double[0], 0).zzb();
    }

    zzhl() {
        this(new double[10], 0);
    }

    private zzhl(double[] dArr, int i) {
        this.f8495g = dArr;
        this.f8496h = i;
    }

    /* renamed from: e */
    private final void m12477e(int i) {
        if (i < 0 || i >= this.f8496h) {
            throw new IndexOutOfBoundsException(m12476f(i));
        }
    }

    /* renamed from: f */
    private final String m12476f(int i) {
        int i2 = this.f8496h;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzii
    /* renamed from: a */
    public final /* synthetic */ zzii<Double> mo12266a(int i) {
        if (i >= this.f8496h) {
            return new zzhl(Arrays.copyOf(this.f8495g, i), this.f8496h);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        double doubleValue = ((Double) obj).doubleValue();
        m12656c();
        if (i < 0 || i > (i2 = this.f8496h)) {
            throw new IndexOutOfBoundsException(m12476f(i));
        }
        double[] dArr = this.f8495g;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.f8495g, i, dArr2, i + 1, this.f8496h - i);
            this.f8495g = dArr2;
        }
        this.f8495g[i] = doubleValue;
        this.f8496h++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m12478d(((Double) obj).doubleValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        m12656c();
        zzic.m12394d(collection);
        if (!(collection instanceof zzhl)) {
            return super.addAll(collection);
        }
        zzhl zzhlVar = (zzhl) collection;
        int i = zzhlVar.f8496h;
        if (i == 0) {
            return false;
        }
        int i2 = this.f8496h;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 >= i) {
            int i3 = i2 + i;
            double[] dArr = this.f8495g;
            if (i3 > dArr.length) {
                this.f8495g = Arrays.copyOf(dArr, i3);
            }
            System.arraycopy(zzhlVar.f8495g, 0, this.f8495g, this.f8496h, zzhlVar.f8496h);
            this.f8496h = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    /* renamed from: d */
    public final void m12478d(double d) {
        m12656c();
        int i = this.f8496h;
        double[] dArr = this.f8495g;
        if (i == dArr.length) {
            double[] dArr2 = new double[((i * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.f8495g = dArr2;
        }
        double[] dArr3 = this.f8495g;
        int i2 = this.f8496h;
        this.f8496h = i2 + 1;
        dArr3[i2] = d;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzhl)) {
            return super.equals(obj);
        }
        zzhl zzhlVar = (zzhl) obj;
        if (this.f8496h != zzhlVar.f8496h) {
            return false;
        }
        double[] dArr = zzhlVar.f8495g;
        for (int i = 0; i < this.f8496h; i++) {
            if (Double.doubleToLongBits(this.f8495g[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m12477e(i);
        return Double.valueOf(this.f8495g[i]);
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f8496h; i2++) {
            i = (i * 31) + zzic.m12396b(Double.doubleToLongBits(this.f8495g[i2]));
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double doubleValue = ((Double) obj).doubleValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f8495g[i] == doubleValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m12656c();
        m12477e(i);
        double[] dArr = this.f8495g;
        double d = dArr[i];
        int i2 = this.f8496h;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.f8496h--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m12656c();
        if (i2 >= i) {
            double[] dArr = this.f8495g;
            System.arraycopy(dArr, i2, dArr, i, this.f8496h - i2);
            this.f8496h -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        m12656c();
        m12477e(i);
        double[] dArr = this.f8495g;
        double d = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8496h;
    }
}
