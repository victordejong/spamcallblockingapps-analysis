package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzep.class */
final class zzep implements Runnable {
    final /* synthetic */ boolean zza;
    final /* synthetic */ zzeq zzb;

    public zzep(zzeq zzeqVar, boolean z) {
        this.zzb = zzeqVar;
        this.zza = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkd zzkdVar;
        zzkdVar = this.zzb.zzb;
        zzkdVar.zzZ(this.zza);
    }
}
