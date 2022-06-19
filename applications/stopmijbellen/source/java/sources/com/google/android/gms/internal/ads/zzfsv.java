package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfsv.class */
public final class zzfsv<K, V> {
    public Object[] zza;
    public int zzb;

    public zzfsv() {
        this(4);
    }

    public zzfsv(int i) {
        this.zza = new Object[i + i];
        this.zzb = 0;
    }

    private final void zzd(int i) {
        int i2 = i + i;
        Object[] objArr = this.zza;
        int length = objArr.length;
        if (i2 > length) {
            this.zza = Arrays.copyOf(objArr, zzfsm.zzd(length, i2));
        }
    }

    public final zzfsv<K, V> zza(K k, V v) {
        zzd(this.zzb + 1);
        zzfrr.zzb(k, v);
        Object[] objArr = this.zza;
        int i = this.zzb;
        int i2 = i + i;
        objArr[i2] = k;
        objArr[i2 + 1] = v;
        this.zzb = i + 1;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzfsv<K, V> zzb(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        if (iterable instanceof Collection) {
            zzd(iterable.size() + this.zzb);
        }
        Iterator it2 = iterable.iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            zza(entry.getKey(), entry.getValue());
        }
        return this;
    }

    public final zzfsw<K, V> zzc() {
        return zzful.zzh(this.zzb, this.zza);
    }
}
