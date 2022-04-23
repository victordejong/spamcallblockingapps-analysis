package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzet.class */
final class zzet implements Runnable {
    private final /* synthetic */ long zzafv;
    private final /* synthetic */ zzeq zzasz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzet(zzeq zzeqVar, long j) {
        this.zzasz = zzeqVar;
        this.zzafv = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzasz.zzal(this.zzafv);
    }
}
