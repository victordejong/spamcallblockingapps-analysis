package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzauh.class */
final class zzauh implements zzauy {
    public final /* synthetic */ zzaui zza;
    private final int zzb;

    public zzauh(zzaui zzauiVar, int i) {
        this.zza = zzauiVar;
        this.zzb = i;
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    public final int zzb(zzaph zzaphVar, zzarb zzarbVar, boolean z) {
        return this.zza.zze(this.zzb, zzaphVar, zzarbVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    public final void zzc() throws IOException {
        this.zza.zzr();
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    public final void zzd(long j) {
        this.zza.zzy(this.zzb, j);
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    public final boolean zze() {
        return this.zza.zzA(this.zzb);
    }
}
