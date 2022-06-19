package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgfp.class */
public final class zzgfp {
    private static final zzgfn<?> zza = new zzgfo();
    private static final zzgfn<?> zzb;

    static {
        zzgfn<?> zzgfnVar;
        try {
            zzgfnVar = (zzgfn) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            zzgfnVar = null;
        }
        zzb = zzgfnVar;
    }

    public static zzgfn<?> zza() {
        return zza;
    }

    public static zzgfn<?> zzb() {
        zzgfn<?> zzgfnVar = zzb;
        if (zzgfnVar != null) {
            return zzgfnVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
