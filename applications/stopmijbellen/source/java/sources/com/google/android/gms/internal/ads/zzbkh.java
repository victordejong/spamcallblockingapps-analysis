package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbkh.class */
public final class zzbkh extends zzcey {
    private static void zzr(final zzcfg zzcfgVar) {
        zzciz.zzg("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzcis.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbkg
            @Override // java.lang.Runnable
            public final void run() {
                zzcfg zzcfgVar2 = zzcfg.this;
                if (zzcfgVar2 != null) {
                    try {
                        zzcfgVar2.zze(1);
                    } catch (RemoteException e) {
                        zzciz.zzl("#007 Could not call remote method.", e);
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final Bundle zzb() throws RemoteException {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final zzbiw zzc() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final zzcew zzd() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final String zze() throws RemoteException {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzf(zzbfd zzbfdVar, zzcfg zzcfgVar) throws RemoteException {
        zzr(zzcfgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzg(zzbfd zzbfdVar, zzcfg zzcfgVar) throws RemoteException {
        zzr(zzcfgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzh(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzi(zzbiq zzbiqVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzj(zzbit zzbitVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzk(zzcfc zzcfcVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzl(zzcfn zzcfnVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzm(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzn(IObjectWrapper iObjectWrapper, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final boolean zzo() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzp(zzcfh zzcfhVar) throws RemoteException {
    }
}
