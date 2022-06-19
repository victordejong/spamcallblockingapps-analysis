package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzddf.class */
public final /* synthetic */ class zzddf implements Callable {
    private final zzddc zzhce;

    public zzddf(zzddc zzddcVar) {
        this.zzhce = zzddcVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhce.zzatg();
    }
}
