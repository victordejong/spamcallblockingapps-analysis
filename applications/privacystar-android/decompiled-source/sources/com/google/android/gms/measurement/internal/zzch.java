package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzch.class */
final class zzch implements Runnable {
    private final /* synthetic */ zzbv zzaqo;
    private final /* synthetic */ String zzaqq;
    private final /* synthetic */ zzad zzaqr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzch(zzbv zzbvVar, zzad zzadVar, String str) {
        this.zzaqo = zzbvVar;
        this.zzaqr = zzadVar;
        this.zzaqq = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfa zzfaVar;
        zzfa zzfaVar2;
        zzfaVar = this.zzaqo.zzamz;
        zzfaVar.zzly();
        zzfaVar2 = this.zzaqo.zzamz;
        zzfaVar2.zzc(this.zzaqr, this.zzaqq);
    }
}
