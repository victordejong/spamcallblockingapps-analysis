package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dlu.class */
final class dlu extends dlq<Boolean> implements dnr<Boolean>, dpf, RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private static final dlu f26935a;

    /* renamed from: b  reason: collision with root package name */
    private boolean[] f26936b;

    /* renamed from: c  reason: collision with root package name */
    private int f26937c;

    static {
        dlu dluVar = new dlu(new boolean[0], 0);
        f26935a = dluVar;
        dluVar.b();
    }

    dlu() {
        this(new boolean[10], 0);
    }

    private dlu(boolean[] zArr, int i) {
        this.f26936b = zArr;
        this.f26937c = i;
    }

    private final void b(int i) {
        if (i < 0 || i >= this.f26937c) {
            throw new IndexOutOfBoundsException(c(i));
        }
    }

    private final String c(int i) {
        int i2 = this.f26937c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.dnr
    public final /* synthetic */ dnr<Boolean> a(int i) {
        if (i >= this.f26937c) {
            return new dlu(Arrays.copyOf(this.f26936b, i), this.f26937c);
        }
        throw new IllegalArgumentException();
    }

    public final void a(boolean z) {
        c();
        int i = this.f26937c;
        boolean[] zArr = this.f26936b;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[((i * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.f26936b = zArr2;
        }
        boolean[] zArr3 = this.f26936b;
        int i2 = this.f26937c;
        this.f26937c = i2 + 1;
        zArr3[i2] = z;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        c();
        if (i < 0 || i > (i2 = this.f26937c)) {
            throw new IndexOutOfBoundsException(c(i));
        }
        boolean[] zArr = this.f26936b;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.f26936b, i, zArr2, i + 1, this.f26937c - i);
            this.f26936b = zArr2;
        }
        this.f26936b[i] = booleanValue;
        this.f26937c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        a(((Boolean) obj).booleanValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        c();
        dnj.a(collection);
        if (!(collection instanceof dlu)) {
            return super.addAll(collection);
        }
        dlu dluVar = (dlu) collection;
        int i = dluVar.f26937c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f26937c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            boolean[] zArr = this.f26936b;
            if (i3 > zArr.length) {
                this.f26936b = Arrays.copyOf(zArr, i3);
            }
            System.arraycopy(dluVar.f26936b, 0, this.f26936b, this.f26937c, dluVar.f26937c);
            this.f26937c = i3;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
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
        if (this.f26937c != dluVar.f26937c) {
            return false;
        }
        boolean[] zArr = dluVar.f26936b;
        for (int i = 0; i < this.f26937c; i++) {
            if (this.f26936b[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        b(i);
        return Boolean.valueOf(this.f26936b[i]);
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f26937c; i2++) {
            i = (i * 31) + dnj.a(this.f26936b[i2]);
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
            if (this.f26936b[i] == booleanValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        c();
        b(i);
        boolean[] zArr = this.f26936b;
        boolean z = zArr[i];
        int i2 = this.f26937c;
        if (i < i2 - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (i2 - i) - 1);
        }
        this.f26937c--;
        this.modCount++;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        c();
        if (i2 >= i) {
            boolean[] zArr = this.f26936b;
            System.arraycopy(zArr, i2, zArr, i, this.f26937c - i2);
            this.f26937c -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        c();
        b(i);
        boolean[] zArr = this.f26936b;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f26937c;
    }
}
