package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbij.class */
public final class zzbij extends zzccr {
    private static void zzr(zzccz zzcczVar) {
        zzcgt.zzf("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzcgm.zza.post(new Runnable(zzcczVar) { // from class: com.google.android.gms.internal.ads.zzbii
            private final zzccz zza;

            {
                this.zza = zzcczVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzccz zzcczVar2 = this.zza;
                if (zzcczVar2 != null) {
                    try {
                        zzcczVar2.zzf(1);
                    } catch (RemoteException e) {
                        zzcgt.zzl("#007 Could not call remote method.", e);
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzb(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzc(zzbdg zzbdgVar, zzccz zzcczVar) throws RemoteException {
        zzr(zzcczVar);
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzd(zzbdg zzbdgVar, zzccz zzcczVar) throws RemoteException {
        zzr(zzcczVar);
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zze(zzccv zzccvVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzf(zzbgt zzbgtVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final Bundle zzg() throws RemoteException {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzh(zzcdg zzcdgVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final boolean zzi() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final String zzj() throws RemoteException {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzk(IObjectWrapper iObjectWrapper, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final zzccp zzl() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final zzbgz zzm() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzn(zzbgw zzbgwVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzo(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzp(zzcda zzcdaVar) throws RemoteException {
    }
}
