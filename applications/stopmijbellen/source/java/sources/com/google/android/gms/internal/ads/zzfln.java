package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfln.class */
public final class zzfln implements Runnable {
    public final /* synthetic */ zzfls zza;

    public zzfln(zzfls zzflsVar) {
        this.zza = zzflsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzflm zzflmVar;
        zzflmVar = this.zza.zzj;
        zzflmVar.zzb();
    }
}
