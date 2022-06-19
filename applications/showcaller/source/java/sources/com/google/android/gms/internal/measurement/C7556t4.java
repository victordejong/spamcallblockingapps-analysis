package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.t4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/t4.class */
final class C7556t4 extends AbstractC7503p4<Boolean> implements RandomAccess, AbstractC7351e6, AbstractC7380g7 {

    /* renamed from: e */
    private static final C7556t4 f34690e;

    /* renamed from: f */
    private boolean[] f34691f;

    /* renamed from: g */
    private int f34692g;

    static {
        C7556t4 c7556t4 = new C7556t4(new boolean[0], 0);
        f34690e = c7556t4;
        c7556t4.mo7028b();
    }

    C7556t4() {
        this(new boolean[10], 0);
    }

    private C7556t4(boolean[] zArr, int i) {
        this.f34691f = zArr;
        this.f34692g = i;
    }

    /* renamed from: e */
    private final void m6907e(int i) {
        if (i < 0 || i >= this.f34692g) {
            throw new IndexOutOfBoundsException(m6906h(i));
        }
    }

    /* renamed from: h */
    private final String m6906h(int i) {
        int i2 = this.f34692g;
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
        if (i >= this.f34692g) {
            return new C7556t4(Arrays.copyOf(this.f34691f, i), this.f34692g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m7027c();
        if (i < 0 || i > (i2 = this.f34692g)) {
            throw new IndexOutOfBoundsException(m6906h(i));
        }
        boolean[] zArr = this.f34691f;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.f34691f, i, zArr2, i + 1, this.f34692g - i);
            this.f34691f = zArr2;
        }
        this.f34691f[i] = booleanValue;
        this.f34692g++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        m6908d(((Boolean) obj).booleanValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        m7027c();
        C7365f6.m7503a(collection);
        if (!(collection instanceof C7556t4)) {
            return super.addAll(collection);
        }
        C7556t4 c7556t4 = (C7556t4) collection;
        int i = c7556t4.f34692g;
        if (i == 0) {
            return false;
        }
        int i2 = this.f34692g;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        boolean[] zArr = this.f34691f;
        if (i3 > zArr.length) {
            this.f34691f = Arrays.copyOf(zArr, i3);
        }
        System.arraycopy(c7556t4.f34691f, 0, this.f34691f, this.f34692g, c7556t4.f34692g);
        this.f34692g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    /* renamed from: d */
    public final void m6908d(boolean z) {
        m7027c();
        int i = this.f34692g;
        boolean[] zArr = this.f34691f;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[((i * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.f34691f = zArr2;
        }
        boolean[] zArr3 = this.f34691f;
        int i2 = this.f34692g;
        this.f34692g = i2 + 1;
        zArr3[i2] = z;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7556t4)) {
            return super.equals(obj);
        }
        C7556t4 c7556t4 = (C7556t4) obj;
        if (this.f34692g != c7556t4.f34692g) {
            return false;
        }
        boolean[] zArr = c7556t4.f34691f;
        for (int i = 0; i < this.f34692g; i++) {
            if (this.f34691f[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        m6907e(i);
        return Boolean.valueOf(this.f34691f[i]);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f34692g; i2++) {
            i = (i * 31) + C7365f6.m7498f(this.f34691f[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int i = this.f34692g;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f34691f[i2] == booleanValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        m7027c();
        m6907e(i);
        boolean[] zArr = this.f34691f;
        boolean z = zArr[i];
        int i2 = this.f34692g;
        if (i < i2 - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (i2 - i) - 1);
        }
        this.f34692g--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m7027c();
        if (i2 >= i) {
            boolean[] zArr = this.f34691f;
            System.arraycopy(zArr, i2, zArr, i, this.f34692g - i2);
            this.f34692g -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m7027c();
        m6907e(i);
        boolean[] zArr = this.f34691f;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f34692g;
    }
}
