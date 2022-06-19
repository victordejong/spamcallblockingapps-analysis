package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfgu.class */
public final class zzfgu {
    private final zzfib zza;
    private final String zzb;
    private final zzfgi zzc;
    private final String zzd = "Ad overlay";

    public zzfgu(View view, zzfgi zzfgiVar, String str) {
        this.zza = new zzfib(view);
        this.zzb = view.getClass().getCanonicalName();
        this.zzc = zzfgiVar;
    }

    public final zzfib zza() {
        return this.zza;
    }

    public final String zzb() {
        return this.zzb;
    }

    public final zzfgi zzc() {
        return this.zzc;
    }

    public final String zzd() {
        return this.zzd;
    }
}
