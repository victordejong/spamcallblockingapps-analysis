package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzalu.class */
public final /* synthetic */ class zzalu implements Runnable {
    private final zzalv zzdkj;
    private final zzakm zzdkk;

    public zzalu(zzalv zzalvVar, zzakm zzakmVar) {
        this.zzdkj = zzalvVar;
        this.zzdkk = zzakmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzalv zzalvVar = this.zzdkj;
        zzakm zzakmVar = this.zzdkk;
        zzalq.zza(zzalvVar.zzdkl).zzg(zzakmVar);
        zzakmVar.destroy();
    }
}
