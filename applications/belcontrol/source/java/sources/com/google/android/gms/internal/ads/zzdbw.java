package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdbw.class */
public final /* synthetic */ class zzdbw implements Callable {
    private final zzdbx zzhbh;

    public zzdbw(zzdbx zzdbxVar) {
        this.zzhbh = zzdbxVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhbh.zzatc();
    }
}
