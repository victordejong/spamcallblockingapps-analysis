package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/fv.class */
final class fv extends ez<Double> implements gs, hw, RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private static final fv f29034a;

    /* renamed from: b  reason: collision with root package name */
    private double[] f29035b;

    /* renamed from: c  reason: collision with root package name */
    private int f29036c;

    static {
        fv fvVar = new fv(new double[0], 0);
        f29034a = fvVar;
        fvVar.b();
    }

    fv() {
        this(new double[10], 0);
    }

    private fv(double[] dArr, int i) {
        this.f29035b = dArr;
        this.f29036c = i;
    }

    private final void b(int i) {
        if (i < 0 || i >= this.f29036c) {
            throw new IndexOutOfBoundsException(c(i));
        }
    }

    private final String c(int i) {
        int i2 = this.f29036c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.gs
    public final /* synthetic */ gs a(int i) {
        if (i >= this.f29036c) {
            return new fv(Arrays.copyOf(this.f29035b, i), this.f29036c);
        }
        throw new IllegalArgumentException();
    }

    public final void a(double d2) {
        c();
        int i = this.f29036c;
        double[] dArr = this.f29035b;
        if (i == dArr.length) {
            double[] dArr2 = new double[((i * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.f29035b = dArr2;
        }
        double[] dArr3 = this.f29035b;
        int i2 = this.f29036c;
        this.f29036c = i2 + 1;
        dArr3[i2] = d2;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        double doubleValue = ((Double) obj).doubleValue();
        c();
        if (i < 0 || i > (i2 = this.f29036c)) {
            throw new IndexOutOfBoundsException(c(i));
        }
        double[] dArr = this.f29035b;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.f29035b, i, dArr2, i + 1, this.f29036c - i);
            this.f29035b = dArr2;
        }
        this.f29035b[i] = doubleValue;
        this.f29036c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        a(((Double) obj).doubleValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        c();
        gt.a(collection);
        if (!(collection instanceof fv)) {
            return super.addAll(collection);
        }
        fv fvVar = (fv) collection;
        int i = fvVar.f29036c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f29036c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            double[] dArr = this.f29035b;
            if (i3 > dArr.length) {
                this.f29035b = Arrays.copyOf(dArr, i3);
            }
            System.arraycopy(fvVar.f29035b, 0, this.f29035b, this.f29036c, fvVar.f29036c);
            this.f29036c = i3;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fv)) {
            return super.equals(obj);
        }
        fv fvVar = (fv) obj;
        if (this.f29036c != fvVar.f29036c) {
            return false;
        }
        double[] dArr = fvVar.f29035b;
        for (int i = 0; i < this.f29036c; i++) {
            if (Double.doubleToLongBits(this.f29035b[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        b(i);
        return Double.valueOf(this.f29035b[i]);
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f29036c; i2++) {
            i = (i * 31) + gt.a(Double.doubleToLongBits(this.f29035b[i2]));
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double doubleValue = ((Double) obj).doubleValue();
        int i = this.f29036c;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f29035b[i2] == doubleValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        c();
        b(i);
        double[] dArr = this.f29035b;
        double d2 = dArr[i];
        int i2 = this.f29036c;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.f29036c--;
        this.modCount++;
        return Double.valueOf(d2);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        c();
        if (i2 >= i) {
            double[] dArr = this.f29035b;
            System.arraycopy(dArr, i2, dArr, i, this.f29036c - i2);
            this.f29036c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        c();
        b(i);
        double[] dArr = this.f29035b;
        double d2 = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29036c;
    }
}
