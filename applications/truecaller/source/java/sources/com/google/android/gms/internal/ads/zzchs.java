package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicInteger;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzchs.class */
public class zzchs<T> {
    private final zzchl<T> zza;
    private final AtomicInteger zzb = new AtomicInteger(0);

    public zzchs() {
        zzchl<T> zzchlVar = new zzchl<>();
        this.zza = zzchlVar;
        zzfsd.zzp(zzchlVar, new zzchq(this), zzchg.zzf);
    }

    @Deprecated
    public final void zzf(zzchp<T> zzchpVar, zzchn zzchnVar) {
        zzfsd.zzp(this.zza, new zzchr(this, zzchpVar, zzchnVar), zzchg.zzf);
    }

    @Deprecated
    public final void zzg(T t) {
        this.zza.zzc(t);
    }

    @Deprecated
    public final void zzh() {
        this.zza.zzd(new Exception());
    }

    @Deprecated
    public final int zzi() {
        return this.zzb.get();
    }
}
