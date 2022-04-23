package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzvj.class */
final class zzvj extends zztz<Float> implements zzvs<Float>, zzxe, RandomAccess {
    private static final zzvj zzbyi;
    private int size;
    private float[] zzbyj;

    static {
        zzvj zzvjVar = new zzvj();
        zzbyi = zzvjVar;
        zzvjVar.zzsm();
    }

    zzvj() {
        this(new float[10], 0);
    }

    private zzvj(float[] fArr, int i) {
        this.zzbyj = fArr;
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

    private final void zzc(int i, float f) {
        zztx();
        if (i < 0 || i > this.size) {
            throw new IndexOutOfBoundsException(zzaj(i));
        }
        if (this.size < this.zzbyj.length) {
            System.arraycopy(this.zzbyj, i, this.zzbyj, i + 1, this.size - i);
        } else {
            float[] fArr = new float[((this.size * 3) / 2) + 1];
            System.arraycopy(this.zzbyj, 0, fArr, 0, i);
            System.arraycopy(this.zzbyj, i, fArr, i + 1, this.size - i);
            this.zzbyj = fArr;
        }
        this.zzbyj[i] = f;
        this.size++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zzc(i, ((Float) obj).floatValue());
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        zztx();
        zzvo.checkNotNull(collection);
        if (!(collection instanceof zzvj)) {
            return super.addAll(collection);
        }
        zzvj zzvjVar = (zzvj) collection;
        if (zzvjVar.size == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.size < zzvjVar.size) {
            throw new OutOfMemoryError();
        }
        int i = this.size + zzvjVar.size;
        if (i > this.zzbyj.length) {
            this.zzbyj = Arrays.copyOf(this.zzbyj, i);
        }
        System.arraycopy(zzvjVar.zzbyj, 0, this.zzbyj, this.size, zzvjVar.size);
        this.size = i;
        this.modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzvj)) {
            return super.equals(obj);
        }
        zzvj zzvjVar = (zzvj) obj;
        if (this.size != zzvjVar.size) {
            return false;
        }
        float[] fArr = zzvjVar.zzbyj;
        for (int i = 0; i < this.size; i++) {
            if (this.zzbyj[i] != fArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        zzai(i);
        return Float.valueOf(this.zzbyj[i]);
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.zzbyj[i2]);
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zztx();
        zzai(i);
        float f = this.zzbyj[i];
        if (i < this.size - 1) {
            System.arraycopy(this.zzbyj, i + 1, this.zzbyj, i, this.size - i);
        }
        this.size--;
        this.modCount++;
        return Float.valueOf(f);
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zztx();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Float.valueOf(this.zzbyj[i]))) {
                System.arraycopy(this.zzbyj, i + 1, this.zzbyj, i, this.size - i);
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
        System.arraycopy(this.zzbyj, i2, this.zzbyj, i, this.size - i2);
        this.size -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        zztx();
        zzai(i);
        float f = this.zzbyj[i];
        this.zzbyj[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.measurement.zzvs
    public final /* synthetic */ zzvs<Float> zzak(int i) {
        if (i >= this.size) {
            return new zzvj(Arrays.copyOf(this.zzbyj, i), this.size);
        }
        throw new IllegalArgumentException();
    }

    public final void zzc(float f) {
        zzc(this.size, f);
    }
}
