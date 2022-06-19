package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzjm.class */
public final class zzjm {
    private static final zzjk zza = new zzjl();
    private static final zzjk zzb;

    static {
        zzjk zzjkVar;
        try {
            zzjkVar = (zzjk) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            zzjkVar = null;
        }
        zzb = zzjkVar;
    }

    public static zzjk zza() {
        zzjk zzjkVar = zzb;
        if (zzjkVar != null) {
            return zzjkVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    public static zzjk zzb() {
        return zza;
    }
}
