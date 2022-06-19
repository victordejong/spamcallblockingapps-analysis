package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdbn.class */
public final /* synthetic */ class zzdbn implements Callable {
    private final zzdbk zzhbb;

    public zzdbn(zzdbk zzdbkVar) {
        this.zzhbb = zzdbkVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhbb.zzatb();
    }
}
