package com.google.android.gms.ads.internal.util;

import android.net.ConnectivityManager;
import android.net.Network;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzo.class */
public final class zzo extends ConnectivityManager.NetworkCallback {
    public zzo(zzt zztVar) {
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        synchronized (zzt.class) {
            try {
                zzt.zzb = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        synchronized (zzt.class) {
            try {
                zzt.zzb = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
