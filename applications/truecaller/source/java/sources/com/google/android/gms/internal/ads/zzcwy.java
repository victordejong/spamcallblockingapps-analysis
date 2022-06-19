package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcwy.class */
public final class zzcwy implements zzdcq, zzawd {
    private final zzezz zza;
    private final zzdbu zzb;
    private final zzdcz zzc;
    private final AtomicBoolean zzd = new AtomicBoolean();
    private final AtomicBoolean zze = new AtomicBoolean();

    public zzcwy(zzezz zzezzVar, zzdbu zzdbuVar, zzdcz zzdczVar) {
        this.zza = zzezzVar;
        this.zzb = zzdbuVar;
        this.zzc = zzdczVar;
    }

    private final void zza() {
        if (this.zzd.compareAndSet(false, true)) {
            this.zzb.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzawd
    public final void zzc(zzawc zzawcVar) {
        if (this.zza.zzf == 1 && zzawcVar.zzj) {
            zza();
        }
        if (!zzawcVar.zzj || !this.zze.compareAndSet(false, true)) {
            return;
        }
        this.zzc.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzdcq
    public final void zzf() {
        synchronized (this) {
            if (this.zza.zzf != 1) {
                zza();
            }
        }
    }
}
