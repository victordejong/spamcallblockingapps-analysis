package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzcg.class */
final class zzcg implements Runnable {
    private final /* synthetic */ zzh zzaqn;
    private final /* synthetic */ zzbv zzaqo;
    private final /* synthetic */ zzad zzaqr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcg(zzbv zzbvVar, zzad zzadVar, zzh zzhVar) {
        this.zzaqo = zzbvVar;
        this.zzaqr = zzadVar;
        this.zzaqn = zzhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfa zzfaVar;
        zzfa zzfaVar2;
        zzad zzb = this.zzaqo.zzb(this.zzaqr, this.zzaqn);
        zzfaVar = this.zzaqo.zzamz;
        zzfaVar.zzly();
        zzfaVar2 = this.zzaqo.zzamz;
        zzfaVar2.zzc(zzb, this.zzaqn);
    }
}
