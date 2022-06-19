package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyo.class */
final class zzbyo implements Runnable {
    public final /* synthetic */ zzbyx zza;

    public zzbyo(zzbyx zzbyxVar) {
        this.zza = zzbyxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbxn zzbxnVar;
        try {
            zzbxnVar = this.zza.zza;
            zzbxnVar.zze();
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }
}
