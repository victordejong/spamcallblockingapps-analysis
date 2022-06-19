package com.google.android.gms.internal.mlkit_language_id;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzgg.class */
public final class zzgg {
    private static final zzge zza = zzc();
    private static final zzge zzb = new zzgh();

    public static zzge zza() {
        return zza;
    }

    public static zzge zzb() {
        return zzb;
    }

    private static zzge zzc() {
        try {
            return (zzge) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
