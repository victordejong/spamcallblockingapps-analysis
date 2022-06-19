package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeig.class */
public final class zzeig implements zzeht<zzcyp> {
    private final zzcyk zza;
    private final Context zzb;
    private final zzdwj zzc;
    private final zzfef zzd;
    private final Executor zze;
    private final zzcjf zzf;
    private final zzbrw zzg;
    private final boolean zzh = ((Boolean) zzbgq.zzc().zzb(zzblj.zzgz)).booleanValue();

    public zzeig(zzcyk zzcykVar, Context context, Executor executor, zzdwj zzdwjVar, zzfef zzfefVar, zzcjf zzcjfVar, zzbrw zzbrwVar) {
        this.zzb = context;
        this.zza = zzcykVar;
        this.zze = executor;
        this.zzc = zzdwjVar;
        this.zzd = zzfefVar;
        this.zzf = zzcjfVar;
        this.zzg = zzbrwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final zzfxa<zzcyp> zza(final zzfdz zzfdzVar, final zzfdn zzfdnVar) {
        final zzdwn zzdwnVar = new zzdwn();
        zzfxa<zzcyp> zzn = zzfwq.zzn(zzfwq.zzi(null), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzeie
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzeig.this.zzc(zzfdnVar, zzfdzVar, zzdwnVar, obj);
            }
        }, this.zze);
        zzn.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeif
            @Override // java.lang.Runnable
            public final void run() {
                zzdwn.this.zzb();
            }
        }, this.zze);
        return zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final boolean zzb(zzfdz zzfdzVar, zzfdn zzfdnVar) {
        zzfds zzfdsVar = zzfdnVar.zzt;
        return (zzfdsVar == null || zzfdsVar.zza == null) ? false : true;
    }

    public final /* synthetic */ zzfxa zzc(final zzfdn zzfdnVar, zzfdz zzfdzVar, zzdwn zzdwnVar, Object obj) throws Exception {
        final zzcop zza = this.zzc.zza(this.zzd.zze, zzfdnVar, zzfdzVar.zzb.zzb);
        zza.zzab(zzfdnVar.zzT);
        zzdwnVar.zza(this.zzb, (View) zza);
        zzcjr zzcjrVar = new zzcjr();
        final zzcyh zza2 = this.zza.zza(new zzdbk(zzfdzVar, zzfdnVar, null), new zzdna(new zzeii(this.zzf, zzcjrVar, zzfdnVar, zza, this.zzd, this.zzh, this.zzg), zza), new zzcyi(zzfdnVar.zzX));
        zza2.zzj().zzi(zza, false, this.zzh ? this.zzg : null);
        zzcjrVar.zzd(zza2);
        zza2.zzc().zzj(new zzdfl() { // from class: com.google.android.gms.internal.ads.zzeic
            @Override // com.google.android.gms.internal.ads.zzdfl
            public final void zzl() {
                zzcop zzcopVar = zzcop.this;
                if (zzcopVar.zzP() != null) {
                    zzcopVar.zzP().zzp();
                }
            }
        }, zzcjm.zzf);
        zza2.zzj();
        zzfds zzfdsVar = zzfdnVar.zzt;
        return zzfwq.zzm(zzdwi.zzj(zza, zzfdsVar.zzb, zzfdsVar.zza), new zzfpv() { // from class: com.google.android.gms.internal.ads.zzeid
            @Override // com.google.android.gms.internal.ads.zzfpv
            public final Object apply(Object obj2) {
                zzcop zzcopVar = zza;
                zzfdn zzfdnVar2 = zzfdnVar;
                zzcyh zzcyhVar = zza2;
                if (zzfdnVar2.zzJ) {
                    zzcopVar.zzag();
                }
                zzcopVar.zzaa();
                zzcopVar.onPause();
                return zzcyhVar.zza();
            }
        }, this.zze);
    }
}
