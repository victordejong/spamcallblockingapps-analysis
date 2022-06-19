package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzboh.class */
public final class zzboh implements zzdzl<zzbnz> {
    private final /* synthetic */ zzdzl zzfwr;
    private final /* synthetic */ zzboe zzfws;

    public zzboh(zzboe zzboeVar, zzdzl zzdzlVar) {
        this.zzfws = zzboeVar;
        this.zzfwr = zzdzlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(zzbnz zzbnzVar) {
        this.zzfws.zza(zzbnzVar.zzfwk, this.zzfwr);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        this.zzfwr.zzb(th);
        this.zzfws.zzaku();
    }
}
