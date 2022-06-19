package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdgj.class */
public final /* synthetic */ class zzdgj implements Callable {
    private final zzdgg zzhef;

    public zzdgj(zzdgg zzdggVar) {
        this.zzhef = zzdggVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhef.zzatt();
    }
}
