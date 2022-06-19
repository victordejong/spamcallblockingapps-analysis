package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfd.class */
public final class zzfd implements Runnable {
    private final /* synthetic */ int zzzm;
    private final /* synthetic */ boolean zzzn;
    private final /* synthetic */ zzfc zzzo;

    public zzfd(zzfc zzfcVar, int i, boolean z) {
        this.zzzo = zzfcVar;
        this.zzzm = i;
        this.zzzn = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zza;
        zzcf.zza zzb = this.zzzo.zzb(this.zzzm, this.zzzn);
        this.zzzo.zzzf = zzb;
        zza = zzfc.zza(this.zzzm, zzb);
        if (zza) {
            this.zzzo.zza(this.zzzm + 1, this.zzzn);
        }
    }
}
