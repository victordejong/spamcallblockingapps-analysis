package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzqm.class */
final class zzqm implements zzrn {
    private final zzrn zza;
    private final long zzb;

    public zzqm(zzrn zzrnVar, long j) {
        this.zza = zzrnVar;
        this.zzb = j;
    }

    @Override // com.google.android.gms.internal.ads.zzrn
    public final int zza(zzhr zzhrVar, zzda zzdaVar, int i) {
        int zza = this.zza.zza(zzhrVar, zzdaVar, i);
        if (zza == -4) {
            zzdaVar.zzd = Math.max(0L, zzdaVar.zzd + this.zzb);
            return -4;
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzrn
    public final int zzb(long j) {
        return this.zza.zzb(j - this.zzb);
    }

    public final zzrn zzc() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzrn
    public final void zzd() throws IOException {
        this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzrn
    public final boolean zze() {
        return this.zza.zze();
    }
}
