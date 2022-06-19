package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/be3.class */
final class be3 extends uc3<Float> implements RandomAccess, re3, tf3 {

    /* renamed from: e */
    private static final be3 f20406e;

    /* renamed from: f */
    private float[] f20407f;

    /* renamed from: g */
    private int f20408g;

    static {
        be3 be3Var = new be3(new float[0], 0);
        f20406e = be3Var;
        be3Var.mo10354b();
    }

    be3() {
        this(new float[10], 0);
    }

    private be3(float[] fArr, int i) {
        this.f20407f = fArr;
        this.f20408g = i;
    }

    /* renamed from: e */
    private final void m16390e(int i) {
        if (i < 0 || i >= this.f20408g) {
            throw new IndexOutOfBoundsException(m16389h(i));
        }
    }

    /* renamed from: h */
    private final String m16389h(int i) {
        int i2 = this.f20408g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.re3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ re3 mo8859a(int i) {
        if (i >= this.f20408g) {
            return new be3(Arrays.copyOf(this.f20407f, i), this.f20408g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        float floatValue = ((Float) obj).floatValue();
        m10353c();
        if (i < 0 || i > (i2 = this.f20408g)) {
            throw new IndexOutOfBoundsException(m16389h(i));
        }
        float[] fArr = this.f20407f;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.f20407f, i, fArr2, i + 1, this.f20408g - i);
            this.f20407f = fArr2;
        }
        this.f20407f[i] = floatValue;
        this.f20408g++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        m16391d(((Float) obj).floatValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        m10353c();
        se3.m11072a(collection);
        if (!(collection instanceof be3)) {
            return super.addAll(collection);
        }
        be3 be3Var = (be3) collection;
        int i = be3Var.f20408g;
        if (i == 0) {
            return false;
        }
        int i2 = this.f20408g;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        float[] fArr = this.f20407f;
        if (i3 > fArr.length) {
            this.f20407f = Arrays.copyOf(fArr, i3);
        }
        System.arraycopy(be3Var.f20407f, 0, this.f20407f, this.f20408g, be3Var.f20408g);
        this.f20408g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    /* renamed from: d */
    public final void m16391d(float f) {
        m10353c();
        int i = this.f20408g;
        float[] fArr = this.f20407f;
        if (i == fArr.length) {
            float[] fArr2 = new float[((i * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.f20407f = fArr2;
        }
        float[] fArr3 = this.f20407f;
        int i2 = this.f20408g;
        this.f20408g = i2 + 1;
        fArr3[i2] = f;
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof be3)) {
            return super.equals(obj);
        }
        be3 be3Var = (be3) obj;
        if (this.f20408g != be3Var.f20408g) {
            return false;
        }
        float[] fArr = be3Var.f20407f;
        for (int i = 0; i < this.f20408g; i++) {
            if (Float.floatToIntBits(this.f20407f[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        m16390e(i);
        return Float.valueOf(this.f20407f[i]);
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f20408g; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f20407f[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float floatValue = ((Float) obj).floatValue();
        int i = this.f20408g;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f20407f[i2] == floatValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        m10353c();
        m16390e(i);
        float[] fArr = this.f20407f;
        float f = fArr[i];
        int i2 = this.f20408g;
        if (i < i2 - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (i2 - i) - 1);
        }
        this.f20408g--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m10353c();
        if (i2 >= i) {
            float[] fArr = this.f20407f;
            System.arraycopy(fArr, i2, fArr, i, this.f20408g - i2);
            this.f20408g -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        m10353c();
        m16390e(i);
        float[] fArr = this.f20407f;
        float f = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f20408g;
    }
}
