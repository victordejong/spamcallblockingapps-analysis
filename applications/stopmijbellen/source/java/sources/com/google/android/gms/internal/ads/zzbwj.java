package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwj.class */
public final class zzbwj implements zzcjt {
    public final /* synthetic */ zzcjr zza;
    public final /* synthetic */ zzbvn zzb;

    public zzbwj(zzbwl zzbwlVar, zzcjr zzcjrVar, zzbvn zzbvnVar) {
        this.zza = zzcjrVar;
        this.zzb = zzbvnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjt
    public final void zza() {
        this.zza.zze(new zzbvw("Unable to obtain a JavascriptEngine."));
        this.zzb.zzb();
    }
}
