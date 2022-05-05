package com.google.android.gms.internal.measurement;

import android.os.Looper;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzca.class */
public final class zzca implements Runnable {
    private final /* synthetic */ zzbz zzyq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzca(zzbz zzbzVar) {
        this.zzyq = zzbzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzaw zzawVar;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            zzawVar = this.zzyq.zzvy;
            zzawVar.zzca().zza(this);
            return;
        }
        boolean zzej = this.zzyq.zzej();
        this.zzyq.zzyp = 0L;
        if (zzej) {
            this.zzyq.run();
        }
    }
}
