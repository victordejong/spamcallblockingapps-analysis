package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaou.class */
public final class zzaou implements Runnable {
    private final /* synthetic */ zzaol zzdoh;

    public zzaou(zzaol zzaolVar) {
        this.zzdoh = zzaolVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            zzaol.zza(this.zzdoh).onAdLeftApplication();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }
}
