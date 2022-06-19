package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaan.class */
final class zzaan implements Runnable {
    private final /* synthetic */ zzaak zzclr;

    public zzaan(zzaak zzaakVar) {
        this.zzclr = zzaakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzauu zzauuVar;
        zzauu zzauuVar2;
        zzauuVar = this.zzclr.zzclo;
        if (zzauuVar != null) {
            try {
                zzauuVar2 = this.zzclr.zzclo;
                zzauuVar2.onRewardedVideoAdFailedToLoad(1);
            } catch (RemoteException e) {
                zzazk.zzd("Could not notify onRewardedVideoAdFailedToLoad event.", e);
            }
        }
    }
}
