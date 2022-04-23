package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdo.class */
final class zzdo {
    private static final zzdm zzju = zzbr();
    private static final zzdm zzjv = new zzdn();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzdm zzbp() {
        return zzju;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzdm zzbq() {
        return zzjv;
    }

    private static zzdm zzbr() {
        try {
            return (zzdm) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
