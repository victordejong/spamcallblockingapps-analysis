package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.r5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/r5.class */
final class C7531r5 extends AbstractC7503p4<Float> implements RandomAccess, AbstractC7351e6, AbstractC7380g7 {

    /* renamed from: e */
    private static final C7531r5 f34664e;

    /* renamed from: f */
    private float[] f34665f;

    /* renamed from: g */
    private int f34666g;

    static {
        C7531r5 c7531r5 = new C7531r5(new float[0], 0);
        f34664e = c7531r5;
        c7531r5.mo7028b();
    }

    C7531r5() {
        this(new float[10], 0);
    }

    private C7531r5(float[] fArr, int i) {
        this.f34665f = fArr;
        this.f34666g = i;
    }

    /* renamed from: e */
    private final void m6965e(int i) {
        if (i < 0 || i >= this.f34666g) {
            throw new IndexOutOfBoundsException(m6964h(i));
        }
    }

    /* renamed from: h */
    private final String m6964h(int i) {
        int i2 = this.f34666g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7351e6
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC7351e6 mo6737a(int i) {
        if (i >= this.f34666g) {
            return new C7531r5(Arrays.copyOf(this.f34665f, i), this.f34666g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        float floatValue = ((Float) obj).floatValue();
        m7027c();
        if (i < 0 || i > (i2 = this.f34666g)) {
            throw new IndexOutOfBoundsException(m6964h(i));
        }
        float[] fArr = this.f34665f;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.f34665f, i, fArr2, i + 1, this.f34666g - i);
            this.f34665f = fArr2;
        }
        this.f34665f[i] = floatValue;
        this.f34666g++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        m6966d(((Float) obj).floatValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        m7027c();
        C7365f6.m7503a(collection);
        if (!(collection instanceof C7531r5)) {
            return super.addAll(collection);
        }
        C7531r5 c7531r5 = (C7531r5) collection;
        int i = c7531r5.f34666g;
        if (i == 0) {
            return false;
        }
        int i2 = this.f34666g;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        float[] fArr = this.f34665f;
        if (i3 > fArr.length) {
            this.f34665f = Arrays.copyOf(fArr, i3);
        }
        System.arraycopy(c7531r5.f34665f, 0, this.f34665f, this.f34666g, c7531r5.f34666g);
        this.f34666g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    /* renamed from: d */
    public final void m6966d(float f) {
        m7027c();
        int i = this.f34666g;
        float[] fArr = this.f34665f;
        if (i == fArr.length) {
            float[] fArr2 = new float[((i * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.f34665f = fArr2;
        }
        float[] fArr3 = this.f34665f;
        int i2 = this.f34666g;
        this.f34666g = i2 + 1;
        fArr3[i2] = f;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7531r5)) {
            return super.equals(obj);
        }
        C7531r5 c7531r5 = (C7531r5) obj;
        if (this.f34666g != c7531r5.f34666g) {
            return false;
        }
        float[] fArr = c7531r5.f34665f;
        for (int i = 0; i < this.f34666g; i++) {
            if (Float.floatToIntBits(this.f34665f[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        m6965e(i);
        return Float.valueOf(this.f34665f[i]);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f34666g; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f34665f[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float floatValue = ((Float) obj).floatValue();
        int i = this.f34666g;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f34665f[i2] == floatValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        m7027c();
        m6965e(i);
        float[] fArr = this.f34665f;
        float f = fArr[i];
        int i2 = this.f34666g;
        if (i < i2 - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (i2 - i) - 1);
        }
        this.f34666g--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m7027c();
        if (i2 >= i) {
            float[] fArr = this.f34665f;
            System.arraycopy(fArr, i2, fArr, i, this.f34666g - i2);
            this.f34666g -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        m7027c();
        m6965e(i);
        float[] fArr = this.f34665f;
        float f = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f34666g;
    }
}
