package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.gf */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gf.class */
final class C13520gf extends AbstractC13486ez<Float> implements AbstractC13533gs, AbstractC13564hw, RandomAccess {

    /* renamed from: a */
    private static final C13520gf f50753a;

    /* renamed from: b */
    private float[] f50754b;

    /* renamed from: c */
    private int f50755c;

    static {
        C13520gf c13520gf = new C13520gf(new float[0], 0);
        f50753a = c13520gf;
        c13520gf.mo12749b();
    }

    C13520gf() {
        this(new float[10], 0);
    }

    private C13520gf(float[] fArr, int i) {
        this.f50754b = fArr;
        this.f50755c = i;
    }

    /* renamed from: b */
    private final void m12784b(int i) {
        if (i < 0 || i >= this.f50755c) {
            throw new IndexOutOfBoundsException(m12783c(i));
        }
    }

    /* renamed from: c */
    private final String m12783c(int i) {
        int i2 = this.f50755c;
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
        if (i >= this.f50755c) {
            return new C13520gf(Arrays.copyOf(this.f50754b, i), this.f50755c);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public final void m12785a(float f) {
        m12885c();
        int i = this.f50755c;
        float[] fArr = this.f50754b;
        if (i == fArr.length) {
            float[] fArr2 = new float[((i * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.f50754b = fArr2;
        }
        float[] fArr3 = this.f50754b;
        int i2 = this.f50755c;
        this.f50755c = i2 + 1;
        fArr3[i2] = f;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        float floatValue = ((Float) obj).floatValue();
        m12885c();
        if (i < 0 || i > (i2 = this.f50755c)) {
            throw new IndexOutOfBoundsException(m12783c(i));
        }
        float[] fArr = this.f50754b;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.f50754b, i, fArr2, i + 1, this.f50755c - i);
            this.f50754b = fArr2;
        }
        this.f50754b[i] = floatValue;
        this.f50755c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m12785a(((Float) obj).floatValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        m12885c();
        C13534gt.m12746a(collection);
        if (!(collection instanceof C13520gf)) {
            return super.addAll(collection);
        }
        C13520gf c13520gf = (C13520gf) collection;
        int i = c13520gf.f50755c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f50755c;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        float[] fArr = this.f50754b;
        if (i3 > fArr.length) {
            this.f50754b = Arrays.copyOf(fArr, i3);
        }
        System.arraycopy(c13520gf.f50754b, 0, this.f50754b, this.f50755c, c13520gf.f50755c);
        this.f50755c = i3;
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
        if (!(obj instanceof C13520gf)) {
            return super.equals(obj);
        }
        C13520gf c13520gf = (C13520gf) obj;
        if (this.f50755c != c13520gf.f50755c) {
            return false;
        }
        float[] fArr = c13520gf.f50754b;
        for (int i = 0; i < this.f50755c; i++) {
            if (Float.floatToIntBits(this.f50754b[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m12784b(i);
        return Float.valueOf(this.f50754b[i]);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f50755c; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f50754b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float floatValue = ((Float) obj).floatValue();
        int i = this.f50755c;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f50754b[i2] == floatValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m12885c();
        m12784b(i);
        float[] fArr = this.f50754b;
        float f = fArr[i];
        int i2 = this.f50755c;
        if (i < i2 - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (i2 - i) - 1);
        }
        this.f50755c--;
        this.modCount++;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m12885c();
        if (i2 >= i) {
            float[] fArr = this.f50754b;
            System.arraycopy(fArr, i2, fArr, i, this.f50755c - i2);
            this.f50755c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        m12885c();
        m12784b(i);
        float[] fArr = this.f50754b;
        float f = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f50755c;
    }
}
