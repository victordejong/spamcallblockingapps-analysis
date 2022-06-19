package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzfs.class */
public final class zzfs {
    public static <T> zzfo<T> zza(zzfo<T> zzfoVar) {
        if ((zzfoVar instanceof zzfq) || (zzfoVar instanceof zzfp)) {
            return zzfoVar;
        }
        return zzfoVar instanceof Serializable ? new zzfp(zzfoVar) : new zzfq(zzfoVar);
    }

    public static <T> zzfo<T> zzb(@NullableDecl T t) {
        return new zzfr(t);
    }
}
