package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbd.class */
final class zzbd implements Runnable {
    private final /* synthetic */ zzcl zzxd;
    private final /* synthetic */ zzbc zzxe;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbd(zzbc zzbcVar, zzcl zzclVar) {
        this.zzxe = zzbcVar;
        this.zzxd = zzclVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.zzxe.zzxa.isConnected()) {
            this.zzxe.zzxa.zzr("Connected to service after a timeout");
            this.zzxe.zzxa.zza(this.zzxd);
        }
    }
}
