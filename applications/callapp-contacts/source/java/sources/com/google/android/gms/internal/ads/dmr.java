package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmr.class */
final class dmr extends dlq<Double> implements dnr<Double>, dpf, RandomAccess {

    /* renamed from: a */
    private static final dmr f47243a;

    /* renamed from: b */
    private double[] f47244b;

    /* renamed from: c */
    private int f47245c;

    static {
        dmr dmrVar = new dmr(new double[0], 0);
        f47243a = dmrVar;
        dmrVar.mo16303b();
    }

    dmr() {
        this(new double[10], 0);
    }

    private dmr(double[] dArr, int i) {
        this.f47244b = dArr;
        this.f47245c = i;
    }

    /* renamed from: b */
    private final void m16398b(int i) {
        if (i < 0 || i >= this.f47245c) {
            throw new IndexOutOfBoundsException(m16397c(i));
        }
    }

    /* renamed from: c */
    private final String m16397c(int i) {
        int i2 = this.f47245c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.dnr
    /* renamed from: a */
    public final /* synthetic */ dnr<Double> mo16200a(int i) {
        if (i >= this.f47245c) {
            return new dmr(Arrays.copyOf(this.f47244b, i), this.f47245c);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public final void m16399a(double d) {
        m16501c();
        int i = this.f47245c;
        double[] dArr = this.f47244b;
        if (i == dArr.length) {
            double[] dArr2 = new double[((i * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.f47244b = dArr2;
        }
        double[] dArr3 = this.f47244b;
        int i2 = this.f47245c;
        this.f47245c = i2 + 1;
        dArr3[i2] = d;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        double doubleValue = ((Double) obj).doubleValue();
        m16501c();
        if (i < 0 || i > (i2 = this.f47245c)) {
            throw new IndexOutOfBoundsException(m16397c(i));
        }
        double[] dArr = this.f47244b;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.f47244b, i, dArr2, i + 1, this.f47245c - i);
            this.f47244b = dArr2;
        }
        this.f47244b[i] = doubleValue;
        this.f47245c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m16399a(((Double) obj).doubleValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        m16501c();
        dnj.m16316a(collection);
        if (!(collection instanceof dmr)) {
            return super.addAll(collection);
        }
        dmr dmrVar = (dmr) collection;
        int i = dmrVar.f47245c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f47245c;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        double[] dArr = this.f47244b;
        if (i3 > dArr.length) {
            this.f47244b = Arrays.copyOf(dArr, i3);
        }
        System.arraycopy(dmrVar.f47244b, 0, this.f47244b, this.f47245c, dmrVar.f47245c);
        this.f47245c = i3;
        this.modCount++;
        return true;
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
        if (this.f47245c != dmrVar.f47245c) {
            return false;
        }
        double[] dArr = dmrVar.f47244b;
        for (int i = 0; i < this.f47245c; i++) {
            if (Double.doubleToLongBits(this.f47244b[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m16398b(i);
        return Double.valueOf(this.f47244b[i]);
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f47245c; i2++) {
            i = (i * 31) + dnj.m16317a(Double.doubleToLongBits(this.f47244b[i2]));
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
            if (this.f47244b[i] == doubleValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m16501c();
        m16398b(i);
        double[] dArr = this.f47244b;
        double d = dArr[i];
        int i2 = this.f47245c;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.f47245c--;
        this.modCount++;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m16501c();
        if (i2 >= i) {
            double[] dArr = this.f47244b;
            System.arraycopy(dArr, i2, dArr, i, this.f47245c - i2);
            this.f47245c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        m16501c();
        m16398b(i);
        double[] dArr = this.f47244b;
        double d = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f47245c;
    }
}
