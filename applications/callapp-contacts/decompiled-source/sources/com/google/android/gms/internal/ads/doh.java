package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/doh.class */
public final class doh extends dlq<Long> implements dns, dpf, RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private static final doh f27029a;

    /* renamed from: b  reason: collision with root package name */
    private long[] f27030b;

    /* renamed from: c  reason: collision with root package name */
    private int f27031c;

    static {
        doh dohVar = new doh(new long[0], 0);
        f27029a = dohVar;
        dohVar.b();
    }

    doh() {
        this(new long[10], 0);
    }

    private doh(long[] jArr, int i) {
        this.f27030b = jArr;
        this.f27031c = i;
    }

    public static doh d() {
        return f27029a;
    }

    private final void d(int i) {
        if (i < 0 || i >= this.f27031c) {
            throw new IndexOutOfBoundsException(e(i));
        }
    }

    private final String e(int i) {
        int i2 = this.f27031c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    public final void a(long j) {
        c();
        int i = this.f27031c;
        long[] jArr = this.f27030b;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f27030b = jArr2;
        }
        long[] jArr3 = this.f27030b;
        int i2 = this.f27031c;
        this.f27031c = i2 + 1;
        jArr3[i2] = j;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        c();
        if (i < 0 || i > (i2 = this.f27031c)) {
            throw new IndexOutOfBoundsException(e(i));
        }
        long[] jArr = this.f27030b;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f27030b, i, jArr2, i + 1, this.f27031c - i);
            this.f27030b = jArr2;
        }
        this.f27030b[i] = longValue;
        this.f27031c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        a(((Long) obj).longValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        c();
        dnj.a(collection);
        if (!(collection instanceof doh)) {
            return super.addAll(collection);
        }
        doh dohVar = (doh) collection;
        int i = dohVar.f27031c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f27031c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            long[] jArr = this.f27030b;
            if (i3 > jArr.length) {
                this.f27030b = Arrays.copyOf(jArr, i3);
            }
            System.arraycopy(dohVar.f27030b, 0, this.f27030b, this.f27031c, dohVar.f27031c);
            this.f27031c = i3;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.ads.dns
    /* renamed from: b */
    public final dns a(int i) {
        if (i >= this.f27031c) {
            return new doh(Arrays.copyOf(this.f27030b, i), this.f27031c);
        }
        throw new IllegalArgumentException();
    }

    public final long c(int i) {
        d(i);
        return this.f27030b[i];
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
        if (this.f27031c != dohVar.f27031c) {
            return false;
        }
        long[] jArr = dohVar.f27030b;
        for (int i = 0; i < this.f27031c; i++) {
            if (this.f27030b[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(c(i));
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f27031c; i2++) {
            i = (i * 31) + dnj.a(this.f27030b[i2]);
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
            if (this.f27030b[i] == longValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        c();
        d(i);
        long[] jArr = this.f27030b;
        long j = jArr[i];
        int i2 = this.f27031c;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.f27031c--;
        this.modCount++;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        c();
        if (i2 >= i) {
            long[] jArr = this.f27030b;
            System.arraycopy(jArr, i2, jArr, i, this.f27031c - i2);
            this.f27031c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        c();
        d(i);
        long[] jArr = this.f27030b;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f27031c;
    }
}
