package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxb.class */
class zzdxb<E> extends zzdxa<E> {
    int size = 0;
    Object[] zzhxo;
    boolean zzhxp;

    public zzdxb(int i) {
        zzdwx.zzh(i, "initialCapacity");
        this.zzhxo = new Object[i];
    }

    private final void zzeq(int i) {
        Object[] objArr = this.zzhxo;
        if (objArr.length >= i) {
            if (!this.zzhxp) {
                return;
            }
            this.zzhxo = (Object[]) objArr.clone();
            this.zzhxp = false;
            return;
        }
        int length = objArr.length;
        if (i < 0) {
            throw new AssertionError("cannot store more than MAX_VALUE elements");
        }
        int i2 = length + (length >> 1) + 1;
        int i3 = i2;
        if (i2 < i) {
            i3 = Integer.highestOneBit(i - 1) << 1;
        }
        int i4 = i3;
        if (i3 < 0) {
            i4 = Integer.MAX_VALUE;
        }
        this.zzhxo = Arrays.copyOf(objArr, i4);
        this.zzhxp = false;
    }

    /* renamed from: zzab */
    public zzdxb<E> zzaa(E e) {
        zzdwl.checkNotNull(e);
        zzeq(this.size + 1);
        Object[] objArr = this.zzhxo;
        int i = this.size;
        this.size = i + 1;
        objArr[i] = e;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdxa
    public zzdxa<E> zzg(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            zzeq(this.size + collection.size());
            if (collection instanceof zzdwy) {
                this.size = ((zzdwy) collection).zza(this.zzhxo, this.size);
                return this;
            }
        }
        super.zzg(iterable);
        return this;
    }
}
