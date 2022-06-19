package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyr.class */
final class zzyr extends zzxe {
    private final long zza;

    public zzyr(zzwq zzwqVar, long j) {
        super(zzwqVar);
        zzdy.zzd(zzwqVar.zze() >= j);
        this.zza = j;
    }

    @Override // com.google.android.gms.internal.ads.zzxe, com.google.android.gms.internal.ads.zzwq
    public final long zzc() {
        return super.zzc() - this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzxe, com.google.android.gms.internal.ads.zzwq
    public final long zzd() {
        return super.zzd() - this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzxe, com.google.android.gms.internal.ads.zzwq
    public final long zze() {
        return super.zze() - this.zza;
    }
}
