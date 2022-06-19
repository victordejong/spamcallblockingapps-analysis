package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzf;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzemz.class */
public final class zzemz implements zzf {
    public final AtomicBoolean zza = new AtomicBoolean(false);
    private final zzdep zzb;
    private final zzdfj zzc;
    private final zzdmf zzd;
    private final zzdly zze;
    private final zzcxf zzf;

    public zzemz(zzdep zzdepVar, zzdfj zzdfjVar, zzdmf zzdmfVar, zzdly zzdlyVar, zzcxf zzcxfVar) {
        this.zzb = zzdepVar;
        this.zzc = zzdfjVar;
        this.zzd = zzdmfVar;
        this.zze = zzdlyVar;
        this.zzf = zzcxfVar;
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zza(View view) {
        synchronized (this) {
            if (!this.zza.compareAndSet(false, true)) {
                return;
            }
            this.zzf.zzl();
            this.zze.zza(view);
        }
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzb() {
        if (this.zza.get()) {
            this.zzb.onAdClicked();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzc() {
        if (this.zza.get()) {
            this.zzc.zza();
            this.zzd.zza();
        }
    }
}
