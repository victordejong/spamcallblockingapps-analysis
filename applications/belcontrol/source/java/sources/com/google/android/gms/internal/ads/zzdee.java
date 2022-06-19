package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdee.class */
public final /* synthetic */ class zzdee implements Callable {
    private final zzdef zzhcm;

    public zzdee(zzdef zzdefVar) {
        this.zzhcm = zzdefVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhcm.zzatk();
    }
}
