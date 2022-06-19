package com.google.android.gms.measurement.internal;

import android.os.Handler;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzjm.class */
public final class zzjm {
    final /* synthetic */ zzjq zza;
    private zzjl zzb;

    public zzjm(zzjq zzjqVar) {
        this.zza = zzjqVar;
    }

    public final void zza() {
        Handler handler;
        this.zza.zzg();
        if (this.zzb != null) {
            handler = this.zza.zzd;
            handler.removeCallbacks(this.zzb);
        }
        if (this.zza.zzx.zzc().zzn(null, zzdw.zzat)) {
            this.zza.zzx.zzd().zzq.zzb(false);
        }
    }

    public final void zzb(long j) {
        Handler handler;
        this.zzb = new zzjl(this, this.zza.zzx.zzax().currentTimeMillis(), j);
        handler = this.zza.zzd;
        handler.postDelayed(this.zzb, 2000L);
    }
}
