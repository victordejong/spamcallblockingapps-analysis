package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.o6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/o6.class */
final class C7491o6 extends AbstractC7503p4<Long> implements RandomAccess, AbstractC7337d6, AbstractC7380g7 {

    /* renamed from: e */
    private static final C7491o6 f34619e;

    /* renamed from: f */
    private long[] f34620f;

    /* renamed from: g */
    private int f34621g;

    static {
        C7491o6 c7491o6 = new C7491o6(new long[0], 0);
        f34619e = c7491o6;
        c7491o6.mo7028b();
    }

    C7491o6() {
        this(new long[10], 0);
    }

    private C7491o6(long[] jArr, int i) {
        this.f34620f = jArr;
        this.f34621g = i;
    }

    /* renamed from: d */
    public static C7491o6 m7040d() {
        return f34619e;
    }

    /* renamed from: d0 */
    private final void m7039d0(int i) {
        if (i < 0 || i >= this.f34621g) {
            throw new IndexOutOfBoundsException(m7037h(i));
        }
    }

    /* renamed from: h */
    private final String m7037h(int i) {
        int i2 = this.f34621g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7337d6
    /* renamed from: C */
    public final long mo7041C(int i) {
        m7039d0(i);
        return this.f34620f[i];
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        m7027c();
        if (i < 0 || i > (i2 = this.f34621g)) {
            throw new IndexOutOfBoundsException(m7037h(i));
        }
        long[] jArr = this.f34620f;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f34620f, i, jArr2, i + 1, this.f34621g - i);
            this.f34620f = jArr2;
        }
        this.f34620f[i] = longValue;
        this.f34621g++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        m7038e(((Long) obj).longValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        m7027c();
        C7365f6.m7503a(collection);
        if (!(collection instanceof C7491o6)) {
            return super.addAll(collection);
        }
        C7491o6 c7491o6 = (C7491o6) collection;
        int i = c7491o6.f34621g;
        if (i == 0) {
            return false;
        }
        int i2 = this.f34621g;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        long[] jArr = this.f34620f;
        if (i3 > jArr.length) {
            this.f34620f = Arrays.copyOf(jArr, i3);
        }
        System.arraycopy(c7491o6.f34620f, 0, this.f34620f, this.f34621g, c7491o6.f34621g);
        this.f34621g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    /* renamed from: e */
    public final void m7038e(long j) {
        m7027c();
        int i = this.f34621g;
        long[] jArr = this.f34620f;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f34620f = jArr2;
        }
        long[] jArr3 = this.f34620f;
        int i2 = this.f34621g;
        this.f34621g = i2 + 1;
        jArr3[i2] = j;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7491o6)) {
            return super.equals(obj);
        }
        C7491o6 c7491o6 = (C7491o6) obj;
        if (this.f34621g != c7491o6.f34621g) {
            return false;
        }
        long[] jArr = c7491o6.f34620f;
        for (int i = 0; i < this.f34621g; i++) {
            if (this.f34620f[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        m7039d0(i);
        return Long.valueOf(this.f34620f[i]);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f34621g; i2++) {
            i = (i * 31) + C7365f6.m7499e(this.f34620f[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int i = this.f34621g;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f34620f[i2] == longValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7337d6
    /* renamed from: k */
    public final AbstractC7337d6 mo6737a(int i) {
        if (i >= this.f34621g) {
            return new C7491o6(Arrays.copyOf(this.f34620f, i), this.f34621g);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        m7027c();
        m7039d0(i);
        long[] jArr = this.f34620f;
        long j = jArr[i];
        int i2 = this.f34621g;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.f34621g--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m7027c();
        if (i2 >= i) {
            long[] jArr = this.f34620f;
            System.arraycopy(jArr, i2, jArr, i, this.f34621g - i2);
            this.f34621g -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m7027c();
        m7039d0(i);
        long[] jArr = this.f34620f;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f34621g;
    }
}
