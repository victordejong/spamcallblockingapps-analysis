package com.google.android.gms.internal.vision;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzim.class */
public final class zzim {
    private static final zzik zzzl = zzhn();
    private static final zzik zzzm = new zzij();

    public static zzik zzhl() {
        return zzzl;
    }

    public static zzik zzhm() {
        return zzzm;
    }

    private static zzik zzhn() {
        try {
            return (zzik) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
