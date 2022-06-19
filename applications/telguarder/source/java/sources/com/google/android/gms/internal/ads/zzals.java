package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzals.class */
public final class zzals implements zzbac {
    private final /* synthetic */ zzalm zzdki;

    public zzals(zzalq zzalqVar, zzalm zzalmVar) {
        this.zzdki = zzalmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbac
    public final void run() {
        zzd.zzeb("Rejecting reference for JS Engine.");
        this.zzdki.reject();
    }
}
