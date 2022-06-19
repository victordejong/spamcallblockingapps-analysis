package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzit.class */
final class zzit {
    private static final zzis zza;
    private static final zzis zzb;

    static {
        zzis zzisVar;
        try {
            zzisVar = (zzis) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            zzisVar = null;
        }
        zza = zzisVar;
        zzb = new zzis();
    }

    public static zzis zza() {
        return zza;
    }

    public static zzis zzb() {
        return zzb;
    }
}
