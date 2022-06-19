package com.google.android.gms.internal.ads;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzalv.class */
public final class zzalv extends ConnectivityManager.NetworkCallback {
    public final /* synthetic */ zzalw zza;

    public zzalv(zzalw zzalwVar) {
        this.zza = zzalwVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        synchronized (zzalw.class) {
            try {
                this.zza.zza = networkCapabilities;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        synchronized (zzalw.class) {
            try {
                this.zza.zza = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
