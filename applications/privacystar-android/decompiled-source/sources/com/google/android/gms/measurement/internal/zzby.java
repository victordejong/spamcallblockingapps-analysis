package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzby.class */
final class zzby implements Runnable {
    private final /* synthetic */ zzh zzaqn;
    private final /* synthetic */ zzbv zzaqo;
    private final /* synthetic */ zzl zzaqp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzby(zzbv zzbvVar, zzl zzlVar, zzh zzhVar) {
        this.zzaqo = zzbvVar;
        this.zzaqp = zzlVar;
        this.zzaqn = zzhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfa zzfaVar;
        zzfa zzfaVar2;
        zzfaVar = this.zzaqo.zzamz;
        zzfaVar.zzly();
        zzfaVar2 = this.zzaqo.zzamz;
        zzfaVar2.zzb(this.zzaqp, this.zzaqn);
    }
}
