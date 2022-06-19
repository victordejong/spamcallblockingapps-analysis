package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegf.class */
public final class zzegf implements zzeec<zzdji> {
    private final Context zza;
    private final zzdss zzb;
    private final zzdkf zzc;
    private final zzfar zzd;
    private final Executor zze;
    private final zzcgz zzf;
    private final zzbpu zzg;
    private final boolean zzh = ((Boolean) zzbet.zzc().zzc(zzbjl.zzgo)).booleanValue();

    public zzegf(Context context, zzcgz zzcgzVar, zzfar zzfarVar, Executor executor, zzdkf zzdkfVar, zzdss zzdssVar, zzbpu zzbpuVar) {
        this.zza = context;
        this.zzd = zzfarVar;
        this.zzc = zzdkfVar;
        this.zze = executor;
        this.zzf = zzcgzVar;
        this.zzb = zzdssVar;
        this.zzg = zzbpuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final boolean zza(zzfal zzfalVar, zzezz zzezzVar) {
        zzfae zzfaeVar = zzezzVar.zzs;
        return (zzfaeVar == null || zzfaeVar.zza == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final zzfsm<zzdji> zzb(zzfal zzfalVar, zzezz zzezzVar) {
        zzdsw zzdswVar = new zzdsw();
        zzfsm<zzdji> zzi = zzfsd.zzi(zzfsd.zza(null), new zzfrk(this, zzezzVar, zzfalVar, zzdswVar) { // from class: com.google.android.gms.internal.ads.zzega
            private final zzegf zza;
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
        zzi.zze(zzegb.zza(zzdswVar), this.zze);
        return zzi;
    }

    public final /* synthetic */ zzfsm zzc(zzezz zzezzVar, zzfal zzfalVar, zzdsw zzdswVar, Object obj) throws Exception {
        zzcml zzb = this.zzb.zzb(this.zzd.zze, zzezzVar, zzfalVar.zzb.zzb);
        zzb.zzav(zzezzVar.zzS);
        zzdswVar.zza(this.zza, (View) zzb);
        zzchl zzchlVar = new zzchl();
        zzdjj zzQ = this.zzc.zzQ(new zzcxv(zzfalVar, zzezzVar, null), new zzdjm(new zzege(this.zza, this.zzf, zzchlVar, zzezzVar, zzb, this.zzd, this.zzh, this.zzg), zzb));
        zzchlVar.zzc(zzQ);
        zzQ.zzd().zzi(new zzdbw(zzb) { // from class: com.google.android.gms.internal.ads.zzegc
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
        zzQ.zzk().zzi(zzb, true, this.zzh ? this.zzg : null);
        zzQ.zzk();
        zzfae zzfaeVar = zzezzVar.zzs;
        return zzfsd.zzj(zzdsr.zzj(zzb, zzfaeVar.zzb, zzfaeVar.zza), new zzfln(this, zzb, zzezzVar, zzQ) { // from class: com.google.android.gms.internal.ads.zzegd
            private final zzegf zza;
            private final zzcml zzb;
            private final zzezz zzc;
            private final zzdjj zzd;

            {
                this.zza = this;
                this.zzb = zzb;
                this.zzc = zzezzVar;
                this.zzd = zzQ;
            }

            @Override // com.google.android.gms.internal.ads.zzfln
            public final Object apply(Object obj2) {
                zzcml zzcmlVar = this.zzb;
                zzezz zzezzVar2 = this.zzc;
                zzdjj zzdjjVar = this.zzd;
                if (zzezzVar2.zzI) {
                    zzcmlVar.zzau();
                }
                zzcmlVar.zzL();
                zzcmlVar.onPause();
                return zzdjjVar.zzh();
            }
        }, this.zze);
    }
}
