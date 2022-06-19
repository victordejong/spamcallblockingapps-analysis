package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dcx.class */
public final class dcx extends dbc<Integer> implements ddd, det, RandomAccess {

    /* renamed from: a */
    private static final dcx f14090a;

    /* renamed from: b */
    private int[] f14091b;

    /* renamed from: c */
    private int f14092c;

    static {
        dcx dcxVar = new dcx(new int[0], 0);
        f14090a = dcxVar;
        dcxVar.mo10038b();
    }

    dcx() {
        this(new int[10], 0);
    }

    private dcx(int[] iArr, int i) {
        this.f14091b = iArr;
        this.f14092c = i;
    }

    /* renamed from: d */
    public static dcx m10053d() {
        return f14090a;
    }

    /* renamed from: e */
    private final void m10052e(int i) {
        if (i < 0 || i >= this.f14092c) {
            throw new IndexOutOfBoundsException(m10051f(i));
        }
    }

    /* renamed from: f */
    private final String m10051f(int i) {
        return new StringBuilder(35).append("Index:").append(i).append(", Size:").append(this.f14092c).toString();
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m10248c();
        if (i < 0 || i > this.f14092c) {
            throw new IndexOutOfBoundsException(m10051f(i));
        }
        if (this.f14092c < this.f14091b.length) {
            System.arraycopy(this.f14091b, i, this.f14091b, i + 1, this.f14092c - i);
        } else {
            int[] iArr = new int[((this.f14092c * 3) / 2) + 1];
            System.arraycopy(this.f14091b, 0, iArr, 0, i);
            System.arraycopy(this.f14091b, i, iArr, i + 1, this.f14092c - i);
            this.f14091b = iArr;
        }
        this.f14091b[i] = intValue;
        this.f14092c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        mo10039d(((Integer) obj).intValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        boolean z = false;
        m10248c();
        dcz.m10047a(collection);
        if (!(collection instanceof dcx)) {
            z = super.addAll(collection);
        } else {
            dcx dcxVar = (dcx) collection;
            if (dcxVar.f14092c != 0) {
                if (Integer.MAX_VALUE - this.f14092c < dcxVar.f14092c) {
                    throw new OutOfMemoryError();
                }
                int i = this.f14092c + dcxVar.f14092c;
                if (i > this.f14091b.length) {
                    this.f14091b = Arrays.copyOf(this.f14091b, i);
                }
                System.arraycopy(dcxVar.f14091b, 0, this.f14091b, this.f14092c, dcxVar.f14092c);
                this.f14092c = i;
                this.modCount++;
                z = true;
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.ddd
    /* renamed from: b */
    public final ddd mo9923a(int i) {
        if (i < this.f14092c) {
            throw new IllegalArgumentException();
        }
        return new dcx(Arrays.copyOf(this.f14091b, i), this.f14092c);
    }

    /* renamed from: c */
    public final int m10054c(int i) {
        m10052e(i);
        return this.f14091b[i];
    }

    @Override // com.google.android.gms.internal.ads.ddd
    /* renamed from: d */
    public final void mo10039d(int i) {
        m10248c();
        if (this.f14092c == this.f14091b.length) {
            int[] iArr = new int[((this.f14092c * 3) / 2) + 1];
            System.arraycopy(this.f14091b, 0, iArr, 0, this.f14092c);
            this.f14091b = iArr;
        }
        int[] iArr2 = this.f14091b;
        int i2 = this.f14092c;
        this.f14092c = i2 + 1;
        iArr2[i2] = i;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else if (!(obj instanceof dcx)) {
            z = super.equals(obj);
        } else {
            dcx dcxVar = (dcx) obj;
            z = false;
            if (this.f14092c == dcxVar.f14092c) {
                int[] iArr = dcxVar.f14091b;
                int i = 0;
                while (true) {
                    if (i >= this.f14092c) {
                        z = true;
                        break;
                    }
                    z = false;
                    if (this.f14091b[i] != iArr[i]) {
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
        return Integer.valueOf(m10054c(i));
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f14092c; i2++) {
            i = (i * 31) + this.f14091b[i2];
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m10248c();
        m10052e(i);
        int i2 = this.f14091b[i];
        if (i < this.f14092c - 1) {
            System.arraycopy(this.f14091b, i + 1, this.f14091b, i, (this.f14092c - i) - 1);
        }
        this.f14092c--;
        this.modCount++;
        return Integer.valueOf(i2);
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        boolean z;
        m10248c();
        int i = 0;
        while (true) {
            z = false;
            if (i >= this.f14092c) {
                break;
            } else if (obj.equals(Integer.valueOf(this.f14091b[i]))) {
                System.arraycopy(this.f14091b, i + 1, this.f14091b, i, (this.f14092c - i) - 1);
                this.f14092c--;
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
        System.arraycopy(this.f14091b, i2, this.f14091b, i, this.f14092c - i2);
        this.f14092c -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m10248c();
        m10052e(i);
        int i2 = this.f14091b[i];
        this.f14091b[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f14092c;
    }
}
