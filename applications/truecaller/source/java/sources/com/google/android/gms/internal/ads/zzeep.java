package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeep.class */
public final class zzeep implements zzeec<zzcva> {
    private final zzcuv zza;
    private final Context zzb;
    private final zzdss zzc;
    private final zzfar zzd;
    private final Executor zze;
    private final zzcgz zzf;
    private final zzbpu zzg;
    private final boolean zzh = ((Boolean) zzbet.zzc().zzc(zzbjl.zzgo)).booleanValue();

    public zzeep(zzcuv zzcuvVar, Context context, Executor executor, zzdss zzdssVar, zzfar zzfarVar, zzcgz zzcgzVar, zzbpu zzbpuVar) {
        this.zzb = context;
        this.zza = zzcuvVar;
        this.zze = executor;
        this.zzc = zzdssVar;
        this.zzd = zzfarVar;
        this.zzf = zzcgzVar;
        this.zzg = zzbpuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final boolean zza(zzfal zzfalVar, zzezz zzezzVar) {
        zzfae zzfaeVar = zzezzVar.zzs;
        return (zzfaeVar == null || zzfaeVar.zza == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final zzfsm<zzcva> zzb(zzfal zzfalVar, zzezz zzezzVar) {
        zzdsw zzdswVar = new zzdsw();
        zzfsm<zzcva> zzi = zzfsd.zzi(zzfsd.zza(null), new zzfrk(this, zzezzVar, zzfalVar, zzdswVar) { // from class: com.google.android.gms.internal.ads.zzeel
            private final zzeep zza;
            private final zzezz zzb;
            private final zzfal zzc;
            private final zzdsw zzd;

            {
                this.zza = this;
                this.zzb = zzezzVar;
                this.zzc = zzfalVar;
                this.zzd = zzdswVar;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zzc(this.zzb, this.zzc, this.zzd, obj);
            }
        }, this.zze);
        zzi.zze(zzeem.zza(zzdswVar), this.zze);
        return zzi;
    }

    public final /* synthetic */ zzfsm zzc(zzezz zzezzVar, zzfal zzfalVar, zzdsw zzdswVar, Object obj) throws Exception {
        zzcml zzb = this.zzc.zzb(this.zzd.zze, zzezzVar, zzfalVar.zzb.zzb);
        zzb.zzav(zzezzVar.zzS);
        zzdswVar.zza(this.zzb, (View) zzb);
        zzchl zzchlVar = new zzchl();
        zzcus zzR = this.zza.zzR(new zzcxv(zzfalVar, zzezzVar, null), new zzdjm(new zzeer(this.zzf, zzchlVar, zzezzVar, zzb, this.zzd, this.zzh, this.zzg), zzb), new zzcut(zzezzVar.zzW));
        zzR.zzi().zzi(zzb, false, this.zzh ? this.zzg : null);
        zzchlVar.zzc(zzR);
        zzR.zzd().zzi(new zzdbw(zzb) { // from class: com.google.android.gms.internal.ads.zzeen
            private final zzcml zza;

            {
                this.zza = zzb;
            }

            @Override // com.google.android.gms.internal.ads.zzdbw
            public final void zzg() {
                zzcml zzcmlVar = this.zza;
                if (zzcmlVar.zzR() != null) {
                    zzcmlVar.zzR().zzj();
                }
            }
        }, zzchg.zzf);
        zzR.zzi();
        zzfae zzfaeVar = zzezzVar.zzs;
        return zzfsd.zzj(zzdsr.zzj(zzb, zzfaeVar.zzb, zzfaeVar.zza), new zzfln(this, zzb, zzezzVar, zzR) { // from class: com.google.android.gms.internal.ads.zzeeo
            private final zzeep zza;
            private final zzcml zzb;
            private final zzezz zzc;
            private final zzcus zzd;

            {
                this.zza = this;
                this.zzb = zzb;
                this.zzc = zzezzVar;
                this.zzd = zzR;
            }

            @Override // com.google.android.gms.internal.ads.zzfln
            public final Object apply(Object obj2) {
                zzcml zzcmlVar = this.zzb;
                zzezz zzezzVar2 = this.zzc;
                zzcus zzcusVar = this.zzd;
                if (zzezzVar2.zzI) {
                    zzcmlVar.zzau();
                }
                zzcmlVar.zzL();
                zzcmlVar.onPause();
                return zzcusVar.zzh();
            }
        }, this.zze);
    }
}
