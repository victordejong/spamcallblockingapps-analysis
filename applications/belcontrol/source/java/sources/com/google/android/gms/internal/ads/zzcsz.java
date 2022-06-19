package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcsz.class */
public final /* synthetic */ class zzcsz implements Callable {
    private final zzdmw zzfva;
    private final zzdnl zzghw;
    private final zzcta zzgub;

    public zzcsz(zzcta zzctaVar, zzdnl zzdnlVar, zzdmw zzdmwVar) {
        this.zzgub = zzctaVar;
        this.zzghw = zzdnlVar;
        this.zzfva = zzdmwVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzgub.zzc(this.zzghw, this.zzfva);
    }
}
