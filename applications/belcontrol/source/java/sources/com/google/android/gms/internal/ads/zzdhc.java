package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdhc.class */
public final /* synthetic */ class zzdhc implements Callable {
    private final zzdhd zzheq;

    public zzdhc(zzdhd zzdhdVar) {
        this.zzheq = zzdhdVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        zzdhd zzdhdVar = this.zzheq;
        return new zzdha(zzdhdVar.zzher.zzf(zzdhdVar.zzduo));
    }
}
