package com.google.android.gms.internal.vision;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzgj.class */
public final class zzgj {
    private static final zzgf<?> zztf = new zzgh();
    private static final zzgf<?> zztg = zzfp();

    private static zzgf<?> zzfp() {
        try {
            return (zzgf) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    public static zzgf<?> zzfq() {
        return zztf;
    }

    public static zzgf<?> zzfr() {
        zzgf<?> zzgfVar = zztg;
        if (zzgfVar != null) {
            return zzgfVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
