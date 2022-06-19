package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeqw.class */
public final class zzeqw implements zzevn<zzeqx> {
    private final zzfxb zza;
    private final zzfef zzb;
    private final zzcjf zzc;
    private final zzcio zzd;

    public zzeqw(zzfxb zzfxbVar, zzfef zzfefVar, zzcjf zzcjfVar, zzcio zzcioVar) {
        this.zza = zzfxbVar;
        this.zzb = zzfefVar;
        this.zzc = zzcjfVar;
        this.zzd = zzcioVar;
    }

    public final /* synthetic */ zzeqx zza() throws Exception {
        return new zzeqx(this.zzb.zzj, this.zzc, this.zzd.zzj());
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzeqx> zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeqv
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeqw.this.zza();
            }
        });
    }
}
