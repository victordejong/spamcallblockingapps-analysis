package com.google.android.gms.internal.mlkit_language_id;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzfu.class */
public final class zzfu {
    private static final zzfs zza = zzc();
    private static final zzfs zzb = new zzfv();

    public static zzfs zza() {
        return zza;
    }

    public static zzfs zzb() {
        return zzb;
    }

    private static zzfs zzc() {
        try {
            return (zzfs) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
