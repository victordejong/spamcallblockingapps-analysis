package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeev.class */
public final class zzeev implements zzeec<zzcuq> {
    private final zzcuk zza;
    private final Context zzb;
    private final zzdss zzc;
    private final Executor zzd;

    public zzeev(zzcuk zzcukVar, Context context, Executor executor, zzdss zzdssVar) {
        this.zzb = context;
        this.zza = zzcukVar;
        this.zzd = executor;
        this.zzc = zzdssVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final boolean zza(zzfal zzfalVar, zzezz zzezzVar) {
        zzfae zzfaeVar = zzezzVar.zzs;
        return (zzfaeVar == null || zzfaeVar.zza == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final zzfsm<zzcuq> zzb(zzfal zzfalVar, zzezz zzezzVar) {
        return zzfsd.zzi(zzfsd.zza(null), new zzfrk(this, zzfalVar, zzezzVar) { // from class: com.google.android.gms.internal.ads.zzees
            private final zzeev zza;
            private final zzfal zzb;
            private final zzezz zzc;

            {
                this.zza = this;
                this.zzb = zzfalVar;
                this.zzc = zzezzVar;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zzc(this.zzb, this.zzc, obj);
            }
        }, this.zzd);
    }

    public final /* synthetic */ zzfsm zzc(zzfal zzfalVar, zzezz zzezzVar, Object obj) throws Exception {
        zzbdl zzb = zzfav.zzb(this.zzb, zzezzVar.zzu);
        zzcml zzb2 = this.zzc.zzb(zzb, zzezzVar, zzfalVar.zzb.zzb);
        zzcud zzR = this.zza.zzR(new zzcxv(zzfalVar, zzezzVar, null), new zzcue((View) zzb2, zzb2, zzfav.zzc(zzb), zzezzVar.zzW, zzezzVar.zzaa, zzezzVar.zzK));
        zzR.zzi().zzi(zzb2, false, null);
        zzdbu zzd = zzR.zzd();
        zzdbw zzdbwVar = new zzdbw(zzb2) { // from class: com.google.android.gms.internal.ads.zzeet
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
        zzR.zzi();
        zzfae zzfaeVar = zzezzVar.zzs;
        return zzfsd.zzj(zzdsr.zzj(zzb2, zzfaeVar.zzb, zzfaeVar.zza), new zzfln(zzR) { // from class: com.google.android.gms.internal.ads.zzeeu
            private final zzcud zza;

            {
                this.zza = zzR;
            }

            @Override // com.google.android.gms.internal.ads.zzfln
            public final Object apply(Object obj2) {
                return this.zza.zzh();
            }
        }, zzfsnVar);
    }
}
