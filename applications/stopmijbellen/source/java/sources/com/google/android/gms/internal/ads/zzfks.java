package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfks.class */
public final class zzfks {
    private final zzflz zza;
    private final String zzb;
    private final zzfkg zzc;
    private final String zzd = "Ad overlay";

    public zzfks(View view, zzfkg zzfkgVar, String str) {
        this.zza = new zzflz(view);
        this.zzb = view.getClass().getCanonicalName();
        this.zzc = zzfkgVar;
    }

    public final zzfkg zza() {
        return this.zzc;
    }

    public final zzflz zzb() {
        return this.zza;
    }

    public final String zzc() {
        return this.zzd;
    }

    public final String zzd() {
        return this.zzb;
    }
}
