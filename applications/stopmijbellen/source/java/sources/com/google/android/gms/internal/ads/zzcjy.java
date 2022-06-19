package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicInteger;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcjy.class */
public class zzcjy<T> {
    private final zzcjr<T> zza;
    private final AtomicInteger zzb = new AtomicInteger(0);

    public zzcjy() {
        zzcjr<T> zzcjrVar = new zzcjr<>();
        this.zza = zzcjrVar;
        zzfwq.zzr(zzcjrVar, new zzcjw(this), zzcjm.zzf);
    }

    @Deprecated
    public final int zze() {
        return this.zzb.get();
    }

    @Deprecated
    public final void zzg() {
        this.zza.zze(new Exception());
    }

    @Deprecated
    public final void zzh(T t) {
        this.zza.zzd(t);
    }

    @Deprecated
    public final void zzi(zzcjv<T> zzcjvVar, zzcjt zzcjtVar) {
        zzfwq.zzr(this.zza, new zzcjx(this, zzcjvVar, zzcjtVar), zzcjm.zzf);
    }
}
