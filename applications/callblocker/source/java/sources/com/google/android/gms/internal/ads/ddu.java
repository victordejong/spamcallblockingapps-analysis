package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ddu.class */
public final class ddu extends dbc<Long> implements ddf, det, RandomAccess {

    /* renamed from: a */
    private static final ddu f14127a;

    /* renamed from: b */
    private long[] f14128b;

    /* renamed from: c */
    private int f14129c;

    static {
        ddu dduVar = new ddu(new long[0], 0);
        f14127a = dduVar;
        dduVar.mo10038b();
    }

    ddu() {
        this(new long[10], 0);
    }

    private ddu(long[] jArr, int i) {
        this.f14128b = jArr;
        this.f14129c = i;
    }

    /* renamed from: d */
    public static ddu m10015d() {
        return f14127a;
    }

    /* renamed from: d */
    private final void m10014d(int i) {
        if (i < 0 || i >= this.f14129c) {
            throw new IndexOutOfBoundsException(m10013e(i));
        }
    }

    /* renamed from: e */
    private final String m10013e(int i) {
        return new StringBuilder(35).append("Index:").append(i).append(", Size:").append(this.f14129c).toString();
    }

    /* renamed from: a */
    public final void m10018a(long j) {
        m10248c();
        if (this.f14129c == this.f14128b.length) {
            long[] jArr = new long[((this.f14129c * 3) / 2) + 1];
            System.arraycopy(this.f14128b, 0, jArr, 0, this.f14129c);
            this.f14128b = jArr;
        }
        long[] jArr2 = this.f14128b;
        int i = this.f14129c;
        this.f14129c = i + 1;
        jArr2[i] = j;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m10248c();
        if (i < 0 || i > this.f14129c) {
            throw new IndexOutOfBoundsException(m10013e(i));
        }
        if (this.f14129c < this.f14128b.length) {
            System.arraycopy(this.f14128b, i, this.f14128b, i + 1, this.f14129c - i);
        } else {
            long[] jArr = new long[((this.f14129c * 3) / 2) + 1];
            System.arraycopy(this.f14128b, 0, jArr, 0, i);
            System.arraycopy(this.f14128b, i, jArr, i + 1, this.f14129c - i);
            this.f14128b = jArr;
        }
        this.f14128b[i] = longValue;
        this.f14129c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m10018a(((Long) obj).longValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        boolean z = false;
        m10248c();
        dcz.m10047a(collection);
        if (!(collection instanceof ddu)) {
            z = super.addAll(collection);
        } else {
            ddu dduVar = (ddu) collection;
            if (dduVar.f14129c != 0) {
                if (Integer.MAX_VALUE - this.f14129c < dduVar.f14129c) {
                    throw new OutOfMemoryError();
                }
                int i = this.f14129c + dduVar.f14129c;
                if (i > this.f14128b.length) {
                    this.f14128b = Arrays.copyOf(this.f14128b, i);
                }
                System.arraycopy(dduVar.f14128b, 0, this.f14128b, this.f14129c, dduVar.f14129c);
                this.f14129c = i;
                this.modCount++;
                z = true;
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.ddf
    /* renamed from: b */
    public final ddf mo9923a(int i) {
        if (i < this.f14129c) {
            throw new IllegalArgumentException();
        }
        return new ddu(Arrays.copyOf(this.f14128b, i), this.f14129c);
    }

    /* renamed from: c */
    public final long m10016c(int i) {
        m10014d(i);
        return this.f14128b[i];
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else if (!(obj instanceof ddu)) {
            z = super.equals(obj);
        } else {
            ddu dduVar = (ddu) obj;
            z = false;
            if (this.f14129c == dduVar.f14129c) {
                long[] jArr = dduVar.f14128b;
                int i = 0;
                while (true) {
                    if (i >= this.f14129c) {
                        z = true;
                        break;
                    }
                    z = false;
                    if (this.f14128b[i] != jArr[i]) {
                        break;
                    }
                    i++;
                }
            }
        }
        return z;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(m10016c(i));
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f14129c; i2++) {
            i = (i * 31) + dcz.m10049a(this.f14128b[i2]);
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m10248c();
        m10014d(i);
        long j = this.f14128b[i];
        if (i < this.f14129c - 1) {
            System.arraycopy(this.f14128b, i + 1, this.f14128b, i, (this.f14129c - i) - 1);
        }
        this.f14129c--;
        this.modCount++;
        return Long.valueOf(j);
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        boolean z;
        m10248c();
        int i = 0;
        while (true) {
            z = false;
            if (i >= this.f14129c) {
                break;
            } else if (obj.equals(Long.valueOf(this.f14128b[i]))) {
                System.arraycopy(this.f14128b, i + 1, this.f14128b, i, (this.f14129c - i) - 1);
                this.f14129c--;
                this.modCount++;
                z = true;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m10248c();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        System.arraycopy(this.f14128b, i2, this.f14128b, i, this.f14129c - i2);
        this.f14129c -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m10248c();
        m10014d(i);
        long j = this.f14128b[i];
        this.f14128b[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f14129c;
    }
}
