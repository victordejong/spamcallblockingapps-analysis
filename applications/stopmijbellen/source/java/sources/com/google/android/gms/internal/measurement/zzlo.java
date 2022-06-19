package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzlo.class */
final class zzlo {
    private static final zzln zza;
    private static final zzln zzb;

    static {
        zzln zzlnVar;
        try {
            zzlnVar = (zzln) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            zzlnVar = null;
        }
        zza = zzlnVar;
        zzb = new zzln();
    }

    public static zzln zza() {
        return zza;
    }

    public static zzln zzb() {
        return zzb;
    }
}
