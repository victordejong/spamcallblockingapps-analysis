package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzejw.class */
public final class zzejw implements zzeht<zzdmw> {
    private final Context zza;
    private final zzdwj zzb;
    private final zzdnt zzc;
    private final zzfef zzd;
    private final Executor zze;
    private final zzcjf zzf;
    private final zzbrw zzg;
    private final boolean zzh = ((Boolean) zzbgq.zzc().zzb(zzblj.zzgz)).booleanValue();

    public zzejw(Context context, zzcjf zzcjfVar, zzfef zzfefVar, Executor executor, zzdnt zzdntVar, zzdwj zzdwjVar, zzbrw zzbrwVar) {
        this.zza = context;
        this.zzd = zzfefVar;
        this.zzc = zzdntVar;
        this.zze = executor;
        this.zzf = zzcjfVar;
        this.zzb = zzdwjVar;
        this.zzg = zzbrwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final zzfxa<zzdmw> zza(final zzfdz zzfdzVar, final zzfdn zzfdnVar) {
        final zzdwn zzdwnVar = new zzdwn();
        zzfxa<zzdmw> zzn = zzfwq.zzn(zzfwq.zzi(null), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzejt
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzejw.this.zzc(zzfdnVar, zzfdzVar, zzdwnVar, obj);
            }
        }, this.zze);
        zzn.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeju
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
        final zzdmx zze = this.zzc.zze(new zzdbk(zzfdzVar, zzfdnVar, null), new zzdna(new zzejv(this.zza, this.zzf, zzcjrVar, zzfdnVar, zza, this.zzd, this.zzh, this.zzg), zza));
        zzcjrVar.zzd(zze);
        zze.zzc().zzj(new zzdfl() { // from class: com.google.android.gms.internal.ads.zzejr
            @Override // com.google.android.gms.internal.ads.zzdfl
            public final void zzl() {
                zzcop zzcopVar = zzcop.this;
                if (zzcopVar.zzP() != null) {
                    zzcopVar.zzP().zzp();
                }
            }
        }, zzcjm.zzf);
        zze.zzk().zzi(zza, true, this.zzh ? this.zzg : null);
        zze.zzk();
        zzfds zzfdsVar = zzfdnVar.zzt;
        return zzfwq.zzm(zzdwi.zzj(zza, zzfdsVar.zzb, zzfdsVar.zza), new zzfpv() { // from class: com.google.android.gms.internal.ads.zzejs
            @Override // com.google.android.gms.internal.ads.zzfpv
            public final Object apply(Object obj2) {
                zzcop zzcopVar = zza;
                zzfdn zzfdnVar2 = zzfdnVar;
                zzdmx zzdmxVar = zze;
                if (zzfdnVar2.zzJ) {
                    zzcopVar.zzag();
                }
                zzcopVar.zzaa();
                zzcopVar.onPause();
                return zzdmxVar.zzg();
            }
        }, this.zze);
    }
}
