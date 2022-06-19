package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.y5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/y5.class */
final class C7622y5 extends AbstractC7503p4<Integer> implements RandomAccess, AbstractC7323c6, AbstractC7380g7 {

    /* renamed from: e */
    private static final C7622y5 f34789e;

    /* renamed from: f */
    private int[] f34790f;

    /* renamed from: g */
    private int f34791g;

    static {
        C7622y5 c7622y5 = new C7622y5(new int[0], 0);
        f34789e = c7622y5;
        c7622y5.mo7028b();
    }

    C7622y5() {
        this(new int[10], 0);
    }

    private C7622y5(int[] iArr, int i) {
        this.f34790f = iArr;
        this.f34791g = i;
    }

    /* renamed from: d */
    public static C7622y5 m6736d() {
        return f34789e;
    }

    /* renamed from: h */
    private final void m6733h(int i) {
        if (i < 0 || i >= this.f34791g) {
            throw new IndexOutOfBoundsException(m6732i(i));
        }
    }

    /* renamed from: i */
    private final String m6732i(int i) {
        int i2 = this.f34791g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7323c6
    /* renamed from: A */
    public final AbstractC7323c6 mo6737a(int i) {
        if (i >= this.f34791g) {
            return new C7622y5(Arrays.copyOf(this.f34790f, i), this.f34791g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        m7027c();
        if (i < 0 || i > (i2 = this.f34791g)) {
            throw new IndexOutOfBoundsException(m6732i(i));
        }
        int[] iArr = this.f34790f;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f34790f, i, iArr2, i + 1, this.f34791g - i);
            this.f34790f = iArr2;
        }
        this.f34790f[i] = intValue;
        this.f34791g++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        m6735d0(((Integer) obj).intValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        m7027c();
        C7365f6.m7503a(collection);
        if (!(collection instanceof C7622y5)) {
            return super.addAll(collection);
        }
        C7622y5 c7622y5 = (C7622y5) collection;
        int i = c7622y5.f34791g;
        if (i == 0) {
            return false;
        }
        int i2 = this.f34791g;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.f34790f;
        if (i3 > iArr.length) {
            this.f34790f = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(c7622y5.f34790f, 0, this.f34790f, this.f34791g, c7622y5.f34791g);
        this.f34791g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    /* renamed from: d0 */
    public final void m6735d0(int i) {
        m7027c();
        int i2 = this.f34791g;
        int[] iArr = this.f34790f;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f34790f = iArr2;
        }
        int[] iArr3 = this.f34790f;
        int i3 = this.f34791g;
        this.f34791g = i3 + 1;
        iArr3[i3] = i;
    }

    /* renamed from: e */
    public final int m6734e(int i) {
        m6733h(i);
        return this.f34790f[i];
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7622y5)) {
            return super.equals(obj);
        }
        C7622y5 c7622y5 = (C7622y5) obj;
        if (this.f34791g != c7622y5.f34791g) {
            return false;
        }
        int[] iArr = c7622y5.f34790f;
        for (int i = 0; i < this.f34791g; i++) {
            if (this.f34790f[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        m6733h(i);
        return Integer.valueOf(this.f34790f[i]);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f34791g; i2++) {
            i = (i * 31) + this.f34790f[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int i = this.f34791g;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f34790f[i2] == intValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        m7027c();
        m6733h(i);
        int[] iArr = this.f34790f;
        int i2 = iArr[i];
        int i3 = this.f34791g;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i3 - i) - 1);
        }
        this.f34791g--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m7027c();
        if (i2 >= i) {
            int[] iArr = this.f34790f;
            System.arraycopy(iArr, i2, iArr, i, this.f34791g - i2);
            this.f34791g -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m7027c();
        m6733h(i);
        int[] iArr = this.f34790f;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f34791g;
    }
}
