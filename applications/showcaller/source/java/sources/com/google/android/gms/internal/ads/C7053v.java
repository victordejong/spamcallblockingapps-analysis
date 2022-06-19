package com.google.android.gms.internal.ads;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
/* renamed from: com.google.android.gms.internal.ads.v */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/v.class */
public final class C7053v extends ConnectivityManager.NetworkCallback {

    /* renamed from: a */
    final /* synthetic */ C7090w f31033a;

    public C7053v(C7090w c7090w) {
        this.f31033a = c7090w;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        synchronized (C7090w.class) {
            try {
                this.f31033a.f31419a = networkCapabilities;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        synchronized (C7090w.class) {
            try {
                this.f31033a.f31419a = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
