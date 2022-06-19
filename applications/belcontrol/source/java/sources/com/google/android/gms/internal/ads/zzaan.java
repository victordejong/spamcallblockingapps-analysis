package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaan.class */
public final class zzaan implements Runnable {
    private final /* synthetic */ zzaak zzclr;

    public zzaan(zzaak zzaakVar) {
        this.zzclr = zzaakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (zzaak.zza(this.zzclr) != null) {
            try {
                zzaak.zza(this.zzclr).onRewardedVideoAdFailedToLoad(1);
            } catch (RemoteException e) {
                zzazk.zzd("Could not notify onRewardedVideoAdFailedToLoad event.", e);
            }
        }
    }
}
