package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzemj.class */
final class zzemj {
    private static final zzemh zziso = zzbjx();
    private static final zzemh zzisp = new zzemk();

    public static zzemh zzbjv() {
        return zziso;
    }

    public static zzemh zzbjw() {
        return zzisp;
    }

    private static zzemh zzbjx() {
        try {
            return (zzemh) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
