package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzddr.class */
public final /* synthetic */ class zzddr implements Callable {
    private final zzddo zzhch;

    public zzddr(zzddo zzddoVar) {
        this.zzhch = zzddoVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhch.zzati();
    }
}
