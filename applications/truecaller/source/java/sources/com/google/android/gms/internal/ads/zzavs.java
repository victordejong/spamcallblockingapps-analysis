package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzavs.class */
public final class zzavs implements Runnable {
    public final /* synthetic */ zzanm zza;
    public final /* synthetic */ zzavx zzb;

    public zzavs(zzavx zzavxVar, zzanm zzanmVar) {
        this.zzb = zzavxVar;
        this.zza = zzanmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzavy zzavyVar;
        zzavyVar = this.zzb.zzb;
        zzavyVar.zzl(this.zza);
    }
}
