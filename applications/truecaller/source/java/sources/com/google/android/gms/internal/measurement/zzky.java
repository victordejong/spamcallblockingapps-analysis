package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzky.class */
public final class zzky {
    private static final zzkx zza;
    private static final zzkx zzb;

    static {
        zzkx zzkxVar;
        try {
            zzkxVar = (zzkx) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            zzkxVar = null;
        }
        zza = zzkxVar;
        zzb = new zzkx();
    }

    public static zzkx zza() {
        return zza;
    }

    public static zzkx zzb() {
        return zzb;
    }
}
