package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzhh.class */
final class zzhh {
    private static final zzhf<?> zza = new zzhg();
    private static final zzhf<?> zzb;

    static {
        zzhf<?> zzhfVar;
        try {
            zzhfVar = (zzhf) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            zzhfVar = null;
        }
        zzb = zzhfVar;
    }

    public static zzhf<?> zza() {
        return zza;
    }

    public static zzhf<?> zzb() {
        zzhf<?> zzhfVar = zzb;
        if (zzhfVar != null) {
            return zzhfVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
