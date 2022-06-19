package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdca.class */
public final /* synthetic */ class zzdca implements Callable {
    private final zzdcb zzhbi;

    public zzdca(zzdcb zzdcbVar) {
        this.zzhbi = zzdcbVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhbi.zzatd();
    }
}
