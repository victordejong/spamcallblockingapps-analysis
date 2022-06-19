package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.nonagon.signalgeneration.zzf;
import com.google.android.gms.ads.nonagon.signalgeneration.zzx;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeuu.class */
public final class zzeuu implements zzevn<zzeuv> {
    private final String zza;
    private final zzfxb zzb;
    private final ScheduledExecutorService zzc;
    private final Context zzd;
    private final zzfef zze;
    private final zzcqm zzf;

    public zzeuu(zzfxb zzfxbVar, ScheduledExecutorService scheduledExecutorService, String str, Context context, zzfef zzfefVar, zzcqm zzcqmVar) {
        this.zzb = zzfxbVar;
        this.zzc = scheduledExecutorService;
        this.zza = str;
        this.zzd = context;
        this.zze = zzfefVar;
        this.zzf = zzcqmVar;
    }

    public static /* synthetic */ zzfxa zza(zzeuu zzeuuVar) {
        String str = zzeuuVar.zza;
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfu)).booleanValue()) {
            str = AdFormat.UNKNOWN.name();
        }
        zzf zzq = zzeuuVar.zzf.zzq();
        zzdeb zzdebVar = new zzdeb();
        zzdebVar.zzc(zzeuuVar.zzd);
        zzfed zzfedVar = new zzfed();
        zzfedVar.zzs("adUnitId");
        zzfedVar.zzD(zzeuuVar.zze.zzd);
        zzfedVar.zzr(new zzbfi());
        zzdebVar.zzf(zzfedVar.zzF());
        zzq.zza(zzdebVar.zzg());
        zzx zzxVar = new zzx();
        zzxVar.zza(str);
        zzq.zzb(zzxVar.zzb());
        new zzdkc();
        return zzfwq.zzf(zzfwq.zzm((zzfwh) zzfwq.zzo(zzfwh.zzw(zzq.zzc().zza()), ((Long) zzbgq.zzc().zzb(zzblj.zzfv)).longValue(), TimeUnit.MILLISECONDS, zzeuuVar.zzc), zzeuq.zza, zzeuuVar.zzb), Exception.class, zzeur.zza, zzeuuVar.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzeuv> zzb() {
        return (!((Boolean) zzbgq.zzc().zzb(zzblj.zzft)).booleanValue() || "adUnitId".equals(this.zze.zzf)) ? this.zzb.zzb(zzeut.zza) : zzfwq.zzl(new zzfvw() { // from class: com.google.android.gms.internal.ads.zzeus
            @Override // com.google.android.gms.internal.ads.zzfvw
            public final zzfxa zza() {
                return zzeuu.zza(zzeuu.this);
            }
        }, this.zzb);
    }
}
