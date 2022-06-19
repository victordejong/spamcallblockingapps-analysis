package com.google.android.gms.measurement.internal;

import android.os.Handler;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjv.class */
public final class zzjv {
    public final /* synthetic */ zzjz zza;
    private zzju zzb;

    public zzjv(zzjz zzjzVar) {
        this.zza = zzjzVar;
    }

    public final void zza() {
        Handler handler;
        this.zza.zzg();
        if (this.zzb != null) {
            handler = this.zza.zzd;
            handler.removeCallbacks(this.zzb);
        }
        if (this.zza.zzs.zzc().zzn(null, zzea.zzar)) {
            this.zza.zzs.zzd().zzl.zzb(false);
        }
    }

    public final void zzb(long j) {
        Handler handler;
        this.zzb = new zzju(this, this.zza.zzs.zzay().currentTimeMillis(), j);
        handler = this.zza.zzd;
        handler.postDelayed(this.zzb, 2000L);
    }
}
