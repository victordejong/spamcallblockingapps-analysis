package com.google.protobuf;

import com.google.protobuf.C2665x;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.protobuf.u */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/u.class */
final class C2659u extends AbstractC2576c<Float> implements C2665x.AbstractC2671f, RandomAccess, AbstractC2662v0 {

    /* renamed from: e */
    private static final C2659u f11215e;

    /* renamed from: c */
    private float[] f11216c;

    /* renamed from: d */
    private int f11217d;

    static {
        C2659u c2659u = new C2659u(new float[0], 0);
        f11215e = c2659u;
        c2659u.mo2236h();
    }

    C2659u() {
        this(new float[10], 0);
    }

    private C2659u(float[] fArr, int i) {
        this.f11216c = fArr;
        this.f11217d = i;
    }

    /* renamed from: B */
    private String m2282B(int i) {
        return "Index:" + i + ", Size:" + this.f11217d;
    }

    /* renamed from: r */
    private void m2274r(int i, float f) {
        int i2;
        m2894a();
        if (i < 0 || i > (i2 = this.f11217d)) {
            throw new IndexOutOfBoundsException(m2282B(i));
        }
        float[] fArr = this.f11216c;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.f11216c, i, fArr2, i + 1, this.f11217d - i);
            this.f11216c = fArr2;
        }
        this.f11216c[i] = f;
        this.f11217d++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: u */
    private void m2273u(int i) {
        if (i < 0 || i >= this.f11217d) {
            throw new IndexOutOfBoundsException(m2282B(i));
        }
    }

    /* renamed from: A */
    public float m2283A(int i) {
        m2273u(i);
        return this.f11216c[i];
    }

    /* renamed from: C */
    public C2665x.AbstractC2671f mo2235d(int i) {
        if (i >= this.f11217d) {
            return new C2659u(Arrays.copyOf(this.f11216c, i), this.f11217d);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: F */
    public Float remove(int i) {
        m2894a();
        m2273u(i);
        float[] fArr = this.f11216c;
        float f = fArr[i];
        int i2 = this.f11217d;
        if (i < i2 - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (i2 - i) - 1);
        }
        this.f11217d--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    /* renamed from: G */
    public Float set(int i, Float f) {
        return Float.valueOf(m2278I(i, f.floatValue()));
    }

    /* renamed from: I */
    public float m2278I(int i, float f) {
        m2894a();
        m2273u(i);
        float[] fArr = this.f11216c;
        float f2 = fArr[i];
        fArr[i] = f;
        return f2;
    }

    @Override // com.google.protobuf.AbstractC2576c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Float> collection) {
        m2894a();
        C2665x.m2251a(collection);
        if (!(collection instanceof C2659u)) {
            return super.addAll(collection);
        }
        C2659u c2659u = (C2659u) collection;
        int i = c2659u.f11217d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f11217d;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        float[] fArr = this.f11216c;
        if (i3 > fArr.length) {
            this.f11216c = Arrays.copyOf(fArr, i3);
        }
        System.arraycopy(c2659u.f11216c, 0, this.f11216c, this.f11217d, c2659u.f11217d);
        this.f11217d = i3;
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
        if (!(obj instanceof C2659u)) {
            return super.equals(obj);
        }
        C2659u c2659u = (C2659u) obj;
        if (this.f11217d != c2659u.f11217d) {
            return false;
        }
        float[] fArr = c2659u.f11216c;
        for (int i = 0; i < this.f11217d; i++) {
            if (Float.floatToIntBits(this.f11216c[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.AbstractC2576c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f11217d; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f11216c[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float floatValue = ((Float) obj).floatValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f11216c[i] == floatValue) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: j */
    public void add(int i, Float f) {
        m2274r(i, f.floatValue());
    }

    /* renamed from: k */
    public boolean add(Float f) {
        m2275p(f.floatValue());
        return true;
    }

    /* renamed from: p */
    public void m2275p(float f) {
        m2894a();
        int i = this.f11217d;
        float[] fArr = this.f11216c;
        if (i == fArr.length) {
            float[] fArr2 = new float[((i * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.f11216c = fArr2;
        }
        float[] fArr3 = this.f11216c;
        int i2 = this.f11217d;
        this.f11217d = i2 + 1;
        fArr3[i2] = f;
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i, int i2) {
        m2894a();
        if (i2 >= i) {
            float[] fArr = this.f11216c;
            System.arraycopy(fArr, i2, fArr, i, this.f11217d - i2);
            this.f11217d -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f11217d;
    }

    /* renamed from: x */
    public Float get(int i) {
        return Float.valueOf(m2283A(i));
    }
}
