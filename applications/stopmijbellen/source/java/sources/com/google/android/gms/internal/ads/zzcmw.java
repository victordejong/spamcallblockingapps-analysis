package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmw.class */
final class zzcmw implements Runnable {
    public final /* synthetic */ zzcmx zza;

    public zzcmw(zzcmx zzcmxVar) {
        this.zza = zzcmxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzt.zzy().zzc(this.zza);
    }
}
