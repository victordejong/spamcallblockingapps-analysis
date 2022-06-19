package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgg.class */
public final class zzgg<K, V> {
    public static <K, V> int zza(zzgf<K, V> zzgfVar, K k, V v) {
        return zzew.zza(zzgfVar.zza, 1, k) + zzew.zza(zzgfVar.zzc, 2, v);
    }

    public static <K, V> void zza(zzen zzenVar, zzgf<K, V> zzgfVar, K k, V v) {
        zzew.zza(zzenVar, zzgfVar.zza, 1, k);
        zzew.zza(zzenVar, zzgfVar.zzc, 2, v);
    }
}
