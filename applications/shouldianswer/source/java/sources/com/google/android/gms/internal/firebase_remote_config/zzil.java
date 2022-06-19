package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzil.class */
final class zzil {
    private static final zzij zzvn = zzia();
    private static final zzij zzvo = new zzim();

    public static zzij zzhy() {
        return zzvn;
    }

    public static zzij zzhz() {
        return zzvo;
    }

    private static zzij zzia() {
        try {
            return (zzij) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
