package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.common.api.Api;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgkm.class */
final class zzgkm extends zzgio<Integer> implements RandomAccess, zzgkq, zzgmc {
    private static final zzgkm zza;
    private int[] zzb;
    private int zzc;

    static {
        zzgkm zzgkmVar = new zzgkm(new int[0], 0);
        zza = zzgkmVar;
        zzgkmVar.zzb();
    }

    public zzgkm() {
        this(new int[10], 0);
    }

    private zzgkm(int[] iArr, int i) {
        this.zzb = iArr;
        this.zzc = i;
    }

    public static zzgkm zzf() {
        return zza;
    }

    private final String zzi(int i) {
        return C0082b.m8757e(35, "Index:", i, ", Size:", this.zzc);
    }

    private final void zzj(int i) {
        if (i < 0 || i >= this.zzc) {
            throw new IndexOutOfBoundsException(zzi(i));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgio, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        zzbU();
        if (i < 0 || i > (i2 = this.zzc)) {
            throw new IndexOutOfBoundsException(zzi(i));
        }
        int[] iArr = this.zzb;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[C0082b.m8760b(i2, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.zzb, i, iArr2, i + 1, this.zzc - i);
            this.zzb = iArr2;
        }
        this.zzb[i] = intValue;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzgio, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        zzh(((Integer) obj).intValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzgio, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        zzbU();
        zzgkv.zze(collection);
        if (!(collection instanceof zzgkm)) {
            return super.addAll(collection);
        }
        zzgkm zzgkmVar = (zzgkm) collection;
        int i = zzgkmVar.zzc;
        if (i == 0) {
            return false;
        }
        int i2 = this.zzc;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.zzb;
        if (i3 > iArr.length) {
            this.zzb = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(zzgkmVar.zzb, 0, this.zzb, this.zzc, zzgkmVar.zzc);
        this.zzc = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.ads.zzgio, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzgkm)) {
            return super.equals(obj);
        }
        zzgkm zzgkmVar = (zzgkm) obj;
        if (this.zzc != zzgkmVar.zzc) {
            return false;
        }
        int[] iArr = zzgkmVar.zzb;
        for (int i = 0; i < this.zzc; i++) {
            if (this.zzb[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        zzj(i);
        return Integer.valueOf(this.zzb[i]);
    }

    @Override // com.google.android.gms.internal.ads.zzgio, java.util.AbstractList, java.util.Collection, java.util.List
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
        int i = this.zzc;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.zzb[i2] == intValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzgio, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        zzbU();
        zzj(i);
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

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        zzbU();
        if (i2 >= i) {
            int[] iArr = this.zzb;
            System.arraycopy(iArr, i2, iArr, i, this.zzc - i2);
            this.zzc -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.zzgio, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        zzbU();
        zzj(i);
        int[] iArr = this.zzb;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    public final int zze(int i) {
        zzj(i);
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.ads.zzgkq
    /* renamed from: zzg */
    public final zzgkq zzd(int i) {
        if (i >= this.zzc) {
            return new zzgkm(Arrays.copyOf(this.zzb, i), this.zzc);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.ads.zzgkq
    public final void zzh(int i) {
        zzbU();
        int i2 = this.zzc;
        int[] iArr = this.zzb;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[C0082b.m8760b(i2, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.zzb = iArr2;
        }
        int[] iArr3 = this.zzb;
        int i3 = this.zzc;
        this.zzc = i3 + 1;
        iArr3[i3] = i;
    }
}
