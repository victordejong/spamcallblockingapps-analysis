package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgn.class */
public final class zzcgn implements zzdzl<zzbeb> {
    private final /* synthetic */ String zzerp;
    private final /* synthetic */ zzaif zzgja;

    public zzcgn(zzcgk zzcgkVar, String str, zzaif zzaifVar) {
        this.zzerp = str;
        this.zzgja = zzaifVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(zzbeb zzbebVar) {
        zzbebVar.zzb(this.zzerp, this.zzgja);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
    }
}
