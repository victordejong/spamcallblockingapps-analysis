package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzqw.class */
final class zzqw implements zzrn {
    public final /* synthetic */ zzqz zza;
    private final int zzb;

    public zzqw(zzqz zzqzVar, int i) {
        this.zza = zzqzVar;
        this.zzb = i;
    }

    @Override // com.google.android.gms.internal.ads.zzrn
    public final int zza(zzhr zzhrVar, zzda zzdaVar, int i) {
        return this.zza.zzg(this.zzb, zzhrVar, zzdaVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzrn
    public final int zzb(long j) {
        return this.zza.zzi(this.zzb, j);
    }

    @Override // com.google.android.gms.internal.ads.zzrn
    public final void zzd() throws IOException {
        this.zza.zzF(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzrn
    public final boolean zze() {
        return this.zza.zzM(this.zzb);
    }
}
