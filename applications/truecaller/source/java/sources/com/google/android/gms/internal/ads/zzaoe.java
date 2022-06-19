package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaoe.class */
public final class zzaoe implements Runnable {
    public final /* synthetic */ zzanm zza;
    public final /* synthetic */ zzaoi zzb;

    public zzaoe(zzaoi zzaoiVar, zzanm zzanmVar) {
        this.zzb = zzaoiVar;
        this.zza = zzanmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzaoj zzaojVar;
        zzaojVar = this.zzb.zzb;
        zzaojVar.zzh(this.zza);
    }
}
