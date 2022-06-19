package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaoq.class */
final class zzaoq implements Runnable {
    private final /* synthetic */ zzaol zzdoh;

    public zzaoq(zzaol zzaolVar) {
        this.zzdoh = zzaolVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzank zzankVar;
        try {
            zzankVar = this.zzdoh.zzdnw;
            zzankVar.onAdOpened();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }
}
