package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzet.class */
final class zzet {
    private static final zzes<?> zza = new zzeu();
    private static final zzes<?> zzb = zzc();

    public static zzes<?> zza() {
        return zza;
    }

    public static zzes<?> zzb() {
        zzes<?> zzesVar = zzb;
        if (zzesVar != null) {
            return zzesVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    private static zzes<?> zzc() {
        try {
            return (zzes) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
