package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.overlay.zzw;
import com.google.android.gms.ads.internal.zzj;
import com.google.android.gms.ads.internal.zzt;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeii.class */
public final class zzeii implements zzdob {
    private final zzcjf zza;
    private final zzfxa<zzcyh> zzb;
    private final zzfdn zzc;
    private final zzcop zzd;
    private final zzfef zze;
    private final zzbrw zzf;
    private final boolean zzg;

    public zzeii(zzcjf zzcjfVar, zzfxa<zzcyh> zzfxaVar, zzfdn zzfdnVar, zzcop zzcopVar, zzfef zzfefVar, boolean z, zzbrw zzbrwVar) {
        this.zza = zzcjfVar;
        this.zzb = zzfxaVar;
        this.zzc = zzfdnVar;
        this.zzd = zzcopVar;
        this.zze = zzfefVar;
        this.zzg = z;
        this.zzf = zzbrwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    public final void zza(boolean z, Context context, zzdfe zzdfeVar) {
        zzcyh zzcyhVar = (zzcyh) zzfwq.zzq(this.zzb);
        this.zzd.zzap(true);
        zzj zzjVar = new zzj(this.zzg ? this.zzf.zze(true) : true, true, this.zzg ? this.zzf.zzd() : false, this.zzg ? this.zzf.zza() : 0.0f, -1, z, this.zzc.zzL, false);
        if (zzdfeVar != null) {
            zzdfeVar.zzf();
        }
        zzt.zzj();
        zzdnq zzg = zzcyhVar.zzg();
        zzcop zzcopVar = this.zzd;
        int i = this.zzc.zzN;
        if (i == -1) {
            zzbfo zzbfoVar = this.zze.zzj;
            if (zzbfoVar != null) {
                int i2 = zzbfoVar.zza;
                if (i2 == 1) {
                    i = 7;
                } else if (i2 == 2) {
                    i = 6;
                }
            }
            zzciz.zze("Error setting app open orientation; no targeting orientation available.");
            i = this.zzc.zzN;
        }
        zzcjf zzcjfVar = this.zza;
        zzfdn zzfdnVar = this.zzc;
        String str = zzfdnVar.zzC;
        zzfds zzfdsVar = zzfdnVar.zzt;
        zzm.zza(context, new AdOverlayInfoParcel((zzbes) null, zzg, (zzw) null, zzcopVar, i, zzcjfVar, str, zzjVar, zzfdsVar.zzb, zzfdsVar.zza, this.zze.zzf, zzdfeVar), true);
    }
}
