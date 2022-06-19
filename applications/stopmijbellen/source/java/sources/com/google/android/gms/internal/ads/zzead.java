package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzead.class */
public final class zzead {
    private final zzbso zza;

    public zzead(zzbso zzbsoVar) {
        this.zza = zzbsoVar;
    }

    private final void zzs(zzeac zzeacVar) throws RemoteException {
        String zza = zzeac.zza(zzeacVar);
        zzciz.zzi(zza.length() != 0 ? "Dispatching AFMA event on publisher webview: ".concat(zza) : new String("Dispatching AFMA event on publisher webview: "));
        this.zza.zzb(zza);
    }

    public final void zza() throws RemoteException {
        zzs(new zzeac("initialize", null));
    }

    public final void zzb(long j) throws RemoteException {
        zzeac zzeacVar = new zzeac("interstitial", null);
        zzeacVar.zza = Long.valueOf(j);
        zzeacVar.zzc = "onAdClicked";
        this.zza.zzb(zzeac.zza(zzeacVar));
    }

    public final void zzc(long j) throws RemoteException {
        zzeac zzeacVar = new zzeac("interstitial", null);
        zzeacVar.zza = Long.valueOf(j);
        zzeacVar.zzc = "onAdClosed";
        zzs(zzeacVar);
    }

    public final void zzd(long j, int i) throws RemoteException {
        zzeac zzeacVar = new zzeac("interstitial", null);
        zzeacVar.zza = Long.valueOf(j);
        zzeacVar.zzc = "onAdFailedToLoad";
        zzeacVar.zzd = Integer.valueOf(i);
        zzs(zzeacVar);
    }

    public final void zze(long j) throws RemoteException {
        zzeac zzeacVar = new zzeac("interstitial", null);
        zzeacVar.zza = Long.valueOf(j);
        zzeacVar.zzc = "onAdLoaded";
        zzs(zzeacVar);
    }

    public final void zzf(long j) throws RemoteException {
        zzeac zzeacVar = new zzeac("interstitial", null);
        zzeacVar.zza = Long.valueOf(j);
        zzeacVar.zzc = "onNativeAdObjectNotAvailable";
        zzs(zzeacVar);
    }

    public final void zzg(long j) throws RemoteException {
        zzeac zzeacVar = new zzeac("interstitial", null);
        zzeacVar.zza = Long.valueOf(j);
        zzeacVar.zzc = "onAdOpened";
        zzs(zzeacVar);
    }

    public final void zzh(long j) throws RemoteException {
        zzeac zzeacVar = new zzeac("creation", null);
        zzeacVar.zza = Long.valueOf(j);
        zzeacVar.zzc = "nativeObjectCreated";
        zzs(zzeacVar);
    }

    public final void zzi(long j) throws RemoteException {
        zzeac zzeacVar = new zzeac("creation", null);
        zzeacVar.zza = Long.valueOf(j);
        zzeacVar.zzc = "nativeObjectNotCreated";
        zzs(zzeacVar);
    }

    public final void zzj(long j) throws RemoteException {
        zzeac zzeacVar = new zzeac("rewarded", null);
        zzeacVar.zza = Long.valueOf(j);
        zzeacVar.zzc = "onAdClicked";
        zzs(zzeacVar);
    }

    public final void zzk(long j) throws RemoteException {
        zzeac zzeacVar = new zzeac("rewarded", null);
        zzeacVar.zza = Long.valueOf(j);
        zzeacVar.zzc = "onRewardedAdClosed";
        zzs(zzeacVar);
    }

    public final void zzl(long j, zzcew zzcewVar) throws RemoteException {
        zzeac zzeacVar = new zzeac("rewarded", null);
        zzeacVar.zza = Long.valueOf(j);
        zzeacVar.zzc = "onUserEarnedReward";
        zzeacVar.zze = zzcewVar.zzf();
        zzeacVar.zzf = Integer.valueOf(zzcewVar.zze());
        zzs(zzeacVar);
    }

    public final void zzm(long j, int i) throws RemoteException {
        zzeac zzeacVar = new zzeac("rewarded", null);
        zzeacVar.zza = Long.valueOf(j);
        zzeacVar.zzc = "onRewardedAdFailedToLoad";
        zzeacVar.zzd = Integer.valueOf(i);
        zzs(zzeacVar);
    }

    public final void zzn(long j, int i) throws RemoteException {
        zzeac zzeacVar = new zzeac("rewarded", null);
        zzeacVar.zza = Long.valueOf(j);
        zzeacVar.zzc = "onRewardedAdFailedToShow";
        zzeacVar.zzd = Integer.valueOf(i);
        zzs(zzeacVar);
    }

    public final void zzo(long j) throws RemoteException {
        zzeac zzeacVar = new zzeac("rewarded", null);
        zzeacVar.zza = Long.valueOf(j);
        zzeacVar.zzc = "onAdImpression";
        zzs(zzeacVar);
    }

    public final void zzp(long j) throws RemoteException {
        zzeac zzeacVar = new zzeac("rewarded", null);
        zzeacVar.zza = Long.valueOf(j);
        zzeacVar.zzc = "onRewardedAdLoaded";
        zzs(zzeacVar);
    }

    public final void zzq(long j) throws RemoteException {
        zzeac zzeacVar = new zzeac("rewarded", null);
        zzeacVar.zza = Long.valueOf(j);
        zzeacVar.zzc = "onNativeAdObjectNotAvailable";
        zzs(zzeacVar);
    }

    public final void zzr(long j) throws RemoteException {
        zzeac zzeacVar = new zzeac("rewarded", null);
        zzeacVar.zza = Long.valueOf(j);
        zzeacVar.zzc = "onRewardedAdOpened";
        zzs(zzeacVar);
    }
}
