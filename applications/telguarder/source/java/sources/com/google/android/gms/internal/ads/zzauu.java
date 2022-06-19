package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzauu.class */
public interface zzauu extends IInterface {
    void onRewardedVideoAdClosed() throws RemoteException;

    void onRewardedVideoAdFailedToLoad(int i) throws RemoteException;

    void onRewardedVideoAdLeftApplication() throws RemoteException;

    void onRewardedVideoAdLoaded() throws RemoteException;

    void onRewardedVideoAdOpened() throws RemoteException;

    void onRewardedVideoCompleted() throws RemoteException;

    void onRewardedVideoStarted() throws RemoteException;

    void zza(zzauk zzaukVar) throws RemoteException;
}
