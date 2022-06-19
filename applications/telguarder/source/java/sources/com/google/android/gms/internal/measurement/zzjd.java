package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzjd.class */
final class zzjd {
    private static final zzjc zza;
    private static final zzjc zzb;

    static {
        zzjc zzjcVar;
        try {
            zzjcVar = (zzjc) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            zzjcVar = null;
        }
        zza = zzjcVar;
        zzb = new zzjc();
    }

    public static zzjc zza() {
        return zza;
    }

    public static zzjc zzb() {
        return zzb;
    }
}
