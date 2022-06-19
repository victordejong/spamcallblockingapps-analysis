package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzexg.class */
public final class zzexg implements zzfln<zzeap, zzexj> {
    public final /* synthetic */ zzexk zza;

    public zzexg(zzexk zzexkVar) {
        this.zza = zzexkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final /* bridge */ /* synthetic */ zzexj apply(zzeap zzeapVar) {
        zzfcm zze;
        zzexj zzexjVar;
        zzcgt.zzg("", zzeapVar);
        zze.zza("Failed to get a cache key, reverting to legacy flow.");
        zzexk zzexkVar = this.zza;
        zze = zzexkVar.zze();
        zzexkVar.zzd = new zzexj(null, zze, null);
        zzexjVar = this.zza.zzd;
        return zzexjVar;
    }
}
