package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdew.class */
public final /* synthetic */ class zzdew implements Callable {
    private final zzdex zzhdc;

    public zzdew(zzdex zzdexVar) {
        this.zzhdc = zzdexVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhdc.zzato();
    }
}
