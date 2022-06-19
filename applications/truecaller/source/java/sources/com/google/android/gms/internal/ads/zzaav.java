package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.os.Build;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaav.class */
public final class zzaav {
    private NetworkCapabilities zza;

    public zzaav(ConnectivityManager connectivityManager) {
        if (connectivityManager == null || Build.VERSION.SDK_INT < 24) {
            return;
        }
        try {
            connectivityManager.registerDefaultNetworkCallback(new zzaau(this));
        } catch (RuntimeException e) {
            synchronized (zzaav.class) {
                try {
                    this.zza = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static zzaav zzb(Context context) {
        if (context != null) {
            return new zzaav((ConnectivityManager) context.getSystemService("connectivity"));
        }
        return null;
    }

    public final NetworkCapabilities zzc() {
        return this.zza;
    }

    public final long zzd() {
        synchronized (zzaav.class) {
            try {
                NetworkCapabilities networkCapabilities = this.zza;
                if (networkCapabilities != null) {
                    if (networkCapabilities.hasTransport(4)) {
                        return 2L;
                    }
                    if (this.zza.hasTransport(1)) {
                        return 1L;
                    }
                    if (this.zza.hasTransport(0)) {
                        return 0L;
                    }
                }
                return -1L;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
