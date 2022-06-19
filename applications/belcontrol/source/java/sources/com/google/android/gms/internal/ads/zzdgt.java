package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdgt.class */
public final /* synthetic */ class zzdgt implements Callable {
    private final zzdgq zzhek;

    public zzdgt(zzdgq zzdgqVar) {
        this.zzhek = zzdgqVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        zzdgq zzdgqVar = this.zzhek;
        return new zzdgr(zzdgqVar.zzhei.zzf(zzdgqVar.context));
    }
}
