package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzank.class */
public interface zzank extends IInterface {
    void onAdClicked() throws RemoteException;

    void onAdClosed() throws RemoteException;

    void onAdFailedToLoad(int i) throws RemoteException;

    void onAdImpression() throws RemoteException;

    void onAdLeftApplication() throws RemoteException;

    void onAdLoaded() throws RemoteException;

    void onAdOpened() throws RemoteException;

    void onAppEvent(String str, String str2) throws RemoteException;

    void onVideoEnd() throws RemoteException;

    void onVideoPause() throws RemoteException;

    void onVideoPlay() throws RemoteException;

    void zza(zzafn zzafnVar, String str) throws RemoteException;

    void zza(zzanp zzanpVar) throws RemoteException;

    void zza(zzavl zzavlVar) throws RemoteException;

    void zzb(Bundle bundle) throws RemoteException;

    void zzb(zzavj zzavjVar) throws RemoteException;

    void zzc(int i, String str) throws RemoteException;

    void zzd(zzvg zzvgVar) throws RemoteException;

    void zzdb(int i) throws RemoteException;

    void zzdi(String str) throws RemoteException;

    void zzdj(String str) throws RemoteException;

    void zzf(zzvg zzvgVar) throws RemoteException;

    void zzve() throws RemoteException;

    void zzvf() throws RemoteException;
}
