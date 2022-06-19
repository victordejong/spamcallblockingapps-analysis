package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzemy.class */
final class zzemy {
    private static final zzemw zziti = zzbkd();
    private static final zzemw zzitj = new zzemv();

    public static zzemw zzbkb() {
        return zziti;
    }

    public static zzemw zzbkc() {
        return zzitj;
    }

    private static zzemw zzbkd() {
        try {
            return (zzemw) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
