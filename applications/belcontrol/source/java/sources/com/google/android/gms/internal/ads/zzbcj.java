package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbcj.class */
public final /* synthetic */ class zzbcj implements Runnable {
    private final Map zzehx;
    private final zzbbo zzeol;

    public zzbcj(zzbbo zzbboVar, Map map) {
        this.zzeol = zzbboVar;
        this.zzehx = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzeol.zza("onGcacheInfoEvent", this.zzehx);
    }
}
