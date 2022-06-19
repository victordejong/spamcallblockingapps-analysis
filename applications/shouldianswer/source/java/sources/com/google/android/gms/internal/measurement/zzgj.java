package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgj.class */
final class zzgj {
    private static final zzgh zza = zzc();
    private static final zzgh zzb = new zzgk();

    public static zzgh zza() {
        return zza;
    }

    public static zzgh zzb() {
        return zzb;
    }

    private static zzgh zzc() {
        try {
            return (zzgh) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
