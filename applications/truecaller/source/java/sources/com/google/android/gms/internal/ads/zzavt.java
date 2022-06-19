package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzavt.class */
public final class zzavt implements Runnable {
    public final /* synthetic */ int zza;
    public final /* synthetic */ long zzb;
    public final /* synthetic */ zzavx zzc;

    public zzavt(zzavx zzavxVar, int i, long j) {
        this.zzc = zzavxVar;
        this.zza = i;
        this.zzb = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzavy zzavyVar;
        zzavyVar = this.zzc.zzb;
        zzavyVar.zzm(this.zza, this.zzb);
    }
}
