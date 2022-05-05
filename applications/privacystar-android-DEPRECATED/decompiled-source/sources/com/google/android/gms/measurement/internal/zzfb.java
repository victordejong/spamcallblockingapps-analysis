package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfb.class */
public final class zzfb implements Runnable {
    private final /* synthetic */ zzff zzatx;
    private final /* synthetic */ zzfa zzaty;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfb(zzfa zzfaVar, zzff zzffVar) {
        this.zzaty = zzfaVar;
        this.zzatx = zzffVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzaty.zza(this.zzatx);
        this.zzaty.start();
    }
}
