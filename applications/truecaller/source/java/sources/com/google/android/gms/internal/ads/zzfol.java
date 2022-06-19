package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfol.class */
public class zzfol<K, V> extends zzfor<K, V> implements zzfoy<K, V> {
    public zzfol(zzfon<K, zzfoj<V>> zzfonVar, int i) {
        super(zzfonVar, i);
    }

    public final zzfoj<V> zza(K k) {
        zzfoj<V> zzfojVar = (zzfoj) ((zzfor) this).zzb.get(k);
        zzfoj<V> zzfojVar2 = zzfojVar;
        if (zzfojVar == null) {
            zzfojVar2 = zzfoj.zzi();
        }
        return zzfojVar2;
    }
}
