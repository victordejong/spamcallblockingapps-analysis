package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdcr.class */
public final /* synthetic */ class zzdcr implements Callable {
    private final zzdco zzhbv;

    public zzdcr(zzdco zzdcoVar) {
        this.zzhbv = zzdcoVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhbv.zzatf();
    }
}
