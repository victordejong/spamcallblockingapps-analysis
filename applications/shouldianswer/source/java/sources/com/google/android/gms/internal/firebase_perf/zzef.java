package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzeh;
import com.google.android.gms.internal.firebase-perf.zzfo;
import com.google.android.gms.internal.firebase_perf.zzeh;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzef.class */
final class zzef implements zzfo {
    private static final com.google.android.gms.internal.firebase-perf.zzef zzps = new zzef();

    private zzef() {
    }

    public static com.google.android.gms.internal.firebase-perf.zzef zzgh() {
        return zzps;
    }

    public final boolean zza(Class<?> cls) {
        return zzeh.class.isAssignableFrom(cls);
    }

    public final zzfp zzb(Class<?> cls) {
        if (!zzeh.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (zzfp) zzeh.zzc(cls.asSubclass(zzeh.class)).zza(zzeh.zzd.zzqi, null, null);
        } catch (Exception e) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e);
        }
    }
}
