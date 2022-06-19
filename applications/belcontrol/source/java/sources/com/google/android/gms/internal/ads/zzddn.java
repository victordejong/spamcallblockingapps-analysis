package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzddn.class */
public final /* synthetic */ class zzddn implements Callable {
    private final zzddk zzhcf;

    public zzddn(zzddk zzddkVar) {
        this.zzhcf = zzddkVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhcf.zzath();
    }
}
