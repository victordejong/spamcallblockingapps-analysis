package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaaf.class */
final class zzaaf implements Runnable {
    private final /* synthetic */ zzaac zzclm;

    public zzaaf(zzaac zzaacVar) {
        this.zzclm = zzaacVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzwx zzwxVar;
        zzwx zzwxVar2;
        zzwxVar = this.zzclm.zzbps;
        if (zzwxVar != null) {
            try {
                zzwxVar2 = this.zzclm.zzbps;
                zzwxVar2.onAdFailedToLoad(1);
            } catch (RemoteException e) {
                zzazk.zzd("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
