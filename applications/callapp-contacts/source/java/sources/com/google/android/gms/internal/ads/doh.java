package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/doh.class */
public final class doh extends dlq<Long> implements dns, dpf, RandomAccess {

    /* renamed from: a */
    private static final doh f47315a;

    /* renamed from: b */
    private long[] f47316b;

    /* renamed from: c */
    private int f47317c;

    static {
        doh dohVar = new doh(new long[0], 0);
        f47315a = dohVar;
        dohVar.mo16303b();
    }

    doh() {
        this(new long[10], 0);
    }

    private doh(long[] jArr, int i) {
        this.f47316b = jArr;
        this.f47317c = i;
    }

    /* renamed from: d */
    public static doh m16283d() {
        return f47315a;
    }

    /* renamed from: d */
    private final void m16282d(int i) {
        if (i < 0 || i >= this.f47317c) {
            throw new IndexOutOfBoundsException(m16281e(i));
        }
    }

    /* renamed from: e */
    private final String m16281e(int i) {
        int i2 = this.f47317c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: a */
    public final void m16286a(long j) {
        m16501c();
        int i = this.f47317c;
        long[] jArr = this.f47316b;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f47316b = jArr2;
        }
        long[] jArr3 = this.f47316b;
        int i2 = this.f47317c;
        this.f47317c = i2 + 1;
        jArr3[i2] = j;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        m16501c();
        if (i < 0 || i > (i2 = this.f47317c)) {
            throw new IndexOutOfBoundsException(m16281e(i));
        }
        long[] jArr = this.f47316b;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f47316b, i, jArr2, i + 1, this.f47317c - i);
            this.f47316b = jArr2;
        }
        this.f47316b[i] = longValue;
        this.f47317c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m16286a(((Long) obj).longValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        m16501c();
        dnj.m16316a(collection);
        if (!(collection instanceof doh)) {
            return super.addAll(collection);
        }
        doh dohVar = (doh) collection;
        int i = dohVar.f47317c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f47317c;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        long[] jArr = this.f47316b;
        if (i3 > jArr.length) {
            this.f47316b = Arrays.copyOf(jArr, i3);
        }
        System.arraycopy(dohVar.f47316b, 0, this.f47316b, this.f47317c, dohVar.f47317c);
        this.f47317c = i3;
        this.modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dns
    /* renamed from: b */
    public final dns mo16200a(int i) {
        if (i >= this.f47317c) {
            return new doh(Arrays.copyOf(this.f47316b, i), this.f47317c);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: c */
    public final long m16284c(int i) {
        m16282d(i);
        return this.f47316b[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof doh)) {
            return super.equals(obj);
        }
        doh dohVar = (doh) obj;
        if (this.f47317c != dohVar.f47317c) {
            return false;
        }
        long[] jArr = dohVar.f47316b;
        for (int i = 0; i < this.f47317c; i++) {
            if (this.f47316b[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(m16284c(i));
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f47317c; i2++) {
            i = (i * 31) + dnj.m16317a(this.f47316b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f47316b[i] == longValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m16501c();
        m16282d(i);
        long[] jArr = this.f47316b;
        long j = jArr[i];
        int i2 = this.f47317c;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.f47317c--;
        this.modCount++;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m16501c();
        if (i2 >= i) {
            long[] jArr = this.f47316b;
            System.arraycopy(jArr, i2, jArr, i, this.f47317c - i2);
            this.f47317c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m16501c();
        m16282d(i);
        long[] jArr = this.f47316b;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f47317c;
    }
}
