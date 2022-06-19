package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzemc.class */
public final class zzemc extends zzejl<Long> implements zzelm, zzena, RandomAccess {
    private static final zzemc zzish;
    private int size;
    private long[] zzisi;

    static {
        zzemc zzemcVar = new zzemc(new long[0], 0);
        zzish = zzemcVar;
        zzemcVar.zzbgf();
    }

    zzemc() {
        this(new long[10], 0);
    }

    private zzemc(long[] jArr, int i) {
        this.zzisi = jArr;
        this.size = i;
    }

    public static zzemc zzbjr() {
        return zzish;
    }

    private final void zzfw(int i) {
        if (i < 0 || i >= this.size) {
            throw new IndexOutOfBoundsException(zzfx(i));
        }
    }

    private final String zzfx(int i) {
        int i2 = this.size;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        zzbgg();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzfx(i));
        }
        long[] jArr = this.zzisi;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.zzisi, i, jArr2, i + 1, this.size - i);
            this.zzisi = jArr2;
        }
        this.zzisi[i] = longValue;
        this.size++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        zzfr(((Long) obj).longValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        zzbgg();
        zzeld.checkNotNull(collection);
        if (!(collection instanceof zzemc)) {
            return super.addAll(collection);
        }
        zzemc zzemcVar = (zzemc) collection;
        int i = zzemcVar.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        long[] jArr = this.zzisi;
        if (i3 > jArr.length) {
            this.zzisi = Arrays.copyOf(jArr, i3);
        }
        System.arraycopy(zzemcVar.zzisi, 0, this.zzisi, this.size, zzemcVar.size);
        this.size = i3;
        this.modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzemc)) {
            return super.equals(obj);
        }
        zzemc zzemcVar = (zzemc) obj;
        if (this.size != zzemcVar.size) {
            return false;
        }
        long[] jArr = zzemcVar.zzisi;
        for (int i = 0; i < this.size; i++) {
            if (this.zzisi[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(getLong(i));
    }

    public final long getLong(int i) {
        zzfw(i);
        return this.zzisi[i];
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzeld.zzfq(this.zzisi[i2]);
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
            if (this.zzisi[i] == longValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzbgg();
        zzfw(i);
        long[] jArr = this.zzisi;
        long j = jArr[i];
        int i2 = this.size;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.size--;
        this.modCount++;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zzbgg();
        if (i2 >= i) {
            long[] jArr = this.zzisi;
            System.arraycopy(jArr, i2, jArr, i, this.size - i2);
            this.size -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        zzbgg();
        zzfw(i);
        long[] jArr = this.zzisi;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    public final void zzfr(long j) {
        zzbgg();
        int i = this.size;
        long[] jArr = this.zzisi;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.zzisi = jArr2;
        }
        long[] jArr3 = this.zzisi;
        int i2 = this.size;
        this.size = i2 + 1;
        jArr3[i2] = j;
    }

    @Override // com.google.android.gms.internal.ads.zzelm
    /* renamed from: zzhi */
    public final zzelm zzfy(int i) {
        if (i >= this.size) {
            return new zzemc(Arrays.copyOf(this.zzisi, i), this.size);
        }
        throw new IllegalArgumentException();
    }
}
