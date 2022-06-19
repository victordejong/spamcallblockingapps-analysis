package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdb.class */
public final class zzbdb implements Runnable {
    private final /* synthetic */ zzbdc zzepl;

    public zzbdb(zzbdc zzbdcVar) {
        this.zzepl = zzbdcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzr.zzln().zzb(this.zzepl);
    }
}
