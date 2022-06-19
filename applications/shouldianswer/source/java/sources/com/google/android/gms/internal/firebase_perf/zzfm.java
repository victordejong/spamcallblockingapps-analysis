package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzfk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzfm.class */
final class zzfm {
    private static final zzfk zzsk = zzhj();
    private static final zzfk zzsl = new zzfn();

    public static zzfk zzhh() {
        return zzsk;
    }

    public static zzfk zzhi() {
        return zzsl;
    }

    private static zzfk zzhj() {
        try {
            return (zzfk) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
