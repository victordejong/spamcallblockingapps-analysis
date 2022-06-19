package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvo.class */
public final class zzbvo implements zzcjv<zzbuo> {
    public final /* synthetic */ zzbvn zza;

    public zzbvo(zzbvs zzbvsVar, zzbvn zzbvnVar) {
        this.zza = zzbvnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final /* bridge */ /* synthetic */ void zza(zzbuo zzbuoVar) {
        zze.zza("Getting a new session for JS Engine.");
        this.zza.zzh(zzbuoVar.zzj());
    }
}
