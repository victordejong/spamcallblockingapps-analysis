package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzcc.class */
final class zzcc {
    private static final zzca<?> zzep = new zzcb();
    private static final zzca<?> zzeq = zzaj();

    private static zzca<?> zzaj() {
        try {
            return (zzca) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzca<?> zzak() {
        return zzep;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzca<?> zzal() {
        if (zzeq != null) {
            return zzeq;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
