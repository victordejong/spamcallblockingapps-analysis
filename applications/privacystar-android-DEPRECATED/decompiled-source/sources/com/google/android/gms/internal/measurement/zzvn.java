package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzvn.class */
final class zzvn extends zztz<Integer> implements zzvs<Integer>, zzxe, RandomAccess {
    private static final zzvn zzbzh;
    private int size;
    private int[] zzbzi;

    static {
        zzvn zzvnVar = new zzvn();
        zzbzh = zzvnVar;
        zzvnVar.zzsm();
    }

    zzvn() {
        this(new int[10], 0);
    }

    private zzvn(int[] iArr, int i) {
        this.zzbzi = iArr;
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

    private final void zzp(int i, int i2) {
        zztx();
        if (i < 0 || i > this.size) {
            throw new IndexOutOfBoundsException(zzaj(i));
        }
        if (this.size < this.zzbzi.length) {
            System.arraycopy(this.zzbzi, i, this.zzbzi, i + 1, this.size - i);
        } else {
            int[] iArr = new int[((this.size * 3) / 2) + 1];
            System.arraycopy(this.zzbzi, 0, iArr, 0, i);
            System.arraycopy(this.zzbzi, i, iArr, i + 1, this.size - i);
            this.zzbzi = iArr;
        }
        this.zzbzi[i] = i2;
        this.size++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zzp(i, ((Integer) obj).intValue());
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        zztx();
        zzvo.checkNotNull(collection);
        if (!(collection instanceof zzvn)) {
            return super.addAll(collection);
        }
        zzvn zzvnVar = (zzvn) collection;
        if (zzvnVar.size == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.size < zzvnVar.size) {
            throw new OutOfMemoryError();
        }
        int i = this.size + zzvnVar.size;
        if (i > this.zzbzi.length) {
            this.zzbzi = Arrays.copyOf(this.zzbzi, i);
        }
        System.arraycopy(zzvnVar.zzbzi, 0, this.zzbzi, this.size, zzvnVar.size);
        this.size = i;
        this.modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzvn)) {
            return super.equals(obj);
        }
        zzvn zzvnVar = (zzvn) obj;
        if (this.size != zzvnVar.size) {
            return false;
        }
        int[] iArr = zzvnVar.zzbzi;
        for (int i = 0; i < this.size; i++) {
            if (this.zzbzi[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(getInt(i));
    }

    public final int getInt(int i) {
        zzai(i);
        return this.zzbzi[i];
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + this.zzbzi[i2];
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zztx();
        zzai(i);
        int i2 = this.zzbzi[i];
        if (i < this.size - 1) {
            System.arraycopy(this.zzbzi, i + 1, this.zzbzi, i, this.size - i);
        }
        this.size--;
        this.modCount++;
        return Integer.valueOf(i2);
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zztx();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Integer.valueOf(this.zzbzi[i]))) {
                System.arraycopy(this.zzbzi, i + 1, this.zzbzi, i, this.size - i);
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
        System.arraycopy(this.zzbzi, i2, this.zzbzi, i, this.size - i2);
        this.size -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        zztx();
        zzai(i);
        int i2 = this.zzbzi[i];
        this.zzbzi[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.measurement.zzvs
    public final /* synthetic */ zzvs<Integer> zzak(int i) {
        if (i >= this.size) {
            return new zzvn(Arrays.copyOf(this.zzbzi, i), this.size);
        }
        throw new IllegalArgumentException();
    }

    public final void zzbm(int i) {
        zzp(this.size, i);
    }
}
