package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdr.class */
final class zzdr implements zzdug {
    private final /* synthetic */ zzdsy zzvm;

    public zzdr(zzdsy zzdsyVar) {
        this.zzvm = zzdsyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdug
    public final void zza(int i, long j) {
        this.zzvm.zzh(i, System.currentTimeMillis() - j);
    }

    @Override // com.google.android.gms.internal.ads.zzdug
    public final void zza(int i, long j, String str) {
        this.zzvm.zzb(i, System.currentTimeMillis() - j, str);
    }
}
