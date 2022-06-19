package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfbh.class */
public final class zzfbh implements zzgpr<zzfbc<zzdvs, zzdvn>> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzffj> zzb;
    private final zzgqe<zzfgb> zzc;

    public zzfbh(zzgqe<Context> zzgqeVar, zzgqe<zzffj> zzgqeVar2, zzgqe<zzfgb> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    /* renamed from: zza */
    public final zzfbc<zzdvs, zzdvn> zzb() {
        zzfai zzfaiVar;
        Context zzb = this.zza.zzb();
        zzffj zzb2 = this.zzb.zzb();
        zzfgb zzb3 = this.zzc.zzb();
        zzcif zzg = ((Boolean) zzbgq.zzc().zzb(zzblj.zzeM)).booleanValue() ? zzt.zzo().zzh().zzg() : zzt.zzo().zzh().zzh();
        boolean z = false;
        if (zzg != null) {
            z = false;
            if (zzg.zzh()) {
                z = true;
            }
        }
        if (((Integer) zzbgq.zzc().zzb(zzblj.zzeO)).intValue() > 0) {
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzeL)).booleanValue() || z) {
                zzfga zza = zzb3.zza(zzffr.Rewarded, zzb, zzb2, new zzfag(new zzfad()));
                zzfas zzfasVar = new zzfas(new zzfar());
                zzffn zzffnVar = zza.zza;
                zzfxb zzfxbVar = zzcjm.zza;
                zzfaiVar = new zzfai(zzfasVar, new zzfao(zzffnVar, zzfxbVar), zza.zzb, zza.zza.zza().zzf, zzfxbVar);
                return zzfaiVar;
            }
        }
        zzfaiVar = new zzfar();
        return zzfaiVar;
    }
}
