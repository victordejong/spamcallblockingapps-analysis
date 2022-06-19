package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgme.class */
public final class zzgme<E> extends zzgio<E> implements RandomAccess {
    private static final zzgme<Object> zza;
    private E[] zzb;
    private int zzc;

    static {
        zzgme<Object> zzgmeVar = new zzgme<>(new Object[0], 0);
        zza = zzgmeVar;
        zzgmeVar.zzb();
    }

    public zzgme() {
        this(new Object[10], 0);
    }

    private zzgme(E[] eArr, int i) {
        this.zzb = eArr;
        this.zzc = i;
    }

    public static <E> zzgme<E> zze() {
        return (zzgme<E>) zza;
    }

    private final String zzf(int i) {
        return C0082b.m8757e(35, "Index:", i, ", Size:", this.zzc);
    }

    private final void zzg(int i) {
        if (i < 0 || i >= this.zzc) {
            throw new IndexOutOfBoundsException(zzf(i));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgio, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2;
        zzbU();
        if (i < 0 || i > (i2 = this.zzc)) {
            throw new IndexOutOfBoundsException(zzf(i));
        }
        E[] eArr = this.zzb;
        if (i2 < eArr.length) {
            System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
        } else {
            E[] eArr2 = (E[]) new Object[C0082b.m8760b(i2, 3, 2, 1)];
            System.arraycopy(eArr, 0, eArr2, 0, i);
            System.arraycopy(this.zzb, i, eArr2, i + 1, this.zzc - i);
            this.zzb = eArr2;
        }
        this.zzb[i] = e;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzgio, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        zzbU();
        int i = this.zzc;
        E[] eArr = this.zzb;
        if (i == eArr.length) {
            this.zzb = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.zzb;
        int i2 = this.zzc;
        this.zzc = i2 + 1;
        eArr2[i2] = e;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        zzg(i);
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.ads.zzgio, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        zzbU();
        zzg(i);
        E[] eArr = this.zzb;
        E e = eArr[i];
        int i2 = this.zzc;
        if (i < i2 - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.zzc--;
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // com.google.android.gms.internal.ads.zzgio, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        zzbU();
        zzg(i);
        E[] eArr = this.zzb;
        E e2 = eArr[i];
        eArr[i] = e;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzgku
    public final /* bridge */ /* synthetic */ zzgku zzd(int i) {
        if (i >= this.zzc) {
            return new zzgme(Arrays.copyOf(this.zzb, i), this.zzc);
        }
        throw new IllegalArgumentException();
    }
}
