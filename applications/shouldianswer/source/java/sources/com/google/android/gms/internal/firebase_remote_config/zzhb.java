package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzhb.class */
final class zzhb {
    private static final zzgz<?> zzqj = new zzgy();
    private static final zzgz<?> zzqk = zzgk();

    private static zzgz<?> zzgk() {
        try {
            return (zzgz) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    public static zzgz<?> zzgl() {
        return zzqj;
    }

    public static zzgz<?> zzgm() {
        zzgz<?> zzgzVar = zzqk;
        if (zzgzVar != null) {
            return zzgzVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
