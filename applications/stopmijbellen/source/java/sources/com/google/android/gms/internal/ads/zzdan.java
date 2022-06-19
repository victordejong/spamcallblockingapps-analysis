package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdan.class */
public final class zzdan implements zzdgf, zzaya {
    private final zzfdn zza;
    private final zzdfj zzb;
    private final zzdgo zzc;
    private final AtomicBoolean zzd = new AtomicBoolean();
    private final AtomicBoolean zze = new AtomicBoolean();

    public zzdan(zzfdn zzfdnVar, zzdfj zzdfjVar, zzdgo zzdgoVar) {
        this.zza = zzfdnVar;
        this.zzb = zzdfjVar;
        this.zzc = zzdgoVar;
    }

    private final void zza() {
        if (this.zzd.compareAndSet(false, true)) {
            this.zzb.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void zzc(zzaxz zzaxzVar) {
        if (this.zza.zzf == 1 && zzaxzVar.zzj) {
            zza();
        }
        if (!zzaxzVar.zzj || !this.zze.compareAndSet(false, true)) {
            return;
        }
        this.zzc.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final void zzn() {
        synchronized (this) {
            if (this.zza.zzf != 1) {
                zza();
            }
        }
    }
}
