package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzemg.class */
public final class zzemg<K, V> {
    public static <K, V> int zza(zzemf<K, V> zzemfVar, K k, V v) {
        return zzeku.zza(zzemfVar.zzisk, 1, k) + zzeku.zza(zzemfVar.zzism, 2, v);
    }

    public static <K, V> void zza(zzekl zzeklVar, zzemf<K, V> zzemfVar, K k, V v) throws IOException {
        zzeku.zza(zzeklVar, zzemfVar.zzisk, 1, k);
        zzeku.zza(zzeklVar, zzemfVar.zzism, 2, v);
    }
}
