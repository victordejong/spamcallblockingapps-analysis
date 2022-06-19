package com.google.android.gms.internal.measurement;

import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzfn.class */
public abstract class zzfn<T> implements Serializable {
    public static <T> zzfn<T> zzc() {
        return zzfl.f34848d;
    }

    public static <T> zzfn<T> zzd(T t) {
        return new zzfo(t);
    }

    public abstract boolean zza();

    public abstract T zzb();
}
