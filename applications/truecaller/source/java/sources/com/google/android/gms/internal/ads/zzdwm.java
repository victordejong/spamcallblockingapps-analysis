package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdwm.class */
public final class zzdwm {
    private final zzbqm zza;

    public zzdwm(zzbqm zzbqmVar) {
        this.zza = zzbqmVar;
    }

    private final void zzs(zzdwk zzdwkVar) throws RemoteException {
        String zzf = zzdwk.zzf(zzdwkVar);
        zzcgt.zzh(zzf.length() != 0 ? "Dispatching AFMA event on publisher webview: ".concat(zzf) : new String("Dispatching AFMA event on publisher webview: "));
        this.zza.zzb(zzf);
    }

    public final void zza() throws RemoteException {
        zzs(new zzdwk("initialize", null));
    }

    public final void zzb(long j) throws RemoteException {
        zzdwk zzdwkVar = new zzdwk("creation", null);
        zzdwkVar.zza = Long.valueOf(j);
        zzdwkVar.zzc = "nativeObjectCreated";
        zzs(zzdwkVar);
    }

    public final void zzc(long j) throws RemoteException {
        zzdwk zzdwkVar = new zzdwk("creation", null);
        zzdwkVar.zza = Long.valueOf(j);
        zzdwkVar.zzc = "nativeObjectNotCreated";
        zzs(zzdwkVar);
    }

    public final void zzd(long j) throws RemoteException {
        zzdwk zzdwkVar = new zzdwk("interstitial", null);
        zzdwkVar.zza = Long.valueOf(j);
        zzdwkVar.zzc = "onNativeAdObjectNotAvailable";
        zzs(zzdwkVar);
    }

    public final void zze(long j) throws RemoteException {
        zzdwk zzdwkVar = new zzdwk("interstitial", null);
        zzdwkVar.zza = Long.valueOf(j);
        zzdwkVar.zzc = "onAdLoaded";
        zzs(zzdwkVar);
    }

    public final void zzf(long j, int i) throws RemoteException {
        zzdwk zzdwkVar = new zzdwk("interstitial", null);
        zzdwkVar.zza = Long.valueOf(j);
        zzdwkVar.zzc = "onAdFailedToLoad";
        zzdwkVar.zzd = Integer.valueOf(i);
        zzs(zzdwkVar);
    }

    public final void zzg(long j) throws RemoteException {
        zzdwk zzdwkVar = new zzdwk("interstitial", null);
        zzdwkVar.zza = Long.valueOf(j);
        zzdwkVar.zzc = "onAdOpened";
        zzs(zzdwkVar);
    }

    public final void zzh(long j) throws RemoteException {
        zzdwk zzdwkVar = new zzdwk("interstitial", null);
        zzdwkVar.zza = Long.valueOf(j);
        zzdwkVar.zzc = "onAdClicked";
        this.zza.zzb(zzdwk.zzf(zzdwkVar));
    }

    public final void zzi(long j) throws RemoteException {
        zzdwk zzdwkVar = new zzdwk("interstitial", null);
        zzdwkVar.zza = Long.valueOf(j);
        zzdwkVar.zzc = "onAdClosed";
        zzs(zzdwkVar);
    }

    public final void zzj(long j) throws RemoteException {
        zzdwk zzdwkVar = new zzdwk("rewarded", null);
        zzdwkVar.zza = Long.valueOf(j);
        zzdwkVar.zzc = "onNativeAdObjectNotAvailable";
        zzs(zzdwkVar);
    }

    public final void zzk(long j) throws RemoteException {
        zzdwk zzdwkVar = new zzdwk("rewarded", null);
        zzdwkVar.zza = Long.valueOf(j);
        zzdwkVar.zzc = "onRewardedAdLoaded";
        zzs(zzdwkVar);
    }

    public final void zzl(long j, int i) throws RemoteException {
        zzdwk zzdwkVar = new zzdwk("rewarded", null);
        zzdwkVar.zza = Long.valueOf(j);
        zzdwkVar.zzc = "onRewardedAdFailedToLoad";
        zzdwkVar.zzd = Integer.valueOf(i);
        zzs(zzdwkVar);
    }

    public final void zzm(long j) throws RemoteException {
        zzdwk zzdwkVar = new zzdwk("rewarded", null);
        zzdwkVar.zza = Long.valueOf(j);
        zzdwkVar.zzc = "onRewardedAdOpened";
        zzs(zzdwkVar);
    }

    public final void zzn(long j, int i) throws RemoteException {
        zzdwk zzdwkVar = new zzdwk("rewarded", null);
        zzdwkVar.zza = Long.valueOf(j);
        zzdwkVar.zzc = "onRewardedAdFailedToShow";
        zzdwkVar.zzd = Integer.valueOf(i);
        zzs(zzdwkVar);
    }

    public final void zzo(long j) throws RemoteException {
        zzdwk zzdwkVar = new zzdwk("rewarded", null);
        zzdwkVar.zza = Long.valueOf(j);
        zzdwkVar.zzc = "onRewardedAdClosed";
        zzs(zzdwkVar);
    }

    public final void zzp(long j, zzccp zzccpVar) throws RemoteException {
        zzdwk zzdwkVar = new zzdwk("rewarded", null);
        zzdwkVar.zza = Long.valueOf(j);
        zzdwkVar.zzc = "onUserEarnedReward";
        zzdwkVar.zze = zzccpVar.zze();
        zzdwkVar.zzf = Integer.valueOf(zzccpVar.zzf());
        zzs(zzdwkVar);
    }

    public final void zzq(long j) throws RemoteException {
        zzdwk zzdwkVar = new zzdwk("rewarded", null);
        zzdwkVar.zza = Long.valueOf(j);
        zzdwkVar.zzc = "onAdImpression";
        zzs(zzdwkVar);
    }

    public final void zzr(long j) throws RemoteException {
        zzdwk zzdwkVar = new zzdwk("rewarded", null);
        zzdwkVar.zza = Long.valueOf(j);
        zzdwkVar.zzc = "onAdClicked";
        zzs(zzdwkVar);
    }
}
