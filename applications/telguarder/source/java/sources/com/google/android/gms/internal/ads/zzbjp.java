package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbjp.class */
final class zzbjp implements zzdzl<String> {
    private final /* synthetic */ zzbjq zzfrh;

    public zzbjp(zzbjq zzbjqVar) {
        this.zzfrh = zzbjqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(String str) {
        zzdnx zzdnxVar;
        zzdsq zzdsqVar;
        zzdnl zzdnlVar;
        zzdmw zzdmwVar;
        zzdmw zzdmwVar2;
        Context context;
        zzdnxVar = this.zzfrh.zzfrk;
        zzdsqVar = this.zzfrh.zzfre;
        zzdnlVar = this.zzfrh.zzfrd;
        zzdmwVar = this.zzfrh.zzfrj;
        zzdmwVar2 = this.zzfrh.zzfrj;
        List<String> zza = zzdsqVar.zza(zzdnlVar, zzdmwVar, false, "", str, zzdmwVar2.zzdmp);
        zzr.zzkr();
        context = this.zzfrh.context;
        zzdnxVar.zza(zza, zzj.zzba(context) ? zzcqs.zzgru : zzcqs.zzgrt);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        zzdnx zzdnxVar;
        zzdsq zzdsqVar;
        zzdnl zzdnlVar;
        zzdmw zzdmwVar;
        zzdmw zzdmwVar2;
        Context context;
        zzdnxVar = this.zzfrh.zzfrk;
        zzdsqVar = this.zzfrh.zzfre;
        zzdnlVar = this.zzfrh.zzfrd;
        zzdmwVar = this.zzfrh.zzfrj;
        zzdmwVar2 = this.zzfrh.zzfrj;
        List<String> zza = zzdsqVar.zza(zzdnlVar, zzdmwVar, false, "", "failure_click_attok", zzdmwVar2.zzdmp);
        zzr.zzkr();
        context = this.zzfrh.context;
        zzdnxVar.zza(zza, zzj.zzba(context) ? zzcqs.zzgru : zzcqs.zzgrt);
    }
}
