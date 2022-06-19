package com.google.android.gms.internal.firebase_perf;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzea.class */
final class zzea {
    private static final zzdy<?> zzng = new zzdx();
    private static final zzdy<?> zznh = zzga();

    private static zzdy<?> zzga() {
        try {
            return (zzdy) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    public static zzdy<?> zzgb() {
        return zzng;
    }

    public static zzdy<?> zzgc() {
        zzdy<?> zzdyVar = zznh;
        if (zzdyVar != null) {
            return zzdyVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
