package com.google.android.gms.internal.measurement;

import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzif.class */
public final class zzif {
    public static zzib zza(zzib zzibVar) {
        if ((zzibVar instanceof zzid) || (zzibVar instanceof zzic)) {
            return zzibVar;
        }
        return zzibVar instanceof Serializable ? new zzic(zzibVar) : new zzid(zzibVar);
    }

    public static zzib zzb(Object obj) {
        return new zzie(obj);
    }
}
