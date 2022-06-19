package com.google.android.gms.internal.ads;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaau.class */
public final class zzaau extends ConnectivityManager.NetworkCallback {
    public final /* synthetic */ zzaav zza;

    public zzaau(zzaav zzaavVar) {
        this.zza = zzaavVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        synchronized (zzaav.class) {
            try {
                this.zza.zza = networkCapabilities;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        synchronized (zzaav.class) {
            try {
                this.zza.zza = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
