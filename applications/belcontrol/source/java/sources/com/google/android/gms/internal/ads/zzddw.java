package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzddw.class */
public final /* synthetic */ class zzddw implements Callable {
    private final zzddx zzhck;

    public zzddw(zzddx zzddxVar) {
        this.zzhck = zzddxVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhck.zzatj();
    }
}
