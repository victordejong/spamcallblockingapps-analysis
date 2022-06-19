package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqa.class */
public final class zzaqa implements Runnable {
    public final /* synthetic */ zzara zza;
    public final /* synthetic */ zzaqc zzb;

    public zzaqa(zzaqc zzaqcVar, zzara zzaraVar) {
        this.zzb = zzaqcVar;
        this.zza = zzaraVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zza();
    }
}
