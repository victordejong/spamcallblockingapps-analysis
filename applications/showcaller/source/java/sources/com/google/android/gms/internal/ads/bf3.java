package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bf3.class */
final class bf3 extends uc3<Long> implements RandomAccess, qe3, tf3 {

    /* renamed from: e */
    private static final bf3 f20428e;

    /* renamed from: f */
    private long[] f20429f;

    /* renamed from: g */
    private int f20430g;

    static {
        bf3 bf3Var = new bf3(new long[0], 0);
        f20428e = bf3Var;
        bf3Var.mo10354b();
    }

    bf3() {
        this(new long[10], 0);
    }

    private bf3(long[] jArr, int i) {
        this.f20429f = jArr;
        this.f20430g = i;
    }

    /* renamed from: d */
    public static bf3 m16386d() {
        return f20428e;
    }

    /* renamed from: d0 */
    private final void m16385d0(int i) {
        if (i < 0 || i >= this.f20430g) {
            throw new IndexOutOfBoundsException(m16382i(i));
        }
    }

    /* renamed from: i */
    private final String m16382i(int i) {
        int i2 = this.f20430g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.qe3
    /* renamed from: C */
    public final qe3 mo8859a(int i) {
        if (i >= this.f20430g) {
            return new bf3(Arrays.copyOf(this.f20429f, i), this.f20430g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        m10353c();
        if (i < 0 || i > (i2 = this.f20430g)) {
            throw new IndexOutOfBoundsException(m16382i(i));
        }
        long[] jArr = this.f20429f;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f20429f, i, jArr2, i + 1, this.f20430g - i);
            this.f20429f = jArr2;
        }
        this.f20429f[i] = longValue;
        this.f20430g++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        m16383h(((Long) obj).longValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        m10353c();
        se3.m11072a(collection);
        if (!(collection instanceof bf3)) {
            return super.addAll(collection);
        }
        bf3 bf3Var = (bf3) collection;
        int i = bf3Var.f20430g;
        if (i == 0) {
            return false;
        }
        int i2 = this.f20430g;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        long[] jArr = this.f20429f;
        if (i3 > jArr.length) {
            this.f20429f = Arrays.copyOf(jArr, i3);
        }
        System.arraycopy(bf3Var.f20429f, 0, this.f20429f, this.f20430g, bf3Var.f20430g);
        this.f20430g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    /* renamed from: e */
    public final long m16384e(int i) {
        m16385d0(i);
        return this.f20429f[i];
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bf3)) {
            return super.equals(obj);
        }
        bf3 bf3Var = (bf3) obj;
        if (this.f20430g != bf3Var.f20430g) {
            return false;
        }
        long[] jArr = bf3Var.f20429f;
        for (int i = 0; i < this.f20430g; i++) {
            if (this.f20429f[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        m16385d0(i);
        return Long.valueOf(this.f20429f[i]);
    }

    /* renamed from: h */
    public final void m16383h(long j) {
        m10353c();
        int i = this.f20430g;
        long[] jArr = this.f20429f;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f20429f = jArr2;
        }
        long[] jArr3 = this.f20429f;
        int i2 = this.f20430g;
        this.f20430g = i2 + 1;
        jArr3[i2] = j;
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f20430g; i2++) {
            i = (i * 31) + se3.m11068e(this.f20429f[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int i = this.f20430g;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f20429f[i2] == longValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        m10353c();
        m16385d0(i);
        long[] jArr = this.f20429f;
        long j = jArr[i];
        int i2 = this.f20430g;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.f20430g--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m10353c();
        if (i2 >= i) {
            long[] jArr = this.f20429f;
            System.arraycopy(jArr, i2, jArr, i, this.f20430g - i2);
            this.f20430g -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m10353c();
        m16385d0(i);
        long[] jArr = this.f20429f;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f20430g;
    }
}
