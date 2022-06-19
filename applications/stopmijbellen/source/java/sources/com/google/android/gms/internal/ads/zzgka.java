package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgka.class */
final class zzgka {
    private static final zzgjy<?> zza = new zzgjz();
    private static final zzgjy<?> zzb;

    static {
        zzgjy<?> zzgjyVar;
        try {
            zzgjyVar = (zzgjy) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            zzgjyVar = null;
        }
        zzb = zzgjyVar;
    }

    public static zzgjy<?> zza() {
        zzgjy<?> zzgjyVar = zzb;
        if (zzgjyVar != null) {
            return zzgjyVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    public static zzgjy<?> zzb() {
        return zza;
    }
}
