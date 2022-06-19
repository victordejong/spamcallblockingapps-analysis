package com.google.android.gms.internal.vision;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzcn.class */
public abstract class zzcn<T> implements Serializable {
    public static <T> zzcn<T> zzb(T t) {
        return new zzcs(zzct.checkNotNull(t));
    }

    public static <T> zzcn<T> zzbx() {
        return zzck.zzlf;
    }

    public abstract T get();

    public abstract boolean isPresent();
}
