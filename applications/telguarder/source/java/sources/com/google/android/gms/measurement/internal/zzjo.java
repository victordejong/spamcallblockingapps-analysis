package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzlx;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzjo.class */
public final class zzjo {
    protected long zza;
    protected long zzb;
    final /* synthetic */ zzjq zzc;
    private final zzal zzd;

    public zzjo(zzjq zzjqVar) {
        this.zzc = zzjqVar;
        this.zzd = new zzjn(this, zzjqVar.zzx);
        long elapsedRealtime = zzjqVar.zzx.zzax().elapsedRealtime();
        this.zza = elapsedRealtime;
        this.zzb = elapsedRealtime;
    }

    public final void zza(long j) {
        this.zzc.zzg();
        this.zzd.zzd();
        this.zza = j;
        this.zzb = j;
    }

    public final void zzb(long j) {
        this.zzd.zzd();
    }

    public final void zzc() {
        this.zzd.zzd();
        this.zza = 0L;
        this.zzb = 0L;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    public final boolean zzd(boolean z, boolean z2, long j) {
        this.zzc.zzg();
        this.zzc.zzb();
        zzlx.zzb();
        if (!this.zzc.zzx.zzc().zzn(null, zzdw.zzao)) {
            this.zzc.zzx.zzd().zzo.zzb(this.zzc.zzx.zzax().currentTimeMillis());
        } else if (this.zzc.zzx.zzF()) {
            this.zzc.zzx.zzd().zzo.zzb(this.zzc.zzx.zzax().currentTimeMillis());
        }
        char c = j - this.zza;
        if (!z && c < 1000) {
            this.zzc.zzx.zzat().zzk().zzb("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(c));
            return false;
        }
        if (!z2) {
            c = j - this.zzb;
            this.zzb = j;
        }
        this.zzc.zzx.zzat().zzk().zzb("Recording user engagement, ms", Long.valueOf(c));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", c);
        zzib.zzm(this.zzc.zzx.zzx().zzh(!this.zzc.zzx.zzc().zzt()), bundle, true);
        if (!this.zzc.zzx.zzc().zzn(null, zzdw.zzT) && z2) {
            bundle.putLong("_fr", 1L);
        }
        if (!this.zzc.zzx.zzc().zzn(null, zzdw.zzT) || !z2) {
            this.zzc.zzx.zzk().zzs("auto", "_e", bundle);
        }
        this.zza = j;
        this.zzd.zzd();
        this.zzd.zzb(3600000L);
        return true;
    }
}
