package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzic.class */
public final class zzic implements zzhy {
    public final zzpv zza;
    public int zzd;
    public boolean zze;
    public final List<zzpz> zzc = new ArrayList();
    public final Object zzb = new Object();

    public zzic(zzqb zzqbVar, boolean z) {
        this.zza = new zzpv(zzqbVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final zzcd zza() {
        return this.zza.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final Object zzb() {
        return this.zzb;
    }

    public final void zzc(int i) {
        this.zzd = i;
        this.zze = false;
        this.zzc.clear();
    }
}
