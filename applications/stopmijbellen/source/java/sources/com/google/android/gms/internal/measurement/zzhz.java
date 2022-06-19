package com.google.android.gms.internal.measurement;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhz.class */
public abstract class zzhz<T> implements Serializable {
    public static <T> zzhz<T> zzc() {
        return zzhx.zza;
    }

    public static <T> zzhz<T> zzd(T t) {
        return new zzia(t);
    }

    public abstract boolean zza();

    public abstract T zzb();
}
