package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeme.class */
public final class zzeme implements zzeht<zzdvn> {
    private final Context zza;
    private final zzdwj zzb;
    private final zzdvs zzc;
    private final zzfef zzd;
    private final Executor zze;
    private final zzcjf zzf;
    private final zzbrw zzg;
    private final boolean zzh = ((Boolean) zzbgq.zzc().zzb(zzblj.zzgz)).booleanValue();

    public zzeme(Context context, zzcjf zzcjfVar, zzfef zzfefVar, Executor executor, zzdvs zzdvsVar, zzdwj zzdwjVar, zzbrw zzbrwVar) {
        this.zza = context;
        this.zzd = zzfefVar;
        this.zzc = zzdvsVar;
        this.zze = executor;
        this.zzf = zzcjfVar;
        this.zzb = zzdwjVar;
        this.zzg = zzbrwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final zzfxa<zzdvn> zza(final zzfdz zzfdzVar, final zzfdn zzfdnVar) {
        final zzdwn zzdwnVar = new zzdwn();
        zzfxa<zzdvn> zzn = zzfwq.zzn(zzfwq.zzi(null), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzelz
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzeme.this.zzc(zzfdnVar, zzfdzVar, zzdwnVar, obj);
            }
        }, this.zze);
        zzn.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzema
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
        final zzcop zza = this.zzb.zza(this.zzd.zze, zzfdnVar, zzfdzVar.zzb.zzb);
        zza.zzab(zzfdnVar.zzT);
        zzdwnVar.zza(this.zza, (View) zza);
        zzcjr zzcjrVar = new zzcjr();
        final zzdvo zze = this.zzc.zze(new zzdbk(zzfdzVar, zzfdnVar, null), new zzdvp(new zzemd(this.zza, this.zzb, this.zzd, this.zzf, zzfdnVar, zzcjrVar, zza, this.zzg, this.zzh), zza));
        zzcjrVar.zzd(zze);
        zzbsj.zzb(zza, zze.zzg());
        zze.zzc().zzj(new zzdfl() { // from class: com.google.android.gms.internal.ads.zzelx
            @Override // com.google.android.gms.internal.ads.zzdfl
            public final void zzl() {
                zzcop zzcopVar = zzcop.this;
                if (zzcopVar.zzP() != null) {
                    zzcopVar.zzP().zzp();
                }
            }
        }, zzcjm.zzf);
        zze.zzl().zzi(zza, true, this.zzh ? this.zzg : null);
        zze.zzl();
        zzfds zzfdsVar = zzfdnVar.zzt;
        return zzfwq.zzm(zzdwi.zzj(zza, zzfdsVar.zzb, zzfdsVar.zza), new zzfpv() { // from class: com.google.android.gms.internal.ads.zzely
            @Override // com.google.android.gms.internal.ads.zzfpv
            public final Object apply(Object obj2) {
                zzcop zzcopVar = zza;
                zzfdn zzfdnVar2 = zzfdnVar;
                zzdvo zzdvoVar = zze;
                if (zzfdnVar2.zzJ) {
                    zzcopVar.zzag();
                }
                zzcopVar.zzaa();
                zzcopVar.onPause();
                return zzdvoVar.zzk();
            }
        }, this.zze);
    }
}
