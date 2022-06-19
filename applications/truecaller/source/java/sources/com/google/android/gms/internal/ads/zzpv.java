package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzpv.class */
public final class zzpv extends zzoi {
    private final long zza;

    public zzpv(zznv zznvVar, long j) {
        super(zznvVar);
        zzakt.zza(zznvVar.zzn() >= j);
        this.zza = j;
    }

    @Override // com.google.android.gms.internal.ads.zzoi, com.google.android.gms.internal.ads.zznv
    public final long zzm() {
        return super.zzm() - this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzoi, com.google.android.gms.internal.ads.zznv
    public final long zzn() {
        return super.zzn() - this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzoi, com.google.android.gms.internal.ads.zznv
    public final long zzo() {
        return super.zzo() - this.zza;
    }
}
