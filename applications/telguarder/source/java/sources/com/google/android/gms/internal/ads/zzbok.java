package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbok.class */
public final class zzbok implements zzdzl<zzbnt> {
    private final /* synthetic */ zzdzl zzfwr;
    private final /* synthetic */ zzboe zzfws;

    public zzbok(zzboe zzboeVar, zzdzl zzdzlVar) {
        this.zzfws = zzboeVar;
        this.zzfwr = zzdzlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(zzbnt zzbntVar) {
        this.zzfws.zzaku();
        this.zzfwr.onSuccess(zzbntVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        this.zzfws.zzaku();
        this.zzfwr.zzb(th);
    }
}
