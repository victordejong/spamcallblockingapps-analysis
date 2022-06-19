package com.google.android.gms.internal.ads;

import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxg.class */
public abstract class zzdxg<E> extends zzdwy<E> implements Set<E> {
    @NullableDecl
    private transient zzdxd<E> zzhxt;

    public static <E> zzdxg<E> zza(int i, Object... objArr) {
        int i2;
        int i3;
        while (true) {
            int i4 = i;
            if (i4 != 0) {
                if (i4 == 1) {
                    return zzad(objArr[0]);
                }
                int zzer = zzer(i4);
                Object[] objArr2 = new Object[zzer];
                int i5 = zzer - 1;
                int i6 = 0;
                int i7 = 0;
                int i8 = 0;
                while (true) {
                    i = i8;
                    if (i6 >= i4) {
                        break;
                    }
                    Object zzd = zzdxo.zzd(objArr[i6], i6);
                    int hashCode = zzd.hashCode();
                    int zzep = zzdwz.zzep(hashCode);
                    while (true) {
                        int i9 = zzep & i5;
                        Object obj = objArr2[i9];
                        if (obj == null) {
                            objArr[i] = zzd;
                            objArr2[i9] = zzd;
                            i2 = i7 + hashCode;
                            i3 = i + 1;
                            break;
                        }
                        i2 = i7;
                        i3 = i;
                        if (!obj.equals(zzd)) {
                            zzep++;
                        }
                    }
                    i6++;
                    i7 = i2;
                    i8 = i3;
                }
                Arrays.fill(objArr, i, i4, (Object) null);
                if (i == 1) {
                    return new zzdxz(objArr[0], i7);
                }
                if (zzer(i) >= zzer / 2) {
                    Object[] objArr3 = objArr;
                    if (zzw(i, objArr.length)) {
                        objArr3 = Arrays.copyOf(objArr, i);
                    }
                    return new zzdxx(objArr3, i7, objArr2, i5, i);
                }
            } else {
                return zzdxx.zzhyn;
            }
        }
    }

    @SafeVarargs
    public static <E> zzdxg<E> zza(E e, E e2, E e3, E e4, E e5, E e6, E... eArr) {
        zzdwl.checkArgument(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = eArr.length + 6;
        Object[] objArr = new Object[length];
        objArr[0] = e;
        objArr[1] = e2;
        objArr[2] = e3;
        objArr[3] = e4;
        objArr[4] = e5;
        objArr[5] = e6;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return zza(length, objArr);
    }

    public static <E> zzdxg<E> zzad(E e) {
        return new zzdxz(e);
    }

    public static int zzer(int i) {
        int max = Math.max(i, 2);
        boolean z = true;
        if (max >= 751619276) {
            if (max >= 1073741824) {
                z = false;
            }
            zzdwl.checkArgument(z, "collection too large");
            return BasicMeasure.EXACTLY;
        }
        int highestOneBit = Integer.highestOneBit(max - 1);
        while (true) {
            int i2 = highestOneBit << 1;
            if (i2 * 0.7d >= max) {
                return i2;
            }
            highestOneBit = i2;
        }
    }

    public static <E> zzdxj<E> zzes(int i) {
        zzdwx.zzh(i, "expectedSize");
        return new zzdxj<>(i);
    }

    public static boolean zzw(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzdxg) && zzazn() && ((zzdxg) obj).zzazn() && hashCode() != obj.hashCode()) {
            return false;
        }
        return zzdxw.zza(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return zzdxw.zzg(this);
    }

    @Override // com.google.android.gms.internal.ads.zzdwy, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public zzdxd<E> zzazk() {
        zzdxd<E> zzdxdVar = this.zzhxt;
        zzdxd<E> zzdxdVar2 = zzdxdVar;
        if (zzdxdVar == null) {
            zzdxdVar2 = zzazo();
            this.zzhxt = zzdxdVar2;
        }
        return zzdxdVar2;
    }

    boolean zzazn() {
        return false;
    }

    zzdxd<E> zzazo() {
        return zzdxd.zzc(toArray());
    }
}
