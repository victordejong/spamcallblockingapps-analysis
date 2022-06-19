package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzom;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjx.class */
public final class zzjx {
    @VisibleForTesting
    public long zza;
    @VisibleForTesting
    public long zzb;
    public final /* synthetic */ zzjz zzc;
    private final zzal zzd;

    public zzjx(zzjz zzjzVar) {
        this.zzc = zzjzVar;
        this.zzd = new zzjw(this, zzjzVar.zzs);
        long elapsedRealtime = zzjzVar.zzs.zzay().elapsedRealtime();
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
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    public final boolean zzd(boolean z, boolean z2, long j) {
        this.zzc.zzg();
        this.zzc.zzb();
        zzom.zzb();
        if (!this.zzc.zzs.zzc().zzn(null, zzea.zzan)) {
            this.zzc.zzs.zzd().zzj.zzb(this.zzc.zzs.zzay().currentTimeMillis());
        } else if (this.zzc.zzs.zzF()) {
            this.zzc.zzs.zzd().zzj.zzb(this.zzc.zzs.zzay().currentTimeMillis());
        }
        char c = j - this.zza;
        if (!z && c < 1000) {
            this.zzc.zzs.zzau().zzk().zzb("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(c));
            return false;
        }
        if (!z2) {
            c = j - this.zzb;
            this.zzb = j;
        }
        this.zzc.zzs.zzau().zzk().zzb("Recording user engagement, ms", Long.valueOf(c));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", c);
        zzik.zzm(this.zzc.zzs.zzx().zzh(!this.zzc.zzs.zzc().zzt()), bundle, true);
        zzae zzc = this.zzc.zzs.zzc();
        zzdz<Boolean> zzdzVar = zzea.zzT;
        if (!zzc.zzn(null, zzdzVar) && z2) {
            bundle.putLong("_fr", 1L);
        }
        if (!this.zzc.zzs.zzc().zzn(null, zzdzVar) || !z2) {
            this.zzc.zzs.zzk().zzs("auto", "_e", bundle);
        }
        this.zza = j;
        this.zzd.zzd();
        this.zzd.zzb(3600000L);
        return true;
    }
}
