package com.google.android.gms.internal.mlkit_common;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzfi.class */
public final class zzfi {
    private static final zzfg<?> zza = new zzfj();
    private static final zzfg<?> zzb = zzc();

    public static zzfg<?> zza() {
        return zza;
    }

    public static zzfg<?> zzb() {
        zzfg<?> zzfgVar = zzb;
        if (zzfgVar != null) {
            return zzfgVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    private static zzfg<?> zzc() {
        try {
            return (zzfg) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
