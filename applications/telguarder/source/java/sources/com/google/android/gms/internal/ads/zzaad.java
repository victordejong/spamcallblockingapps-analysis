package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaad.class */
public final class zzaad implements Runnable {
    private final /* synthetic */ zzaaa zzclk;

    public zzaad(zzaaa zzaaaVar) {
        this.zzclk = zzaaaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzwx zzwxVar;
        zzwx zzwxVar2;
        zzwxVar = this.zzclk.zzclj.zzbps;
        if (zzwxVar != null) {
            try {
                zzwxVar2 = this.zzclk.zzclj.zzbps;
                zzwxVar2.onAdFailedToLoad(1);
            } catch (RemoteException e) {
                zzazk.zzd("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
