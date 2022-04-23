package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzbx.class */
final class zzbx implements Runnable {
    private final /* synthetic */ zzh zzaqn;
    private final /* synthetic */ zzbv zzaqo;
    private final /* synthetic */ zzl zzaqp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbx(zzbv zzbvVar, zzl zzlVar, zzh zzhVar) {
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
        zzfaVar2.zzc(this.zzaqp, this.zzaqn);
    }
}
