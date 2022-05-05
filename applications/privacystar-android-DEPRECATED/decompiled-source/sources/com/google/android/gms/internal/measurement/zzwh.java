package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzwh.class */
final class zzwh extends zztz<Long> implements zzvs<Long>, zzxe, RandomAccess {
    private static final zzwh zzcam;
    private int size;
    private long[] zzcan;

    static {
        zzwh zzwhVar = new zzwh();
        zzcam = zzwhVar;
        zzwhVar.zzsm();
    }

    zzwh() {
        this(new long[10], 0);
    }

    private zzwh(long[] jArr, int i) {
        this.zzcan = jArr;
        this.size = i;
    }

    private final void zzai(int i) {
        if (i < 0 || i >= this.size) {
            throw new IndexOutOfBoundsException(zzaj(i));
        }
    }

    private final String zzaj(int i) {
        int i2 = this.size;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    private final void zzk(int i, long j) {
        zztx();
        if (i < 0 || i > this.size) {
            throw new IndexOutOfBoundsException(zzaj(i));
        }
        if (this.size < this.zzcan.length) {
            System.arraycopy(this.zzcan, i, this.zzcan, i + 1, this.size - i);
        } else {
            long[] jArr = new long[((this.size * 3) / 2) + 1];
            System.arraycopy(this.zzcan, 0, jArr, 0, i);
            System.arraycopy(this.zzcan, i, jArr, i + 1, this.size - i);
            this.zzcan = jArr;
        }
        this.zzcan[i] = j;
        this.size++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zzk(i, ((Long) obj).longValue());
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        zztx();
        zzvo.checkNotNull(collection);
        if (!(collection instanceof zzwh)) {
            return super.addAll(collection);
        }
        zzwh zzwhVar = (zzwh) collection;
        if (zzwhVar.size == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.size < zzwhVar.size) {
            throw new OutOfMemoryError();
        }
        int i = this.size + zzwhVar.size;
        if (i > this.zzcan.length) {
            this.zzcan = Arrays.copyOf(this.zzcan, i);
        }
        System.arraycopy(zzwhVar.zzcan, 0, this.zzcan, this.size, zzwhVar.size);
        this.size = i;
        this.modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzwh)) {
            return super.equals(obj);
        }
        zzwh zzwhVar = (zzwh) obj;
        if (this.size != zzwhVar.size) {
            return false;
        }
        long[] jArr = zzwhVar.zzcan;
        for (int i = 0; i < this.size; i++) {
            if (this.zzcan[i] != jArr[i]) {
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
        zzai(i);
        return this.zzcan[i];
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzvo.zzbf(this.zzcan[i2]);
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zztx();
        zzai(i);
        long j = this.zzcan[i];
        if (i < this.size - 1) {
            System.arraycopy(this.zzcan, i + 1, this.zzcan, i, this.size - i);
        }
        this.size--;
        this.modCount++;
        return Long.valueOf(j);
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zztx();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Long.valueOf(this.zzcan[i]))) {
                System.arraycopy(this.zzcan, i + 1, this.zzcan, i, this.size - i);
                this.size--;
                this.modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zztx();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        System.arraycopy(this.zzcan, i2, this.zzcan, i, this.size - i2);
        this.size -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        zztx();
        zzai(i);
        long j = this.zzcan[i];
        this.zzcan[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.measurement.zzvs
    public final /* synthetic */ zzvs<Long> zzak(int i) {
        if (i >= this.size) {
            return new zzwh(Arrays.copyOf(this.zzcan, i), this.size);
        }
        throw new IllegalArgumentException();
    }

    public final void zzbg(long j) {
        zzk(this.size, j);
    }
}
