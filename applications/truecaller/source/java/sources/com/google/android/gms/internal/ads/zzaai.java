package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaai.class */
public final class zzaai implements zzfjl {
    public final /* synthetic */ zzfii zza;

    public zzaai(zzfii zzfiiVar) {
        this.zza = zzfiiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfjl
    public final void zza(int i, long j) {
        this.zza.zzb(i, System.currentTimeMillis() - j);
    }

    @Override // com.google.android.gms.internal.ads.zzfjl
    public final void zzb(int i, long j, String str) {
        this.zza.zzf(i, System.currentTimeMillis() - j, str);
    }
}
