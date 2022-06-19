package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfsu.class */
public class zzfsu<K, V> extends zzfta<K, V> implements zzfth<K, V> {
    public zzfsu(zzfsw<K, zzfss<V>> zzfswVar, int i) {
        super(zzfswVar, i);
    }

    public final zzfss<V> zza(K k) {
        zzfss<V> zzfssVar = (zzfss) ((zzfta) this).zzb.get(k);
        zzfss<V> zzfssVar2 = zzfssVar;
        if (zzfssVar == null) {
            zzfssVar2 = zzfss.zzo();
        }
        return zzfssVar2;
    }
}
