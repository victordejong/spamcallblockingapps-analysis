package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaaf.class */
public final class zzaaf implements Runnable {
    private final /* synthetic */ zzaac zzclm;

    public zzaaf(zzaac zzaacVar) {
        this.zzclm = zzaacVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (zzaac.zza(this.zzclm) != null) {
            try {
                zzaac.zza(this.zzclm).onAdFailedToLoad(1);
            } catch (RemoteException e) {
                zzazk.zzd("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
