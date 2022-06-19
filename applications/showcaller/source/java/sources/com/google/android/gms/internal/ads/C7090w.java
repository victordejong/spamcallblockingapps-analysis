package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.os.Build;
/* renamed from: com.google.android.gms.internal.ads.w */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/w.class */
public final class C7090w {

    /* renamed from: a */
    private NetworkCapabilities f31419a;

    C7090w(ConnectivityManager connectivityManager) {
        if (connectivityManager == null || Build.VERSION.SDK_INT < 24) {
            return;
        }
        try {
            connectivityManager.registerDefaultNetworkCallback(new C7053v(this));
        } catch (RuntimeException e) {
            synchronized (C7090w.class) {
                try {
                    this.f31419a = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* renamed from: b */
    public static C7090w m9818b(Context context) {
        if (context != null) {
            return new C7090w((ConnectivityManager) context.getSystemService("connectivity"));
        }
        return null;
    }

    /* renamed from: c */
    public final NetworkCapabilities m9817c() {
        return this.f31419a;
    }

    /* renamed from: d */
    public final long m9816d() {
        synchronized (C7090w.class) {
            try {
                NetworkCapabilities networkCapabilities = this.f31419a;
                if (networkCapabilities != null) {
                    if (networkCapabilities.hasTransport(4)) {
                        return 2L;
                    }
                    if (this.f31419a.hasTransport(1)) {
                        return 1L;
                    }
                    if (this.f31419a.hasTransport(0)) {
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
