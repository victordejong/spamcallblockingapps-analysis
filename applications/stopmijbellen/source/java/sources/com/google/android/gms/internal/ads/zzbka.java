package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbka.class */
final class zzbka implements Runnable {
    public final /* synthetic */ zzbkb zza;

    public zzbka(zzbkb zzbkbVar) {
        this.zza = zzbkbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbgx zzbgxVar;
        zzbgx zzbgxVar2;
        zzbgxVar = this.zza.zza;
        if (zzbgxVar != null) {
            try {
                zzbgxVar2 = this.zza.zza;
                zzbgxVar2.zze(1);
            } catch (RemoteException e) {
                zzciz.zzk("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
