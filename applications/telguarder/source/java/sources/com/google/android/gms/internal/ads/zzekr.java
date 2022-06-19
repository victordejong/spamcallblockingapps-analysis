package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzekr.class */
final class zzekr {
    private static final zzekq<?> zzinm = new zzeks();
    private static final zzekq<?> zzinn = zzbhy();

    private static zzekq<?> zzbhy() {
        try {
            return (zzekq) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    public static zzekq<?> zzbhz() {
        return zzinm;
    }

    public static zzekq<?> zzbia() {
        zzekq<?> zzekqVar = zzinn;
        if (zzekqVar != null) {
            return zzekqVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
