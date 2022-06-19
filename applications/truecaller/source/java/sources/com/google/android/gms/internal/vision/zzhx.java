package com.google.android.gms.internal.vision;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzhx.class */
public final class zzhx {
    private static final zzhv zzyq = zzhh();
    private static final zzhv zzyr = new zzhy();

    public static zzhv zzhf() {
        return zzyq;
    }

    public static zzhv zzhg() {
        return zzyr;
    }

    private static zzhv zzhh() {
        try {
            return (zzhv) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
