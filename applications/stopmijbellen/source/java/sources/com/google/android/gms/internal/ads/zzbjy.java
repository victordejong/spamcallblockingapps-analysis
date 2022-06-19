package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjy.class */
public final class zzbjy extends zzbhc {
    public final /* synthetic */ zzbjz zza;

    @Override // com.google.android.gms.internal.ads.zzbhd
    public final String zze() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhd
    public final String zzf() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhd
    public final void zzg(zzbfd zzbfdVar) throws RemoteException {
        zzh(zzbfdVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzbhd
    public final void zzh(zzbfd zzbfdVar, int i) throws RemoteException {
        zzciz.zzg("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzcis.zza.post(new zzbjw(this));
    }

    @Override // com.google.android.gms.internal.ads.zzbhd
    public final boolean zzi() throws RemoteException {
        return false;
    }
}
