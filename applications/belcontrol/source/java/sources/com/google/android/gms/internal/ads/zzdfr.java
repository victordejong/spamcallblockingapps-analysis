package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdfr.class */
public final /* synthetic */ class zzdfr implements Callable {
    private final zzdfo zzhdt;

    public zzdfr(zzdfo zzdfoVar) {
        this.zzhdt = zzdfoVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhdt.zzatr();
    }
}
