package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzalj.class */
final class zzalj implements zzfnk {
    public final /* synthetic */ zzfmh zza;

    public zzalj(zzfmh zzfmhVar) {
        this.zza = zzfmhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zza(int i, long j) {
        this.zza.zzd(i, System.currentTimeMillis() - j);
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zzb(int i, long j, String str) {
        this.zza.zze(i, System.currentTimeMillis() - j, str);
    }
}
