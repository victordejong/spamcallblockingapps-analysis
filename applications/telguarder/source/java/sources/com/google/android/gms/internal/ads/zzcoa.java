package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcoa.class */
public final class zzcoa implements zzdzl<zzdnl> {
    private final /* synthetic */ zzcny zzgpf;

    public zzcoa(zzcny zzcnyVar) {
        this.zzgpf = zzcnyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(zzdnl zzdnlVar) {
        zzbtz zzbtzVar;
        zzbtzVar = this.zzgpf.zzgpe;
        zzbtzVar.zzb(zzdnlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
    }
}
