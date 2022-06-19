package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhz.class */
public final class zzbhz implements Runnable {
    public final /* synthetic */ zzbia zza;

    public zzbhz(zzbia zzbiaVar) {
        this.zza = zzbiaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbfa zzbfaVar;
        zzbfa zzbfaVar2;
        zzbfaVar = this.zza.zza.zza;
        if (zzbfaVar != null) {
            try {
                zzbfaVar2 = this.zza.zza.zza;
                zzbfaVar2.zzc(1);
            } catch (RemoteException e) {
                zzcgt.zzj("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
