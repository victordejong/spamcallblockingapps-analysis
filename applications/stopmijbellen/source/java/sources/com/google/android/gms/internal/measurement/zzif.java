package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzif.class */
public final class zzif {
    public static <T> zzib<T> zza(zzib<T> zzibVar) {
        if ((zzibVar instanceof zzid) || (zzibVar instanceof zzic)) {
            return zzibVar;
        }
        return zzibVar instanceof Serializable ? new zzic(zzibVar) : new zzid(zzibVar);
    }

    public static <T> zzib<T> zzb(@NullableDecl T t) {
        return new zzie(t);
    }
}
