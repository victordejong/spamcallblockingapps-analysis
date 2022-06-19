package com.google.android.gms.internal.mlkit_language_id;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzeg.class */
public final class zzeg {
    private static final zzee<?> zza = new zzeh();
    private static final zzee<?> zzb = zzc();

    public static zzee<?> zza() {
        return zza;
    }

    public static zzee<?> zzb() {
        zzee<?> zzeeVar = zzb;
        if (zzeeVar != null) {
            return zzeeVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    private static zzee<?> zzc() {
        try {
            return (zzee) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
