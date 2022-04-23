package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzcn.class */
final class zzcn implements Runnable {
    private final /* synthetic */ String zzaeq;
    private final /* synthetic */ zzbv zzaqo;
    private final /* synthetic */ String zzaqq;
    private final /* synthetic */ String zzaqt;
    private final /* synthetic */ long zzaqu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcn(zzbv zzbvVar, String str, String str2, String str3, long j) {
        this.zzaqo = zzbvVar;
        this.zzaqt = str;
        this.zzaqq = str2;
        this.zzaeq = str3;
        this.zzaqu = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfa zzfaVar;
        zzfa zzfaVar2;
        if (this.zzaqt == null) {
            zzfaVar2 = this.zzaqo.zzamz;
            zzfaVar2.zzmb().zzgh().zza(this.zzaqq, (zzdn) null);
            return;
        }
        zzdn zzdnVar = new zzdn(this.zzaeq, this.zzaqt, this.zzaqu);
        zzfaVar = this.zzaqo.zzamz;
        zzfaVar.zzmb().zzgh().zza(this.zzaqq, zzdnVar);
    }
}
