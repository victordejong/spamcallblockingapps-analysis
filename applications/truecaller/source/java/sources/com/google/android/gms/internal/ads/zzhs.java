package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzhs.class */
public final class zzhs implements zziu {
    private final zziu zza;
    private final long zzb;

    public zzhs(zziu zziuVar, long j) {
        this.zza = zziuVar;
        this.zzb = j;
    }

    public final zziu zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zziu
    public final boolean zzb() {
        return this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zziu
    public final void zzc() throws IOException {
        this.zza.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zziu
    public final int zzd(zzafw zzafwVar, zzaf zzafVar, int i) {
        int zzd = this.zza.zzd(zzafwVar, zzafVar, i);
        if (zzd == -4) {
            zzafVar.zzd = Math.max(0L, zzafVar.zzd + this.zzb);
            return -4;
        }
        return zzd;
    }

    @Override // com.google.android.gms.internal.ads.zziu
    public final int zze(long j) {
        return this.zza.zze(j - this.zzb);
    }
}
