package com.google.android.gms.internal.mlkit_translate;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzly.class */
public final class zzly<E> extends zzix<E> implements RandomAccess {
    private static final zzly<Object> zza;
    private E[] zzb;
    private int zzc;

    static {
        zzly<Object> zzlyVar = new zzly<>(new Object[0], 0);
        zza = zzlyVar;
        zzlyVar.zzb();
    }

    public zzly() {
        this(new Object[10], 0);
    }

    private zzly(E[] eArr, int i) {
        this.zzb = eArr;
        this.zzc = i;
    }

    private final void zza(int i) {
        if (i < 0 || i >= this.zzc) {
            throw new IndexOutOfBoundsException(zzb(i));
        }
    }

    private final String zzb(int i) {
        return C22128a.m8683N1(35, "Index:", i, ", Size:", this.zzc);
    }

    public static <E> zzly<E> zzd() {
        return (zzly<E>) zza;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzix, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2;
        zzc();
        if (i < 0 || i > (i2 = this.zzc)) {
            throw new IndexOutOfBoundsException(zzb(i));
        }
        E[] eArr = this.zzb;
        if (i2 < eArr.length) {
            System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
        } else {
            E[] eArr2 = (E[]) new Object[C22128a.m8698J1(i2, 3, 2, 1)];
            System.arraycopy(eArr, 0, eArr2, 0, i);
            System.arraycopy(this.zzb, i, eArr2, i + 1, this.zzc - i);
            this.zzb = eArr2;
        }
        this.zzb[i] = e;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzix, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        zzc();
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
        zza(i);
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzix, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        zzc();
        zza(i);
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

    @Override // com.google.android.gms.internal.mlkit_translate.zzix, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        zzc();
        zza(i);
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

    @Override // com.google.android.gms.internal.mlkit_translate.zzkl
    public final /* synthetic */ zzkl zzd(int i) {
        if (i >= this.zzc) {
            return new zzly(Arrays.copyOf(this.zzb, i), this.zzc);
        }
        throw new IllegalArgumentException();
    }
}
