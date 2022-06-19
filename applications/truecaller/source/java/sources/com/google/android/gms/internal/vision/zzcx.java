package com.google.android.gms.internal.vision;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzcx.class */
public final class zzcx {
    public static <T> zzcu<T> zza(zzcu<T> zzcuVar) {
        return ((zzcuVar instanceof zzcz) || (zzcuVar instanceof zzcw)) ? zzcuVar : zzcuVar instanceof Serializable ? new zzcw(zzcuVar) : new zzcz(zzcuVar);
    }

    public static <T> zzcu<T> zzd(T t) {
        return new zzcy(t);
    }
}
