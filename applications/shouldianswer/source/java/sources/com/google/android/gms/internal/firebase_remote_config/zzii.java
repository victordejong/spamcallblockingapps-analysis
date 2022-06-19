package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzii.class */
public final class zzii<K, V> {
    public static <K, V> int zza(zzih<K, V> zzihVar, K k, V v) {
        return zzha.zza(zzihVar.zzvi, 1, k) + zzha.zza(zzihVar.zzvk, 2, v);
    }

    public static <K, V> void zza(zzgs zzgsVar, zzih<K, V> zzihVar, K k, V v) {
        zzha.zza(zzgsVar, zzihVar.zzvi, 1, k);
        zzha.zza(zzgsVar, zzihVar.zzvk, 2, v);
    }
}
