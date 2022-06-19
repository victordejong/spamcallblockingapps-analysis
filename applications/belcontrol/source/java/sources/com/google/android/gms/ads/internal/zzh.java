package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.zzds;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzh.class */
public final class zzh implements Runnable {
    private final /* synthetic */ boolean zzbpc;
    private final /* synthetic */ zzf zzbpd;

    public zzh(zzf zzfVar, boolean z) {
        this.zzbpd = zzfVar;
        this.zzbpc = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            String str = zzf.zzb(this.zzbpd).zzbrp;
            zzf zzfVar = this.zzbpd;
            zzds.zza(str, zzf.zza(zzfVar, zzf.zzc(zzfVar)), this.zzbpc).zzbt();
        } catch (NullPointerException e) {
            zzf.zza(this.zzbpd).zza(2027, System.currentTimeMillis() - currentTimeMillis, e);
        }
    }
}
