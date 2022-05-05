package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzub.class */
final class zzub extends zztz<Boolean> implements zzvs<Boolean>, zzxe, RandomAccess {
    private static final zzub zzbtx;
    private int size;
    private boolean[] zzbty;

    static {
        zzub zzubVar = new zzub();
        zzbtx = zzubVar;
        zzubVar.zzsm();
    }

    zzub() {
        this(new boolean[10], 0);
    }

    private zzub(boolean[] zArr, int i) {
        this.zzbty = zArr;
        this.size = i;
    }

    private final void zza(int i, boolean z) {
        zztx();
        if (i < 0 || i > this.size) {
            throw new IndexOutOfBoundsException(zzaj(i));
        }
        if (this.size < this.zzbty.length) {
            System.arraycopy(this.zzbty, i, this.zzbty, i + 1, this.size - i);
        } else {
            boolean[] zArr = new boolean[((this.size * 3) / 2) + 1];
            System.arraycopy(this.zzbty, 0, zArr, 0, i);
            System.arraycopy(this.zzbty, i, zArr, i + 1, this.size - i);
            this.zzbty = zArr;
        }
        this.zzbty[i] = z;
        this.size++;
        this.modCount++;
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

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zza(i, ((Boolean) obj).booleanValue());
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        zztx();
        zzvo.checkNotNull(collection);
        if (!(collection instanceof zzub)) {
            return super.addAll(collection);
        }
        zzub zzubVar = (zzub) collection;
        if (zzubVar.size == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.size < zzubVar.size) {
            throw new OutOfMemoryError();
        }
        int i = this.size + zzubVar.size;
        if (i > this.zzbty.length) {
            this.zzbty = Arrays.copyOf(this.zzbty, i);
        }
        System.arraycopy(zzubVar.zzbty, 0, this.zzbty, this.size, zzubVar.size);
        this.size = i;
        this.modCount++;
        return true;
    }

    public final void addBoolean(boolean z) {
        zza(this.size, z);
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzub)) {
            return super.equals(obj);
        }
        zzub zzubVar = (zzub) obj;
        if (this.size != zzubVar.size) {
            return false;
        }
        boolean[] zArr = zzubVar.zzbty;
        for (int i = 0; i < this.size; i++) {
            if (this.zzbty[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        zzai(i);
        return Boolean.valueOf(this.zzbty[i]);
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzvo.zzw(this.zzbty[i2]);
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zztx();
        zzai(i);
        boolean z = this.zzbty[i];
        if (i < this.size - 1) {
            System.arraycopy(this.zzbty, i + 1, this.zzbty, i, this.size - i);
        }
        this.size--;
        this.modCount++;
        return Boolean.valueOf(z);
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zztx();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Boolean.valueOf(this.zzbty[i]))) {
                System.arraycopy(this.zzbty, i + 1, this.zzbty, i, this.size - i);
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
        System.arraycopy(this.zzbty, i2, this.zzbty, i, this.size - i2);
        this.size -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        zztx();
        zzai(i);
        boolean z = this.zzbty[i];
        this.zzbty[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.measurement.zzvs
    public final /* synthetic */ zzvs<Boolean> zzak(int i) {
        if (i >= this.size) {
            return new zzub(Arrays.copyOf(this.zzbty, i), this.size);
        }
        throw new IllegalArgumentException();
    }
}
