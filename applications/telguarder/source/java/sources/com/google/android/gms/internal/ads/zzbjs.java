package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbjs.class */
final class zzbjs implements zzdzl<String> {
    private final /* synthetic */ zzbjq zzfrh;
    private final /* synthetic */ String zzfrw;

    public zzbjs(zzbjq zzbjqVar, String str) {
        this.zzfrh = zzbjqVar;
        this.zzfrw = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(String str) {
        zzdnx zzdnxVar;
        zzdsq zzdsqVar;
        zzdnl zzdnlVar;
        zzdmw zzdmwVar;
        zzdmw zzdmwVar2;
        zzdnxVar = this.zzfrh.zzfrk;
        zzdsqVar = this.zzfrh.zzfre;
        zzdnlVar = this.zzfrh.zzfrd;
        zzdmwVar = this.zzfrh.zzfrj;
        String str2 = this.zzfrw;
        zzdmwVar2 = this.zzfrh.zzfrj;
        zzdnxVar.zzj(zzdsqVar.zza(zzdnlVar, zzdmwVar, false, str2, str, zzdmwVar2.zzdmq));
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        zzdnx zzdnxVar;
        zzdsq zzdsqVar;
        zzdnl zzdnlVar;
        zzdmw zzdmwVar;
        zzdmw zzdmwVar2;
        zzdnxVar = this.zzfrh.zzfrk;
        zzdsqVar = this.zzfrh.zzfre;
        zzdnlVar = this.zzfrh.zzfrd;
        zzdmwVar = this.zzfrh.zzfrj;
        String str = this.zzfrw;
        zzdmwVar2 = this.zzfrh.zzfrj;
        zzdnxVar.zzj(zzdsqVar.zza(zzdnlVar, zzdmwVar, false, str, null, zzdmwVar2.zzdmq));
    }
}
