package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzav;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefd.class */
public final class zzefd implements zzeec<zzcvh> {
    private final zzcwe zza;
    private final Context zzb;
    private final zzdss zzc;
    private final zzfar zzd;
    private final Executor zze;
    private final zzfln<zzezz, zzav> zzf;

    public zzefd(zzcwe zzcweVar, Context context, Executor executor, zzdss zzdssVar, zzfar zzfarVar, zzfln<zzezz, zzav> zzflnVar) {
        this.zzb = context;
        this.zza = zzcweVar;
        this.zze = executor;
        this.zzc = zzdssVar;
        this.zzd = zzfarVar;
        this.zzf = zzflnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final boolean zza(zzfal zzfalVar, zzezz zzezzVar) {
        zzfae zzfaeVar = zzezzVar.zzs;
        return (zzfaeVar == null || zzfaeVar.zza == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final zzfsm<zzcvh> zzb(zzfal zzfalVar, zzezz zzezzVar) {
        return zzfsd.zzi(zzfsd.zza(null), new zzfrk(this, zzfalVar, zzezzVar) { // from class: com.google.android.gms.internal.ads.zzeex
            private final zzefd zza;
            private final zzfal zzb;
            private final zzezz zzc;

            {
                this.zza = this;
                this.zzb = zzfalVar;
                this.zzc = zzezzVar;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zzd(this.zzb, this.zzc, obj);
            }
        }, this.zze);
    }

    public final /* synthetic */ void zzc(zzcml zzcmlVar) {
        zzcmlVar.zzL();
        zzcnh zzh = zzcmlVar.zzh();
        zzbis zzbisVar = this.zzd.zza;
        if (zzbisVar == null || zzh == null) {
            return;
        }
        zzh.zzc(zzbisVar);
    }

    public final /* synthetic */ zzfsm zzd(zzfal zzfalVar, zzezz zzezzVar, Object obj) throws Exception {
        zzcwv zzcwvVar;
        zzbdl zzb = zzfav.zzb(this.zzb, zzezzVar.zzu);
        zzcml zzb2 = this.zzc.zzb(zzb, zzezzVar, zzfalVar.zzb.zzb);
        zzb2.zzav(zzezzVar.zzS);
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzfB)).booleanValue() || !zzezzVar.zzad) {
            zzcwvVar = new zzdsv(this.zzb, (View) zzb2, this.zzf.apply(zzezzVar));
        } else {
            zzcwvVar = zzcwv.zza(this.zzb, (View) zzb2, zzezzVar);
        }
        zzcvi zzaa = this.zza.zzaa(new zzcxv(zzfalVar, zzezzVar, null), new zzcvo(zzcwvVar, zzb2, zzeey.zzb(zzb2), zzfav.zzc(zzb)));
        zzaa.zzi().zzi(zzb2, false, null);
        zzdbu zzd = zzaa.zzd();
        zzdbw zzdbwVar = new zzdbw(zzb2) { // from class: com.google.android.gms.internal.ads.zzeez
            private final zzcml zza;

            {
                this.zza = zzb2;
            }

            @Override // com.google.android.gms.internal.ads.zzdbw
            public final void zzg() {
                zzcml zzcmlVar = this.zza;
                if (zzcmlVar.zzR() != null) {
                    zzcmlVar.zzR().zzj();
                }
            }
        };
        zzfsn zzfsnVar = zzchg.zzf;
        zzd.zzi(zzdbwVar, zzfsnVar);
        zzaa.zzi();
        zzfae zzfaeVar = zzezzVar.zzs;
        zzfsm<?> zzj = zzdsr.zzj(zzb2, zzfaeVar.zzb, zzfaeVar.zza);
        if (zzezzVar.zzI) {
            zzj.zze(zzefa.zza(zzb2), this.zze);
        }
        zzj.zze(new Runnable(this, zzb2) { // from class: com.google.android.gms.internal.ads.zzefb
            private final zzefd zza;
            private final zzcml zzb;

            {
                this.zza = this;
                this.zzb = zzb2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzc(this.zzb);
            }
        }, this.zze);
        return zzfsd.zzj(zzj, new zzfln(zzaa) { // from class: com.google.android.gms.internal.ads.zzefc
            private final zzcvi zza;

            {
                this.zza = zzaa;
            }

            @Override // com.google.android.gms.internal.ads.zzfln
            public final Object apply(Object obj2) {
                return this.zza.zzh();
            }
        }, zzfsnVar);
    }
}
