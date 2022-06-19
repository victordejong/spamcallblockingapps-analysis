package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.nonagon.signalgeneration.zzf;
import com.google.android.gms.ads.nonagon.signalgeneration.zzx;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzerf.class */
public final class zzerf implements zzery<zzerg> {
    private final String zza;
    private final zzfsn zzb;
    private final ScheduledExecutorService zzc;
    private final Context zzd;
    private final zzfar zze;
    private final zzcoj zzf;

    public zzerf(zzfsn zzfsnVar, ScheduledExecutorService scheduledExecutorService, String str, Context context, zzfar zzfarVar, zzcoj zzcojVar) {
        this.zzb = zzfsnVar;
        this.zzc = scheduledExecutorService;
        this.zza = str;
        this.zzd = context;
        this.zze = zzfarVar;
        this.zzf = zzcojVar;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzerg> zza() {
        return (!((Boolean) zzbet.zzc().zzc(zzbjl.zzfm)).booleanValue() || "adUnitId".equals(this.zze.zzf)) ? this.zzb.zzb(zzerb.zza) : zzfsd.zze(new zzfrj(this) { // from class: com.google.android.gms.internal.ads.zzerc
            private final zzerf zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzfrj
            public final zzfsm zza() {
                return this.zza.zzb();
            }
        }, this.zzb);
    }

    public final /* bridge */ /* synthetic */ zzfsm zzb() {
        String str = this.zza;
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfn)).booleanValue()) {
            str = AdFormat.UNKNOWN.name();
        }
        zzf zzu = this.zzf.zzu();
        zzdam zzdamVar = new zzdam();
        zzdamVar.zze(this.zzd);
        zzfap zzfapVar = new zzfap();
        zzfapVar.zzw("adUnitId");
        zzfapVar.zzr(this.zze.zzd);
        zzfapVar.zzt(new zzbdl());
        zzdamVar.zzf(zzfapVar.zzL());
        zzu.zzc(zzdamVar.zzh());
        zzx zzxVar = new zzx();
        zzxVar.zzb(str);
        zzu.zzb(zzxVar.zzc());
        new zzdgn();
        return zzfsd.zzf(zzfsd.zzj((zzfru) zzfsd.zzh(zzfru.zzw((zzfsm) zzu.zza().zza()), ((Long) zzbet.zzc().zzc(zzbjl.zzfo)).longValue(), TimeUnit.MILLISECONDS, this.zzc), zzerd.zza, this.zzb), Exception.class, zzere.zza, this.zzb);
    }
}
