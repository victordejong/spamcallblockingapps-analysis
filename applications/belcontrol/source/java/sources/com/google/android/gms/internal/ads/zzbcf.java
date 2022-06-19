package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbcf.class */
public final /* synthetic */ class zzbcf implements Callable {
    private final zzbcg zzenu;

    public zzbcf(zzbcg zzbcgVar) {
        this.zzenu = zzbcgVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzenu.zzach();
    }
}
