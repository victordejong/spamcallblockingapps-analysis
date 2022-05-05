package com.google.android.gms.internal.icing;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbx.class */
final class zzbx extends zzbe<Double> implements zzcr<Double>, RandomAccess {
    private static final zzbx zzei;
    private int size;
    private double[] zzej;

    static {
        zzbx zzbxVar = new zzbx();
        zzei = zzbxVar;
        zzbxVar.zzp();
    }

    zzbx() {
        this(new double[10], 0);
    }

    private zzbx(double[] dArr, int i) {
        this.zzej = dArr;
        this.size = i;
    }

    public static zzbx zzae() {
        return zzei;
    }

    private final void zzf(int i) {
        if (i < 0 || i >= this.size) {
            throw new IndexOutOfBoundsException(zzg(i));
        }
    }

    private final String zzg(int i) {
        int i2 = this.size;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        zzq();
        if (i < 0 || i > this.size) {
            throw new IndexOutOfBoundsException(zzg(i));
        }
        if (this.size < this.zzej.length) {
            System.arraycopy(this.zzej, i, this.zzej, i + 1, this.size - i);
        } else {
            double[] dArr = new double[((this.size * 3) / 2) + 1];
            System.arraycopy(this.zzej, 0, dArr, 0, i);
            System.arraycopy(this.zzej, i, dArr, i + 1, this.size - i);
            this.zzej = dArr;
        }
        this.zzej[i] = doubleValue;
        this.size++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        zzq();
        zzcm.checkNotNull(collection);
        if (!(collection instanceof zzbx)) {
            return super.addAll(collection);
        }
        zzbx zzbxVar = (zzbx) collection;
        if (zzbxVar.size == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.size < zzbxVar.size) {
            throw new OutOfMemoryError();
        }
        int i = this.size + zzbxVar.size;
        if (i > this.zzej.length) {
            this.zzej = Arrays.copyOf(this.zzej, i);
        }
        System.arraycopy(zzbxVar.zzej, 0, this.zzej, this.size, zzbxVar.size);
        this.size = i;
        this.modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbx)) {
            return super.equals(obj);
        }
        zzbx zzbxVar = (zzbx) obj;
        if (this.size != zzbxVar.size) {
            return false;
        }
        double[] dArr = zzbxVar.zzej;
        for (int i = 0; i < this.size; i++) {
            if (this.zzej[i] != dArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        zzf(i);
        return Double.valueOf(this.zzej[i]);
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzcm.zzk(Double.doubleToLongBits(this.zzej[i2]));
        }
        return i;
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzq();
        zzf(i);
        double d = this.zzej[i];
        if (i < this.size - 1) {
            System.arraycopy(this.zzej, i + 1, this.zzej, i, this.size - i);
        }
        this.size--;
        this.modCount++;
        return Double.valueOf(d);
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzq();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Double.valueOf(this.zzej[i]))) {
                System.arraycopy(this.zzej, i + 1, this.zzej, i, this.size - i);
                this.size--;
                this.modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zzq();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        System.arraycopy(this.zzej, i2, this.zzej, i, this.size - i2);
        this.size -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        zzq();
        zzf(i);
        double d = this.zzej[i];
        this.zzej[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.icing.zzcr
    public final /* synthetic */ zzcr<Double> zzh(int i) {
        if (i >= this.size) {
            return new zzbx(Arrays.copyOf(this.zzej, i), this.size);
        }
        throw new IllegalArgumentException();
    }
}
