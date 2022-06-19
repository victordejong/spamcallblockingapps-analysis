package com.google.android.gms.internal.measurement;

import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzfm.class */
public abstract class zzfm<T> implements Serializable {
    public static <T> zzfm<T> zzc() {
        return zzfk.zza;
    }

    public static <T> zzfm<T> zzd(T t) {
        return new zzfn(t);
    }

    public abstract boolean zza();

    public abstract T zzb();
}
