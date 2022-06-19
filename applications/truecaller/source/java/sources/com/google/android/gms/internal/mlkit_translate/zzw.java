package com.google.android.gms.internal.mlkit_translate;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzw.class */
public abstract class zzw<E> extends zzl<E> implements Set<E> {
    private transient zzq<E> zza;

    public static int zza(int i) {
        int max = Math.max(i, 2);
        boolean z = true;
        if (max >= 751619276) {
            if (max >= 1073741824) {
                z = false;
            }
            zzi.zza(z, "collection too large");
            return 1073741824;
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

    public static <E> zzw<E> zza(E e) {
        return new zzai(e);
    }

    public static <E> zzw<E> zzb(int i, Object... objArr) {
        int i2;
        int i3;
        while (true) {
            int i4 = i;
            if (i4 != 0) {
                if (i4 == 1) {
                    return zza(objArr[0]);
                }
                int zza = zza(i4);
                Object[] objArr2 = new Object[zza];
                int i5 = zza - 1;
                int i6 = 0;
                int i7 = 0;
                int i8 = 0;
                while (true) {
                    i = i8;
                    if (i6 >= i4) {
                        break;
                    }
                    Object zza2 = zzx.zza(objArr[i6], i6);
                    int hashCode = zza2.hashCode();
                    int zza3 = zzm.zza(hashCode);
                    while (true) {
                        int i9 = zza3 & i5;
                        Object obj = objArr2[i9];
                        if (obj == null) {
                            objArr[i] = zza2;
                            objArr2[i9] = zza2;
                            i2 = i7 + hashCode;
                            i3 = i + 1;
                            break;
                        }
                        i2 = i7;
                        i3 = i;
                        if (!obj.equals(zza2)) {
                            zza3++;
                        }
                    }
                    i6++;
                    i7 = i2;
                    i8 = i3;
                }
                Arrays.fill(objArr, i, i4, (Object) null);
                if (i == 1) {
                    return new zzai(objArr[0], i7);
                }
                if (zza(i) >= zza / 2) {
                    int length = objArr.length;
                    Object[] objArr3 = objArr;
                    if (i < (length >> 1) + (length >> 2)) {
                        objArr3 = Arrays.copyOf(objArr, i);
                    }
                    return new zzag(objArr3, i7, objArr2, i5, i);
                }
            } else {
                return zzag.zza;
            }
        }
    }

    public static <E> zzw<E> zzf() {
        return zzag.zza;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzw) && zzg() && ((zzw) obj).zzg() && hashCode() != obj.hashCode()) {
            return false;
        }
        return zzaf.zza(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return zzaf.zza(this);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzl, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzl
    public zzq<E> zze() {
        zzq<E> zzqVar = this.zza;
        zzq<E> zzqVar2 = zzqVar;
        if (zzqVar == null) {
            zzqVar2 = zzh();
            this.zza = zzqVar2;
        }
        return zzqVar2;
    }

    public boolean zzg() {
        return false;
    }

    public zzq<E> zzh() {
        return zzq.zzb(toArray());
    }
}
