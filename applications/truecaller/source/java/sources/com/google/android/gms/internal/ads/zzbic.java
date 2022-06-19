package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbic.class */
public final class zzbic implements Runnable {
    public final /* synthetic */ zzbid zza;

    public zzbic(zzbid zzbidVar) {
        this.zza = zzbidVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbfa zzbfaVar;
        zzbfa zzbfaVar2;
        zzbfaVar = this.zza.zza;
        if (zzbfaVar != null) {
            try {
                zzbfaVar2 = this.zza.zza;
                zzbfaVar2.zzc(1);
            } catch (RemoteException e) {
                zzcgt.zzj("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
