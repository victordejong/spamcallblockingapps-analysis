package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgo.class */
public final class zzcgo implements zzdzl<zzbeb> {
    private final /* synthetic */ String zzerp;
    private final /* synthetic */ zzaif zzgja;

    public zzcgo(zzcgk zzcgkVar, String str, zzaif zzaifVar) {
        this.zzerp = str;
        this.zzgja = zzaifVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(zzbeb zzbebVar) {
        zzbebVar.zza(this.zzerp, this.zzgja);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
    }
}
