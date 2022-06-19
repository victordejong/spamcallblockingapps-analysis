package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbey.class */
public final /* synthetic */ class zzbey implements Runnable {
    private final Map zzehx;
    private final zzbev zzeug;

    public zzbey(zzbev zzbevVar, Map map) {
        this.zzeug = zzbevVar;
        this.zzehx = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzeug.zzl(this.zzehx);
    }
}
