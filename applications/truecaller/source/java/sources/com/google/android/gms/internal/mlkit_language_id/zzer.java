package com.google.android.gms.internal.mlkit_language_id;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzer.class */
public final class zzer extends zzdi<Integer> implements zzew<Integer>, zzgi, RandomAccess {
    private static final zzer zza;
    private int[] zzb;
    private int zzc;

    static {
        zzer zzerVar = new zzer(new int[0], 0);
        zza = zzerVar;
        zzerVar.mo38716b_();
    }

    public zzer() {
        this(new int[10], 0);
    }

    private zzer(int[] iArr, int i) {
        this.zzb = iArr;
        this.zzc = i;
    }

    private final void zzc(int i) {
        if (i < 0 || i >= this.zzc) {
            throw new IndexOutOfBoundsException(zzd(i));
        }
    }

    public static zzer zzd() {
        return zza;
    }

    private final String zzd(int i) {
        return C22128a.m8683N1(35, "Index:", i, ", Size:", this.zzc);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdi, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        zzc();
        if (i < 0 || i > (i2 = this.zzc)) {
            throw new IndexOutOfBoundsException(zzd(i));
        }
        int[] iArr = this.zzb;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[C22128a.m8698J1(i2, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.zzb, i, iArr2, i + 1, this.zzc - i);
            this.zzb = iArr2;
        }
        this.zzb[i] = intValue;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdi, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        int intValue = ((Integer) obj).intValue();
        zzc();
        int i = this.zzc;
        int[] iArr = this.zzb;
        if (i == iArr.length) {
            int[] iArr2 = new int[C22128a.m8698J1(i, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            this.zzb = iArr2;
        }
        int[] iArr3 = this.zzb;
        int i2 = this.zzc;
        this.zzc = i2 + 1;
        iArr3[i2] = intValue;
        return true;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdi, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        zzc();
        zzeq.zza(collection);
        if (!(collection instanceof zzer)) {
            return super.addAll(collection);
        }
        zzer zzerVar = (zzer) collection;
        int i = zzerVar.zzc;
        if (i == 0) {
            return false;
        }
        int i2 = this.zzc;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.zzb;
        if (i3 > iArr.length) {
            this.zzb = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(zzerVar.zzb, 0, this.zzb, this.zzc, zzerVar.zzc);
        this.zzc = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdi, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzer)) {
            return super.equals(obj);
        }
        zzer zzerVar = (zzer) obj;
        if (this.zzc != zzerVar.zzc) {
            return false;
        }
        int[] iArr = zzerVar.zzb;
        for (int i = 0; i < this.zzc; i++) {
            if (this.zzb[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(zza(i));
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdi, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.zzc; i2++) {
            i = (i * 31) + this.zzb[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.zzb[i] == intValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdi, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzc();
        zzc(i);
        int[] iArr = this.zzb;
        int i2 = iArr[i];
        int i3 = this.zzc;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i3 - i) - 1);
        }
        this.zzc--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdi, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzc();
        for (int i = 0; i < this.zzc; i++) {
            if (obj.equals(Integer.valueOf(this.zzb[i]))) {
                int[] iArr = this.zzb;
                System.arraycopy(iArr, i + 1, iArr, i, (this.zzc - i) - 1);
                this.zzc--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        zzc();
        if (i2 >= i) {
            int[] iArr = this.zzb;
            System.arraycopy(iArr, i2, iArr, i, this.zzc - i2);
            this.zzc -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdi, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        zzc();
        zzc(i);
        int[] iArr = this.zzb;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    public final int zza(int i) {
        zzc(i);
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzew
    public final /* synthetic */ zzew<Integer> zzb(int i) {
        if (i >= this.zzc) {
            return new zzer(Arrays.copyOf(this.zzb, i), this.zzc);
        }
        throw new IllegalArgumentException();
    }
}
