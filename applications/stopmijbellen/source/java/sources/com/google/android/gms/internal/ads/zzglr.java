package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzglr.class */
final class zzglr {
    private static final zzglq zza;
    private static final zzglq zzb;

    static {
        zzglq zzglqVar;
        try {
            zzglqVar = (zzglq) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            zzglqVar = null;
        }
        zza = zzglqVar;
        zzb = new zzglq();
    }

    public static zzglq zza() {
        return zza;
    }

    public static zzglq zzb() {
        return zzb;
    }
}
