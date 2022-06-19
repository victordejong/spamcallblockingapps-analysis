package com.google.protobuf;

import com.google.protobuf.C2665x;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.protobuf.l */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/l.class */
final class C2636l extends AbstractC2576c<Double> implements C2665x.AbstractC2667b, RandomAccess, AbstractC2662v0 {

    /* renamed from: e */
    private static final C2636l f11171e;

    /* renamed from: c */
    private double[] f11172c;

    /* renamed from: d */
    private int f11173d;

    static {
        C2636l c2636l = new C2636l(new double[0], 0);
        f11171e = c2636l;
        c2636l.mo2236h();
    }

    C2636l() {
        this(new double[10], 0);
    }

    private C2636l(double[] dArr, int i) {
        this.f11172c = dArr;
        this.f11173d = i;
    }

    /* renamed from: B */
    private String m2437B(int i) {
        return "Index:" + i + ", Size:" + this.f11173d;
    }

    /* renamed from: r */
    private void m2429r(int i, double d) {
        int i2;
        m2894a();
        if (i < 0 || i > (i2 = this.f11173d)) {
            throw new IndexOutOfBoundsException(m2437B(i));
        }
        double[] dArr = this.f11172c;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.f11172c, i, dArr2, i + 1, this.f11173d - i);
            this.f11172c = dArr2;
        }
        this.f11172c[i] = d;
        this.f11173d++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: u */
    private void m2428u(int i) {
        if (i < 0 || i >= this.f11173d) {
            throw new IndexOutOfBoundsException(m2437B(i));
        }
    }

    /* renamed from: A */
    public double m2438A(int i) {
        m2428u(i);
        return this.f11172c[i];
    }

    /* renamed from: C */
    public C2665x.AbstractC2667b mo2235d(int i) {
        if (i >= this.f11173d) {
            return new C2636l(Arrays.copyOf(this.f11172c, i), this.f11173d);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: F */
    public Double remove(int i) {
        m2894a();
        m2428u(i);
        double[] dArr = this.f11172c;
        double d = dArr[i];
        int i2 = this.f11173d;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.f11173d--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    /* renamed from: G */
    public Double set(int i, Double d) {
        return Double.valueOf(m2433I(i, d.doubleValue()));
    }

    /* renamed from: I */
    public double m2433I(int i, double d) {
        m2894a();
        m2428u(i);
        double[] dArr = this.f11172c;
        double d2 = dArr[i];
        dArr[i] = d;
        return d2;
    }

    @Override // com.google.protobuf.AbstractC2576c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Double> collection) {
        m2894a();
        C2665x.m2251a(collection);
        if (!(collection instanceof C2636l)) {
            return super.addAll(collection);
        }
        C2636l c2636l = (C2636l) collection;
        int i = c2636l.f11173d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f11173d;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        double[] dArr = this.f11172c;
        if (i3 > dArr.length) {
            this.f11172c = Arrays.copyOf(dArr, i3);
        }
        System.arraycopy(c2636l.f11172c, 0, this.f11172c, this.f11173d, c2636l.f11173d);
        this.f11173d = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.protobuf.AbstractC2576c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2636l)) {
            return super.equals(obj);
        }
        C2636l c2636l = (C2636l) obj;
        if (this.f11173d != c2636l.f11173d) {
            return false;
        }
        double[] dArr = c2636l.f11172c;
        for (int i = 0; i < this.f11173d; i++) {
            if (Double.doubleToLongBits(this.f11172c[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.AbstractC2576c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f11173d; i2++) {
            i = (i * 31) + C2665x.m2246f(Double.doubleToLongBits(this.f11172c[i2]));
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double doubleValue = ((Double) obj).doubleValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f11172c[i] == doubleValue) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: j */
    public void add(int i, Double d) {
        m2429r(i, d.doubleValue());
    }

    /* renamed from: k */
    public boolean add(Double d) {
        m2430p(d.doubleValue());
        return true;
    }

    /* renamed from: p */
    public void m2430p(double d) {
        m2894a();
        int i = this.f11173d;
        double[] dArr = this.f11172c;
        if (i == dArr.length) {
            double[] dArr2 = new double[((i * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.f11172c = dArr2;
        }
        double[] dArr3 = this.f11172c;
        int i2 = this.f11173d;
        this.f11173d = i2 + 1;
        dArr3[i2] = d;
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i, int i2) {
        m2894a();
        if (i2 >= i) {
            double[] dArr = this.f11172c;
            System.arraycopy(dArr, i2, dArr, i, this.f11173d - i2);
            this.f11173d -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f11173d;
    }

    /* renamed from: x */
    public Double get(int i) {
        return Double.valueOf(m2438A(i));
    }
}
