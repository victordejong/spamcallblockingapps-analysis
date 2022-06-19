package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzf;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeji.class */
public final class zzeji implements zzf {
    public final AtomicBoolean zza = new AtomicBoolean(false);
    private final zzdba zzb;
    private final zzdbu zzc;
    private final zzdiq zzd;
    private final zzdij zze;
    private final zzctq zzf;

    public zzeji(zzdba zzdbaVar, zzdbu zzdbuVar, zzdiq zzdiqVar, zzdij zzdijVar, zzctq zzctqVar) {
        this.zzb = zzdbaVar;
        this.zzc = zzdbuVar;
        this.zzd = zzdiqVar;
        this.zze = zzdijVar;
        this.zzf = zzctqVar;
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zza(View view) {
        synchronized (this) {
            if (!this.zza.compareAndSet(false, true)) {
                return;
            }
            this.zzf.zzg();
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
