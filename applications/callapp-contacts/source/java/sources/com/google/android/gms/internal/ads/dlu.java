package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dlu.class */
final class dlu extends dlq<Boolean> implements dnr<Boolean>, dpf, RandomAccess {

    /* renamed from: a */
    private static final dlu f47193a;

    /* renamed from: b */
    private boolean[] f47194b;

    /* renamed from: c */
    private int f47195c;

    static {
        dlu dluVar = new dlu(new boolean[0], 0);
        f47193a = dluVar;
        dluVar.mo16303b();
    }

    dlu() {
        this(new boolean[10], 0);
    }

    private dlu(boolean[] zArr, int i) {
        this.f47194b = zArr;
        this.f47195c = i;
    }

    /* renamed from: b */
    private final void m16482b(int i) {
        if (i < 0 || i >= this.f47195c) {
            throw new IndexOutOfBoundsException(m16481c(i));
        }
    }

    /* renamed from: c */
    private final String m16481c(int i) {
        int i2 = this.f47195c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.dnr
    /* renamed from: a */
    public final /* synthetic */ dnr<Boolean> mo16200a(int i) {
        if (i >= this.f47195c) {
            return new dlu(Arrays.copyOf(this.f47194b, i), this.f47195c);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public final void m16483a(boolean z) {
        m16501c();
        int i = this.f47195c;
        boolean[] zArr = this.f47194b;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[((i * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.f47194b = zArr2;
        }
        boolean[] zArr3 = this.f47194b;
        int i2 = this.f47195c;
        this.f47195c = i2 + 1;
        zArr3[i2] = z;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m16501c();
        if (i < 0 || i > (i2 = this.f47195c)) {
            throw new IndexOutOfBoundsException(m16481c(i));
        }
        boolean[] zArr = this.f47194b;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.f47194b, i, zArr2, i + 1, this.f47195c - i);
            this.f47194b = zArr2;
        }
        this.f47194b[i] = booleanValue;
        this.f47195c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m16483a(((Boolean) obj).booleanValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        m16501c();
        dnj.m16316a(collection);
        if (!(collection instanceof dlu)) {
            return super.addAll(collection);
        }
        dlu dluVar = (dlu) collection;
        int i = dluVar.f47195c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f47195c;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        boolean[] zArr = this.f47194b;
        if (i3 > zArr.length) {
            this.f47194b = Arrays.copyOf(zArr, i3);
        }
        System.arraycopy(dluVar.f47194b, 0, this.f47194b, this.f47195c, dluVar.f47195c);
        this.f47195c = i3;
        this.modCount++;
        return true;
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
        if (!(obj instanceof dlu)) {
            return super.equals(obj);
        }
        dlu dluVar = (dlu) obj;
        if (this.f47195c != dluVar.f47195c) {
            return false;
        }
        boolean[] zArr = dluVar.f47194b;
        for (int i = 0; i < this.f47195c; i++) {
            if (this.f47194b[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m16482b(i);
        return Boolean.valueOf(this.f47194b[i]);
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f47195c; i2++) {
            i = (i * 31) + dnj.m16313a(this.f47194b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f47194b[i] == booleanValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m16501c();
        m16482b(i);
        boolean[] zArr = this.f47194b;
        boolean z = zArr[i];
        int i2 = this.f47195c;
        if (i < i2 - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (i2 - i) - 1);
        }
        this.f47195c--;
        this.modCount++;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m16501c();
        if (i2 >= i) {
            boolean[] zArr = this.f47194b;
            System.arraycopy(zArr, i2, zArr, i, this.f47195c - i2);
            this.f47195c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m16501c();
        m16482b(i);
        boolean[] zArr = this.f47194b;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f47195c;
    }
}
