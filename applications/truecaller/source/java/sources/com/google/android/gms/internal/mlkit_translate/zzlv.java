package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzlv.class */
public final class zzlv {
    private static final zzlt zza = zzc();
    private static final zzlt zzb = new zzls();

    public static zzlt zza() {
        return zza;
    }

    public static zzlt zzb() {
        return zzb;
    }

    private static zzlt zzc() {
        try {
            return (zzlt) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
