package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzle.class */
final class zzle {
    private static final zzld zza;
    private static final zzld zzb;

    static {
        zzld zzldVar;
        try {
            zzldVar = (zzld) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            zzldVar = null;
        }
        zza = zzldVar;
        zzb = new zzld();
    }

    public static zzld zza() {
        return zza;
    }

    public static zzld zzb() {
        return zzb;
    }
}
