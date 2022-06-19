package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzavr.class */
public interface zzavr extends IInterface {
    void onRewardedAdClosed() throws RemoteException;

    void onRewardedAdFailedToShow(int i) throws RemoteException;

    void onRewardedAdOpened() throws RemoteException;

    void zza(zzavl zzavlVar) throws RemoteException;

    void zzi(zzvg zzvgVar) throws RemoteException;
}
