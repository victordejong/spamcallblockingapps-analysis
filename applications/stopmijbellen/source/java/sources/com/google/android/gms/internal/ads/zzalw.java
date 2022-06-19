package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.os.Build;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzalw.class */
public final class zzalw {
    private NetworkCapabilities zza;

    public zzalw(ConnectivityManager connectivityManager) {
        if (connectivityManager == null || Build.VERSION.SDK_INT < 24) {
            return;
        }
        try {
            connectivityManager.registerDefaultNetworkCallback(new zzalv(this));
        } catch (RuntimeException e) {
            synchronized (zzalw.class) {
                try {
                    this.zza = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static zzalw zzc(Context context) {
        if (context != null) {
            return new zzalw((ConnectivityManager) context.getSystemService("connectivity"));
        }
        return null;
    }

    public final long zza() {
        synchronized (zzalw.class) {
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

    public final NetworkCapabilities zzb() {
        return this.zza;
    }
}
