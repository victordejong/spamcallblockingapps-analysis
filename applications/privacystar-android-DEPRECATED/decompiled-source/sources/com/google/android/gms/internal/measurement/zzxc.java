package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzxc.class */
final class zzxc {
    private static final zzxa zzcbq = zzxm();
    private static final zzxa zzcbr = new zzxb();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzxa zzxk() {
        return zzcbq;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzxa zzxl() {
        return zzcbr;
    }

    private static zzxa zzxm() {
        try {
            return (zzxa) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
