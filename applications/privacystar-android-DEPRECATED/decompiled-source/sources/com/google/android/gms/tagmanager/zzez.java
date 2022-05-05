package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zzrq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzez.class */
final class zzez implements Runnable {
    private final /* synthetic */ zzex zzben;
    private final /* synthetic */ zzrq zzbeo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzez(zzex zzexVar, zzrq zzrqVar) {
        this.zzben = zzexVar;
        this.zzbeo = zzrqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzben.zzb(this.zzbeo);
    }
}
