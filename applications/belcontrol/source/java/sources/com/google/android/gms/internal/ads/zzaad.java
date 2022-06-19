package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaad.class */
public final class zzaad implements Runnable {
    private final /* synthetic */ zzaaa zzclk;

    public zzaad(zzaaa zzaaaVar) {
        this.zzclk = zzaaaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (zzzy.zza(this.zzclk.zzclj) != null) {
            try {
                zzzy.zza(this.zzclk.zzclj).onAdFailedToLoad(1);
            } catch (RemoteException e) {
                zzazk.zzd("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
