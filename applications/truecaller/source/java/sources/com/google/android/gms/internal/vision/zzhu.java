package com.google.android.gms.internal.vision;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzhu.class */
public final class zzhu<K, V> {
    public static <K, V> int zza(zzht<K, V> zzhtVar, K k, V v) {
        return zzgi.zza(zzhtVar.zzyo, 2, v) + zzgi.zza(zzhtVar.zzym, 1, k);
    }

    public static <K, V> void zza(zzga zzgaVar, zzht<K, V> zzhtVar, K k, V v) throws IOException {
        zzgi.zza(zzgaVar, zzhtVar.zzym, 1, k);
        zzgi.zza(zzgaVar, zzhtVar.zzyo, 2, v);
    }
}
