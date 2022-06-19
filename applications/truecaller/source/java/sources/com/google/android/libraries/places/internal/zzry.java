package com.google.android.libraries.places.internal;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzry.class */
public final class zzry {
    private static final zzrw<?> zza = new zzrv();
    private static final zzrw<?> zzb = zzc();

    public static zzrw<?> zza() {
        return zza;
    }

    public static zzrw<?> zzb() {
        zzrw<?> zzrwVar = zzb;
        if (zzrwVar != null) {
            return zzrwVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    private static zzrw<?> zzc() {
        try {
            return (zzrw) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
