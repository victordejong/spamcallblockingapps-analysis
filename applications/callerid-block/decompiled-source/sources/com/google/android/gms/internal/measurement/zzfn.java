package com.google.android.gms.internal.measurement;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfn.class */
public abstract class zzfn<T> implements Serializable {
    zzfn() {
    }

    public static <T> zzfn<T> zzc() {
        return zzfl.b;
    }

    public static <T> zzfn<T> zzd(T t) {
        return new zzfo(t);
    }

    public abstract boolean zza();

    public abstract T zzb();
}
