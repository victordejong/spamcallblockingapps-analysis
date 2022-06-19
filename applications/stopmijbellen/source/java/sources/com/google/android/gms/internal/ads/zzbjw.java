package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjw.class */
public final class zzbjw implements Runnable {
    public final /* synthetic */ zzbjy zza;

    public zzbjw(zzbjy zzbjyVar) {
        this.zza = zzbjyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbgx zzbgxVar;
        zzbgx zzbgxVar2;
        zzbgxVar = this.zza.zza.zza;
        if (zzbgxVar != null) {
            try {
                zzbgxVar2 = this.zza.zza.zza;
                zzbgxVar2.zze(1);
            } catch (RemoteException e) {
                zzciz.zzk("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
