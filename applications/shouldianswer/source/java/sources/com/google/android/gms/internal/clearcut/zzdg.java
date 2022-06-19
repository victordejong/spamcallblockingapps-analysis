package com.google.android.gms.internal.clearcut;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzdg.class */
public final class zzdg<K, V> {
    public static <K, V> int zza(zzdh<K, V> zzdhVar, K k, V v) {
        return zzby.zza(zzdhVar.zzmb, 1, k) + zzby.zza(zzdhVar.zzmd, 2, v);
    }

    public static <K, V> void zza(zzbn zzbnVar, zzdh<K, V> zzdhVar, K k, V v) {
        zzby.zza(zzbnVar, zzdhVar.zzmb, 1, k);
        zzby.zza(zzbnVar, zzdhVar.zzmd, 2, v);
    }
}
