package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdfv.class */
public final /* synthetic */ class zzdfv implements Callable {
    private final zzdfs zzhdu;

    public zzdfv(zzdfs zzdfsVar) {
        this.zzhdu = zzdfsVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhdu.zzats();
    }
}
