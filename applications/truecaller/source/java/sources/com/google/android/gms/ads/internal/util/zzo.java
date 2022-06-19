package com.google.android.gms.ads.internal.util;

import android.net.ConnectivityManager;
import android.net.Network;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzo.class */
public final class zzo extends ConnectivityManager.NetworkCallback {
    public zzo(zzs zzsVar) {
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        synchronized (zzs.class) {
            try {
                boolean unused = zzs.zzd = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        synchronized (zzs.class) {
            try {
                boolean unused = zzs.zzd = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
