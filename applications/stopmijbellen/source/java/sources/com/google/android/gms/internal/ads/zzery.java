package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzery.class */
public final class zzery implements zzevn<zzerz> {
    private final zzfxb zza;
    private final zzdxb zzb;
    private final String zzc;
    private final zzfef zzd;

    public zzery(zzfxb zzfxbVar, zzdxb zzdxbVar, zzfef zzfefVar, String str) {
        this.zza = zzfxbVar;
        this.zzb = zzdxbVar;
        this.zzd = zzfefVar;
        this.zzc = str;
    }

    public final /* synthetic */ zzerz zza() throws Exception {
        return new zzerz(this.zzb.zzb(this.zzd.zzf, this.zzc), this.zzb.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzerz> zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzerx
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzery.this.zza();
            }
        });
    }
}
