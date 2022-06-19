package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.dn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/dn.class */
final class C3882dn extends AbstractC3853cn<Double> implements AbstractC3914el<Double>, AbstractC3957ga, RandomAccess {

    /* renamed from: a */
    private static final C3882dn f17996a;

    /* renamed from: b */
    private double[] f17997b;

    /* renamed from: c */
    private int f17998c;

    static {
        C3882dn c3882dn = new C3882dn(new double[0], 0);
        f17996a = c3882dn;
        c3882dn.mo5597b();
    }

    C3882dn() {
        this(new double[10], 0);
    }

    private C3882dn(double[] dArr, int i) {
        this.f17997b = dArr;
        this.f17998c = i;
    }

    /* renamed from: b */
    private final void m5697b(int i) {
        if (i < 0 || i >= this.f17998c) {
            throw new IndexOutOfBoundsException(m5696c(i));
        }
    }

    /* renamed from: c */
    private final String m5696c(int i) {
        return new StringBuilder(35).append("Index:").append(i).append(", Size:").append(this.f17998c).toString();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3914el
    /* renamed from: a */
    public final /* synthetic */ AbstractC3914el<Double> mo5476a(int i) {
        if (i < this.f17998c) {
            throw new IllegalArgumentException();
        }
        return new C3882dn(Arrays.copyOf(this.f17997b, i), this.f17998c);
    }

    /* renamed from: a */
    public final void m5698a(double d) {
        m5837q_();
        if (this.f17998c == this.f17997b.length) {
            double[] dArr = new double[((this.f17998c * 3) / 2) + 1];
            System.arraycopy(this.f17997b, 0, dArr, 0, this.f17998c);
            this.f17997b = dArr;
        }
        double[] dArr2 = this.f17997b;
        int i = this.f17998c;
        this.f17998c = i + 1;
        dArr2[i] = d;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        m5837q_();
        if (i < 0 || i > this.f17998c) {
            throw new IndexOutOfBoundsException(m5696c(i));
        }
        if (this.f17998c < this.f17997b.length) {
            System.arraycopy(this.f17997b, i, this.f17997b, i + 1, this.f17998c - i);
        } else {
            double[] dArr = new double[((this.f17998c * 3) / 2) + 1];
            System.arraycopy(this.f17997b, 0, dArr, 0, i);
            System.arraycopy(this.f17997b, i, dArr, i + 1, this.f17998c - i);
            this.f17997b = dArr;
        }
        this.f17997b[i] = doubleValue;
        this.f17998c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m5698a(((Double) obj).doubleValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        boolean z = false;
        m5837q_();
        C3908ef.m5612a(collection);
        if (!(collection instanceof C3882dn)) {
            z = super.addAll(collection);
        } else {
            C3882dn c3882dn = (C3882dn) collection;
            if (c3882dn.f17998c != 0) {
                if (Integer.MAX_VALUE - this.f17998c < c3882dn.f17998c) {
                    throw new OutOfMemoryError();
                }
                int i = this.f17998c + c3882dn.f17998c;
                if (i > this.f17997b.length) {
                    this.f17997b = Arrays.copyOf(this.f17997b, i);
                }
                System.arraycopy(c3882dn.f17997b, 0, this.f17997b, this.f17998c, c3882dn.f17998c);
                this.f17998c = i;
                this.modCount++;
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else if (!(obj instanceof C3882dn)) {
            z = super.equals(obj);
        } else {
            C3882dn c3882dn = (C3882dn) obj;
            z = false;
            if (this.f17998c == c3882dn.f17998c) {
                double[] dArr = c3882dn.f17997b;
                int i = 0;
                while (true) {
                    if (i >= this.f17998c) {
                        z = true;
                        break;
                    }
                    z = false;
                    if (Double.doubleToLongBits(this.f17997b[i]) != Double.doubleToLongBits(dArr[i])) {
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
        m5697b(i);
        return Double.valueOf(this.f17997b[i]);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f17998c; i2++) {
            i = (i * 31) + C3908ef.m5614a(Double.doubleToLongBits(this.f17997b[i2]));
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i;
        if (!(obj instanceof Double)) {
            i = -1;
        } else {
            double doubleValue = ((Double) obj).doubleValue();
            int size = size();
            int i2 = 0;
            while (true) {
                i = -1;
                if (i2 >= size) {
                    break;
                } else if (this.f17997b[i2] == doubleValue) {
                    i = i2;
                    break;
                } else {
                    i2++;
                }
            }
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m5837q_();
        m5697b(i);
        double d = this.f17997b[i];
        if (i < this.f17998c - 1) {
            System.arraycopy(this.f17997b, i + 1, this.f17997b, i, (this.f17998c - i) - 1);
        }
        this.f17998c--;
        this.modCount++;
        return Double.valueOf(d);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        boolean z;
        m5837q_();
        int i = 0;
        while (true) {
            z = false;
            if (i >= this.f17998c) {
                break;
            } else if (obj.equals(Double.valueOf(this.f17997b[i]))) {
                System.arraycopy(this.f17997b, i + 1, this.f17997b, i, (this.f17998c - i) - 1);
                this.f17998c--;
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
        m5837q_();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        System.arraycopy(this.f17997b, i2, this.f17997b, i, this.f17998c - i2);
        this.f17998c -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        m5837q_();
        m5697b(i);
        double d = this.f17997b[i];
        this.f17997b[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f17998c;
    }
}
