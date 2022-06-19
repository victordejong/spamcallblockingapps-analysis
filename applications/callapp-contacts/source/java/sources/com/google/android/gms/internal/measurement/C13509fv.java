package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.fv */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/fv.class */
final class C13509fv extends AbstractC13486ez<Double> implements AbstractC13533gs, AbstractC13564hw, RandomAccess {

    /* renamed from: a */
    private static final C13509fv f50733a;

    /* renamed from: b */
    private double[] f50734b;

    /* renamed from: c */
    private int f50735c;

    static {
        C13509fv c13509fv = new C13509fv(new double[0], 0);
        f50733a = c13509fv;
        c13509fv.mo12749b();
    }

    C13509fv() {
        this(new double[10], 0);
    }

    private C13509fv(double[] dArr, int i) {
        this.f50734b = dArr;
        this.f50735c = i;
    }

    /* renamed from: b */
    private final void m12800b(int i) {
        if (i < 0 || i >= this.f50735c) {
            throw new IndexOutOfBoundsException(m12799c(i));
        }
    }

    /* renamed from: c */
    private final String m12799c(int i) {
        int i2 = this.f50735c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13533gs
    /* renamed from: a */
    public final /* synthetic */ AbstractC13533gs mo12663a(int i) {
        if (i >= this.f50735c) {
            return new C13509fv(Arrays.copyOf(this.f50734b, i), this.f50735c);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public final void m12801a(double d) {
        m12885c();
        int i = this.f50735c;
        double[] dArr = this.f50734b;
        if (i == dArr.length) {
            double[] dArr2 = new double[((i * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.f50734b = dArr2;
        }
        double[] dArr3 = this.f50734b;
        int i2 = this.f50735c;
        this.f50735c = i2 + 1;
        dArr3[i2] = d;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        double doubleValue = ((Double) obj).doubleValue();
        m12885c();
        if (i < 0 || i > (i2 = this.f50735c)) {
            throw new IndexOutOfBoundsException(m12799c(i));
        }
        double[] dArr = this.f50734b;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.f50734b, i, dArr2, i + 1, this.f50735c - i);
            this.f50734b = dArr2;
        }
        this.f50734b[i] = doubleValue;
        this.f50735c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m12801a(((Double) obj).doubleValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        m12885c();
        C13534gt.m12746a(collection);
        if (!(collection instanceof C13509fv)) {
            return super.addAll(collection);
        }
        C13509fv c13509fv = (C13509fv) collection;
        int i = c13509fv.f50735c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f50735c;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        double[] dArr = this.f50734b;
        if (i3 > dArr.length) {
            this.f50734b = Arrays.copyOf(dArr, i3);
        }
        System.arraycopy(c13509fv.f50734b, 0, this.f50734b, this.f50735c, c13509fv.f50735c);
        this.f50735c = i3;
        this.modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C13509fv)) {
            return super.equals(obj);
        }
        C13509fv c13509fv = (C13509fv) obj;
        if (this.f50735c != c13509fv.f50735c) {
            return false;
        }
        double[] dArr = c13509fv.f50734b;
        for (int i = 0; i < this.f50735c; i++) {
            if (Double.doubleToLongBits(this.f50734b[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m12800b(i);
        return Double.valueOf(this.f50734b[i]);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f50735c; i2++) {
            i = (i * 31) + C13534gt.m12747a(Double.doubleToLongBits(this.f50734b[i2]));
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double doubleValue = ((Double) obj).doubleValue();
        int i = this.f50735c;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f50734b[i2] == doubleValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m12885c();
        m12800b(i);
        double[] dArr = this.f50734b;
        double d = dArr[i];
        int i2 = this.f50735c;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.f50735c--;
        this.modCount++;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m12885c();
        if (i2 >= i) {
            double[] dArr = this.f50734b;
            System.arraycopy(dArr, i2, dArr, i, this.f50735c - i2);
            this.f50735c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        m12885c();
        m12800b(i);
        double[] dArr = this.f50734b;
        double d = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f50735c;
    }
}
