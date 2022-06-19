package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzghe.class */
public final class zzghe {
    private static final zzghd zza;
    private static final zzghd zzb;

    static {
        zzghd zzghdVar;
        try {
            zzghdVar = (zzghd) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            zzghdVar = null;
        }
        zza = zzghdVar;
        zzb = new zzghd();
    }

    public static zzghd zza() {
        return zza;
    }

    public static zzghd zzb() {
        return zzb;
    }
}
