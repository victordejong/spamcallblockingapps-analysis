package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzid.class */
public final class zzid implements zziu {
    public final /* synthetic */ zzig zza;
    private final int zzb;

    public zzid(zzig zzigVar, int i) {
        this.zza = zzigVar;
        this.zzb = i;
    }

    @Override // com.google.android.gms.internal.ads.zziu
    public final boolean zzb() {
        return this.zza.zzw(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zziu
    public final void zzc() throws IOException {
        this.zza.zzx(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zziu
    public final int zzd(zzafw zzafwVar, zzaf zzafVar, int i) {
        return this.zza.zzz(this.zzb, zzafwVar, zzafVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zziu
    public final int zze(long j) {
        return this.zza.zzA(this.zzb, j);
    }
}
