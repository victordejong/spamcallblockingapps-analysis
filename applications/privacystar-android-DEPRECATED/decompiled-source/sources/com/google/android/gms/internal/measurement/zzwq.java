package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzwq.class */
final class zzwq {
    private static final zzwo zzcav = zzxf();
    private static final zzwo zzcaw = new zzwp();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzwo zzxd() {
        return zzcav;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzwo zzxe() {
        return zzcaw;
    }

    private static zzwo zzxf() {
        try {
            return (zzwo) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
