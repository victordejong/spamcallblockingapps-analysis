package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdc.class */
public final class zzdc {
    public static <T> zzcz<T> zza(zzcz<T> zzczVar) {
        return ((zzczVar instanceof zzde) || (zzczVar instanceof zzdb)) ? zzczVar : zzczVar instanceof Serializable ? new zzdb(zzczVar) : new zzde(zzczVar);
    }

    public static <T> zzcz<T> zza(@NullableDecl T t) {
        return new zzdd(t);
    }
}
