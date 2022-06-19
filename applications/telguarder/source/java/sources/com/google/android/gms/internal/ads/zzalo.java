package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzalo.class */
public final class zzalo implements zzbae<zzalx> {
    private final /* synthetic */ zzalm zzdkf;

    public zzalo(zzalm zzalmVar) {
        this.zzdkf = zzalmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbae
    public final /* synthetic */ void zzg(zzalx zzalxVar) {
        zzalq zzalqVar;
        zzd.zzeb("Releasing engine reference.");
        zzalqVar = this.zzdkf.zzdkd;
        zzalqVar.zzun();
    }
}
