package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbeg.class */
public final /* synthetic */ class zzbeg implements Runnable {
    private final String zzdlh;

    public zzbeg(String str) {
        this.zzdlh = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzr.zzkv().zzxm().zzcr(this.zzdlh.substring(1));
    }
}
