package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzjv.class */
public final class zzjv {
    private static final zzjt<?> zza = new zzjs();
    private static final zzjt<?> zzb = zzc();

    public static zzjt<?> zza() {
        return zza;
    }

    public static zzjt<?> zzb() {
        zzjt<?> zzjtVar = zzb;
        if (zzjtVar != null) {
            return zzjtVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    private static zzjt<?> zzc() {
        try {
            return (zzjt) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
