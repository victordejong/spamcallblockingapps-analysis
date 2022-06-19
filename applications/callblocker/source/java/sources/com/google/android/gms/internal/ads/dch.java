package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dch.class */
final class dch extends dbc<Double> implements dde<Double>, det, RandomAccess {

    /* renamed from: a */
    private static final dch f13979a;

    /* renamed from: b */
    private double[] f13980b;

    /* renamed from: c */
    private int f13981c;

    static {
        dch dchVar = new dch(new double[0], 0);
        f13979a = dchVar;
        dchVar.mo10038b();
    }

    dch() {
        this(new double[10], 0);
    }

    private dch(double[] dArr, int i) {
        this.f13980b = dArr;
        this.f13981c = i;
    }

    /* renamed from: b */
    private final void m10140b(int i) {
        if (i < 0 || i >= this.f13981c) {
            throw new IndexOutOfBoundsException(m10139c(i));
        }
    }

    /* renamed from: c */
    private final String m10139c(int i) {
        return new StringBuilder(35).append("Index:").append(i).append(", Size:").append(this.f13981c).toString();
    }

    @Override // com.google.android.gms.internal.ads.dde
    /* renamed from: a */
    public final /* synthetic */ dde<Double> mo9923a(int i) {
        if (i < this.f13981c) {
            throw new IllegalArgumentException();
        }
        return new dch(Arrays.copyOf(this.f13980b, i), this.f13981c);
    }

    /* renamed from: a */
    public final void m10141a(double d) {
        m10248c();
        if (this.f13981c == this.f13980b.length) {
            double[] dArr = new double[((this.f13981c * 3) / 2) + 1];
            System.arraycopy(this.f13980b, 0, dArr, 0, this.f13981c);
            this.f13980b = dArr;
        }
        double[] dArr2 = this.f13980b;
        int i = this.f13981c;
        this.f13981c = i + 1;
        dArr2[i] = d;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        m10248c();
        if (i < 0 || i > this.f13981c) {
            throw new IndexOutOfBoundsException(m10139c(i));
        }
        if (this.f13981c < this.f13980b.length) {
            System.arraycopy(this.f13980b, i, this.f13980b, i + 1, this.f13981c - i);
        } else {
            double[] dArr = new double[((this.f13981c * 3) / 2) + 1];
            System.arraycopy(this.f13980b, 0, dArr, 0, i);
            System.arraycopy(this.f13980b, i, dArr, i + 1, this.f13981c - i);
            this.f13980b = dArr;
        }
        this.f13980b[i] = doubleValue;
        this.f13981c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m10141a(((Double) obj).doubleValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        boolean z = false;
        m10248c();
        dcz.m10047a(collection);
        if (!(collection instanceof dch)) {
            z = super.addAll(collection);
        } else {
            dch dchVar = (dch) collection;
            if (dchVar.f13981c != 0) {
                if (Integer.MAX_VALUE - this.f13981c < dchVar.f13981c) {
                    throw new OutOfMemoryError();
                }
                int i = this.f13981c + dchVar.f13981c;
                if (i > this.f13980b.length) {
                    this.f13980b = Arrays.copyOf(this.f13980b, i);
                }
                System.arraycopy(dchVar.f13980b, 0, this.f13980b, this.f13981c, dchVar.f13981c);
                this.f13981c = i;
                this.modCount++;
                z = true;
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else if (!(obj instanceof dch)) {
            z = super.equals(obj);
        } else {
            dch dchVar = (dch) obj;
            z = false;
            if (this.f13981c == dchVar.f13981c) {
                double[] dArr = dchVar.f13980b;
                int i = 0;
                while (true) {
                    if (i >= this.f13981c) {
                        z = true;
                        break;
                    }
                    z = false;
                    if (Double.doubleToLongBits(this.f13980b[i]) != Double.doubleToLongBits(dArr[i])) {
                        break;
                    }
                    i++;
                }
            }
        }
        return z;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m10140b(i);
        return Double.valueOf(this.f13980b[i]);
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f13981c; i2++) {
            i = (i * 31) + dcz.m10049a(Double.doubleToLongBits(this.f13980b[i2]));
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m10248c();
        m10140b(i);
        double d = this.f13980b[i];
        if (i < this.f13981c - 1) {
            System.arraycopy(this.f13980b, i + 1, this.f13980b, i, (this.f13981c - i) - 1);
        }
        this.f13981c--;
        this.modCount++;
        return Double.valueOf(d);
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        boolean z;
        m10248c();
        int i = 0;
        while (true) {
            z = false;
            if (i >= this.f13981c) {
                break;
            } else if (obj.equals(Double.valueOf(this.f13980b[i]))) {
                System.arraycopy(this.f13980b, i + 1, this.f13980b, i, (this.f13981c - i) - 1);
                this.f13981c--;
                this.modCount++;
                z = true;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m10248c();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        System.arraycopy(this.f13980b, i2, this.f13980b, i, this.f13981c - i2);
        this.f13981c -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        m10248c();
        m10140b(i);
        double d = this.f13980b[i];
        this.f13980b[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f13981c;
    }
}
