package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzask.class */
public final class zzask implements zzatb {
    public final /* synthetic */ zzasl zza;
    private final int zzb;

    public zzask(zzasl zzaslVar, int i) {
        this.zza = zzaslVar;
        this.zzb = i;
    }

    @Override // com.google.android.gms.internal.ads.zzatb
    public final boolean zzb() {
        return this.zza.zzs(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzatb
    public final void zzc() throws IOException {
        this.zza.zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzatb
    public final int zzd(zzann zzannVar, zzapg zzapgVar, boolean z) {
        return this.zza.zzu(this.zzb, zzannVar, zzapgVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzatb
    public final void zze(long j) {
        this.zza.zzv(this.zzb, j);
    }
}
