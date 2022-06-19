package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzet.class */
final class zzet implements Runnable {
    public final /* synthetic */ boolean zza;
    public final /* synthetic */ zzeu zzb;

    public zzet(zzeu zzeuVar, boolean z) {
        this.zzb = zzeuVar;
        this.zza = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkn zzknVar;
        zzknVar = this.zzb.zzb;
        zzknVar.zzV(this.zza);
    }
}
