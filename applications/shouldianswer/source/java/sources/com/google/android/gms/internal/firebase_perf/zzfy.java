package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzfw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzfy.class */
final class zzfy {
    private static final zzfw zztf = zzhp();
    private static final zzfw zztg = new zzfz();

    public static zzfw zzhn() {
        return zztf;
    }

    public static zzfw zzho() {
        return zztg;
    }

    private static zzfw zzhp() {
        try {
            return (zzfw) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
