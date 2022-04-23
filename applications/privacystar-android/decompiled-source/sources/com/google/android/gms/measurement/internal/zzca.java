package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzca.class */
final class zzca implements Runnable {
    private final /* synthetic */ zzbv zzaqo;
    private final /* synthetic */ zzl zzaqp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzca(zzbv zzbvVar, zzl zzlVar) {
        this.zzaqo = zzbvVar;
        this.zzaqp = zzlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfa zzfaVar;
        zzfa zzfaVar2;
        zzfaVar = this.zzaqo.zzamz;
        zzfaVar.zzly();
        zzfaVar2 = this.zzaqo.zzamz;
        zzfaVar2.zze(this.zzaqp);
    }
}
