package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaal.class */
public final /* synthetic */ class zzaal implements Runnable {
    private final zzavu zzclp;

    public zzaal(zzavu zzavuVar) {
        this.zzclp = zzavuVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzavu zzavuVar = this.zzclp;
        if (zzavuVar != null) {
            try {
                zzavuVar.onRewardedAdFailedToLoad(1);
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
            }
        }
    }
}
