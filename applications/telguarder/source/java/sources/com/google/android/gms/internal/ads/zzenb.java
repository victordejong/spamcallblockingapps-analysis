package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzenb.class */
final class zzenb<E> extends zzejl<E> implements RandomAccess {
    private static final zzenb<Object> zzitn;
    private int size;
    private E[] zzhyj;

    static {
        zzenb<Object> zzenbVar = new zzenb<>(new Object[0], 0);
        zzitn = zzenbVar;
        zzenbVar.zzbgf();
    }

    zzenb() {
        this(new Object[10], 0);
    }

    private zzenb(E[] eArr, int i) {
        this.zzhyj = eArr;
        this.size = i;
    }

    public static <E> zzenb<E> zzbke() {
        return (zzenb<E>) zzitn;
    }

    private final void zzfw(int i) {
        if (i < 0 || i >= this.size) {
            throw new IndexOutOfBoundsException(zzfx(i));
        }
    }

    private final String zzfx(int i) {
        int i2 = this.size;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2;
        zzbgg();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzfx(i));
        }
        E[] eArr = this.zzhyj;
        if (i2 < eArr.length) {
            System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
        } else {
            E[] eArr2 = (E[]) new Object[((i2 * 3) / 2) + 1];
            System.arraycopy(eArr, 0, eArr2, 0, i);
            System.arraycopy(this.zzhyj, i, eArr2, i + 1, this.size - i);
            this.zzhyj = eArr2;
        }
        this.zzhyj[i] = e;
        this.size++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        zzbgg();
        int i = this.size;
        E[] eArr = this.zzhyj;
        if (i == eArr.length) {
            this.zzhyj = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.zzhyj;
        int i2 = this.size;
        this.size = i2 + 1;
        eArr2[i2] = e;
        this.modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        zzfw(i);
        return this.zzhyj[i];
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        zzbgg();
        zzfw(i);
        E[] eArr = this.zzhyj;
        E e = eArr[i];
        int i2 = this.size;
        if (i < i2 - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.size--;
        this.modCount++;
        return e;
    }

    @Override // com.google.android.gms.internal.ads.zzejl, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        zzbgg();
        zzfw(i);
        E[] eArr = this.zzhyj;
        E e2 = eArr[i];
        eArr[i] = e;
        this.modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzell
    public final /* synthetic */ zzell zzfy(int i) {
        if (i >= this.size) {
            return new zzenb(Arrays.copyOf(this.zzhyj, i), this.size);
        }
        throw new IllegalArgumentException();
    }
}
