package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgy.class */
final class zzgy {
    private static final zzgw zza = zzc();
    private static final zzgw zzb = new zzgv();

    public static zzgw zza() {
        return zza;
    }

    public static zzgw zzb() {
        return zzb;
    }

    private static zzgw zzc() {
        try {
            return (zzgw) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
