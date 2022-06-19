package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.overlay.zzw;
import com.google.android.gms.ads.internal.zzj;
import com.google.android.gms.ads.internal.zzt;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzejv.class */
public final class zzejv implements zzdob {
    private final Context zza;
    private final zzcjf zzb;
    private final zzfxa<zzdmx> zzc;
    private final zzfdn zzd;
    private final zzcop zze;
    private final zzfef zzf;
    private final zzbrw zzg;
    private final boolean zzh;

    public zzejv(Context context, zzcjf zzcjfVar, zzfxa<zzdmx> zzfxaVar, zzfdn zzfdnVar, zzcop zzcopVar, zzfef zzfefVar, boolean z, zzbrw zzbrwVar) {
        this.zza = context;
        this.zzb = zzcjfVar;
        this.zzc = zzfxaVar;
        this.zzd = zzfdnVar;
        this.zze = zzcopVar;
        this.zzf = zzfefVar;
        this.zzg = zzbrwVar;
        this.zzh = z;
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    public final void zza(boolean z, Context context, zzdfe zzdfeVar) {
        zzdmx zzdmxVar = (zzdmx) zzfwq.zzq(this.zzc);
        this.zze.zzap(true);
        boolean zze = this.zzh ? this.zzg.zze(false) : false;
        zzt.zzp();
        zzj zzjVar = new zzj(zze, com.google.android.gms.ads.internal.util.zzt.zzM(this.zza), this.zzh ? this.zzg.zzd() : false, this.zzh ? this.zzg.zza() : 0.0f, -1, z, this.zzd.zzL, false);
        if (zzdfeVar != null) {
            zzdfeVar.zzf();
        }
        zzt.zzj();
        zzdnq zzj = zzdmxVar.zzj();
        zzcop zzcopVar = this.zze;
        zzfdn zzfdnVar = this.zzd;
        int i = zzfdnVar.zzN;
        zzcjf zzcjfVar = this.zzb;
        String str = zzfdnVar.zzC;
        zzfds zzfdsVar = zzfdnVar.zzt;
        zzm.zza(context, new AdOverlayInfoParcel((zzbes) null, zzj, (zzw) null, zzcopVar, i, zzcjfVar, str, zzjVar, zzfdsVar.zzb, zzfdsVar.zza, this.zzf.zzf, zzdfeVar), true);
    }
}
