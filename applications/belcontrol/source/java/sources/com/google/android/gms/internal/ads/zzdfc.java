package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdfc.class */
public final /* synthetic */ class zzdfc implements Callable {
    private final zzdfd zzhdf;

    public zzdfc(zzdfd zzdfdVar) {
        this.zzhdf = zzdfdVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhdf.zzatp();
    }
}
