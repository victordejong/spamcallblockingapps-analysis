package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzff.class */
final class zzff extends zzdc<Long> implements zzeo<Long>, zzga, RandomAccess {
    private static final com.google.android.gms.internal.firebase-perf.zzff zzsa;
    private int size;
    private long[] zzsb;

    static {
        com.google.android.gms.internal.firebase-perf.zzff zzffVar = new zzff(new long[0], 0);
        zzsa = zzffVar;
        zzffVar.zzfk();
    }

    zzff() {
        this(new long[10], 0);
    }

    private zzff(long[] jArr, int i) {
        this.zzsb = jArr;
        this.size = i;
    }

    private final void zzam(int i) {
        if (i < 0 || i >= this.size) {
            throw new IndexOutOfBoundsException(zzan(i));
        }
    }

    private final String zzan(int i) {
        int i2 = this.size;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        zzfl();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzan(i));
        }
        long[] jArr = this.zzsb;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.zzsb, i, jArr2, i + 1, this.size - i);
            this.zzsb = jArr2;
        }
        this.zzsb[i] = longValue;
        this.size++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        long longValue = ((Long) obj).longValue();
        zzfl();
        int i = this.size;
        long[] jArr = this.zzsb;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.zzsb = jArr2;
        }
        long[] jArr3 = this.zzsb;
        int i2 = this.size;
        this.size = i2 + 1;
        jArr3[i2] = longValue;
        return true;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        zzfl();
        zzei.checkNotNull(collection);
        if (!(collection instanceof zzff)) {
            return super.addAll(collection);
        }
        zzff zzffVar = (zzff) collection;
        int i = zzffVar.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        long[] jArr = this.zzsb;
        if (i3 > jArr.length) {
            this.zzsb = Arrays.copyOf(jArr, i3);
        }
        System.arraycopy(zzffVar.zzsb, 0, this.zzsb, this.size, zzffVar.size);
        this.size = i3;
        this.modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzff)) {
            return super.equals(obj);
        }
        zzff zzffVar = (zzff) obj;
        if (this.size != zzffVar.size) {
            return false;
        }
        long[] jArr = zzffVar.zzsb;
        for (int i = 0; i < this.size; i++) {
            if (this.zzsb[i] != jArr[i]) {
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
        zzam(i);
        return this.zzsb[i];
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzei.zzat(this.zzsb[i2]);
        }
        return i;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzfl();
        zzam(i);
        long[] jArr = this.zzsb;
        long j = jArr[i];
        int i2 = this.size;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.size--;
        this.modCount++;
        return Long.valueOf(j);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzfl();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Long.valueOf(this.zzsb[i]))) {
                long[] jArr = this.zzsb;
                System.arraycopy(jArr, i + 1, jArr, i, (this.size - i) - 1);
                this.size--;
                this.modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zzfl();
        if (i2 >= i) {
            long[] jArr = this.zzsb;
            System.arraycopy(jArr, i2, jArr, i, this.size - i2);
            this.size -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        zzfl();
        zzam(i);
        long[] jArr = this.zzsb;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.internal.firebase_perf.zzeo<java.lang.Long>, com.google.android.gms.internal.firebase_perf.zzff] */
    @Override // com.google.android.gms.internal.firebase_perf.zzeo
    public final /* synthetic */ zzeo<Long> zzao(int i) {
        if (i >= this.size) {
            return new zzff(Arrays.copyOf(this.zzsb, i), this.size);
        }
        throw new IllegalArgumentException();
    }
}
