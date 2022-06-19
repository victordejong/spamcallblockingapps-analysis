package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdhe.class */
public final class zzdhe implements zzdfi<zzdhf> {
    private Context context;
    private ScheduledExecutorService zzfri;
    private zzarw zzhes;

    public zzdhe(zzarw zzarwVar, ScheduledExecutorService scheduledExecutorService, Context context) {
        this.zzhes = zzarwVar;
        this.zzfri = scheduledExecutorService;
        this.context = context;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdhf> zzasy() {
        return zzdzk.zzb(zzdzk.zza(this.zzhes.zzo(this.context), ((Long) zzwr.zzqr().zzd(zzabp.zzctx)).longValue(), TimeUnit.MILLISECONDS, this.zzfri), zzdhh.zzeaj, zzazp.zzeic);
    }
}
