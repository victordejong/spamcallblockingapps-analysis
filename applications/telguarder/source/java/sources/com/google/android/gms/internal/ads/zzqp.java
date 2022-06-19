package com.google.android.gms.internal.ads;

import android.view.Surface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqp.class */
public final class zzqp implements Runnable {
    private final /* synthetic */ zzqj zzbna;
    private final /* synthetic */ Surface zzbnd;

    public zzqp(zzqj zzqjVar, Surface surface) {
        this.zzbna = zzqjVar;
        this.zzbnd = surface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzqk zzqkVar;
        zzqkVar = this.zzbna.zzbmz;
        zzqkVar.zzb(this.zzbnd);
    }
}
