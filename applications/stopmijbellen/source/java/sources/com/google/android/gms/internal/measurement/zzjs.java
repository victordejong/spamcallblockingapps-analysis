package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjs.class */
final class zzjs {
    private static final zzjq<?> zza = new zzjr();
    private static final zzjq<?> zzb;

    static {
        zzjq<?> zzjqVar;
        try {
            zzjqVar = (zzjq) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            zzjqVar = null;
        }
        zzb = zzjqVar;
    }

    public static zzjq<?> zza() {
        return zza;
    }

    public static zzjq<?> zzb() {
        zzjq<?> zzjqVar = zzb;
        if (zzjqVar != null) {
            return zzjqVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
