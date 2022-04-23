package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmr.class */
final class dmr extends dlq<Double> implements dnr<Double>, dpf, RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private static final dmr f26965a;

    /* renamed from: b  reason: collision with root package name */
    private double[] f26966b;

    /* renamed from: c  reason: collision with root package name */
    private int f26967c;

    static {
        dmr dmrVar = new dmr(new double[0], 0);
        f26965a = dmrVar;
        dmrVar.b();
    }

    dmr() {
        this(new double[10], 0);
    }

    private dmr(double[] dArr, int i) {
        this.f26966b = dArr;
        this.f26967c = i;
    }

    private final void b(int i) {
        if (i < 0 || i >= this.f26967c) {
            throw new IndexOutOfBoundsException(c(i));
        }
    }

    private final String c(int i) {
        int i2 = this.f26967c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.dnr
    public final /* synthetic */ dnr<Double> a(int i) {
        if (i >= this.f26967c) {
            return new dmr(Arrays.copyOf(this.f26966b, i), this.f26967c);
        }
        throw new IllegalArgumentException();
    }

    public final void a(double d2) {
        c();
        int i = this.f26967c;
        double[] dArr = this.f26966b;
        if (i == dArr.length) {
            double[] dArr2 = new double[((i * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.f26966b = dArr2;
        }
        double[] dArr3 = this.f26966b;
        int i2 = this.f26967c;
        this.f26967c = i2 + 1;
        dArr3[i2] = d2;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        double doubleValue = ((Double) obj).doubleValue();
        c();
        if (i < 0 || i > (i2 = this.f26967c)) {
            throw new IndexOutOfBoundsException(c(i));
        }
        double[] dArr = this.f26966b;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.f26966b, i, dArr2, i + 1, this.f26967c - i);
            this.f26966b = dArr2;
        }
        this.f26966b[i] = doubleValue;
        this.f26967c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        a(((Double) obj).doubleValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        c();
        dnj.a(collection);
        if (!(collection instanceof dmr)) {
            return super.addAll(collection);
        }
        dmr dmrVar = (dmr) collection;
        int i = dmrVar.f26967c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f26967c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            double[] dArr = this.f26966b;
            if (i3 > dArr.length) {
                this.f26966b = Arrays.copyOf(dArr, i3);
            }
            System.arraycopy(dmrVar.f26966b, 0, this.f26966b, this.f26967c, dmrVar.f26967c);
            this.f26967c = i3;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dmr)) {
            return super.equals(obj);
        }
        dmr dmrVar = (dmr) obj;
        if (this.f26967c != dmrVar.f26967c) {
            return false;
        }
        double[] dArr = dmrVar.f26966b;
        for (int i = 0; i < this.f26967c; i++) {
            if (Double.doubleToLongBits(this.f26966b[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        b(i);
        return Double.valueOf(this.f26966b[i]);
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f26967c; i2++) {
            i = (i * 31) + dnj.a(Double.doubleToLongBits(this.f26966b[i2]));
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
            if (this.f26966b[i] == doubleValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        c();
        b(i);
        double[] dArr = this.f26966b;
        double d2 = dArr[i];
        int i2 = this.f26967c;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.f26967c--;
        this.modCount++;
        return Double.valueOf(d2);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        c();
        if (i2 >= i) {
            double[] dArr = this.f26966b;
            System.arraycopy(dArr, i2, dArr, i, this.f26967c - i2);
            this.f26967c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        c();
        b(i);
        double[] dArr = this.f26966b;
        double d2 = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f26967c;
    }
}
