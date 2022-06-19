package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdap.class */
public final /* synthetic */ class zzdap implements Callable {
    private final zzdam zzhal;

    public zzdap(zzdam zzdamVar) {
        this.zzhal = zzdamVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhal.zzasz();
    }
}
