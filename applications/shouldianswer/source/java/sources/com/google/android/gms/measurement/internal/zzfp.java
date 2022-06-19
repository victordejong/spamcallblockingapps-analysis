package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfp.class */
public final class zzfp implements Runnable {
    private final /* synthetic */ zzga zza;
    private final /* synthetic */ zzew zzb;

    public zzfp(zzfq zzfqVar, zzga zzgaVar, zzew zzewVar) {
        this.zza = zzgaVar;
        this.zzb = zzewVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zza.zzf() == null) {
            this.zzb.zzf().zza("Install Referrer Reporter is null");
            return;
        }
        zzfl zzf = this.zza.zzf();
        zzf.zza.zzad();
        zzf.zza(zzf.zza.zzn().getPackageName());
    }
}
