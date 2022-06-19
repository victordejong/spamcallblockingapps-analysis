package com.google.android.gms.ads.internal.util;

import android.net.ConnectivityManager;
import android.net.Network;
/* renamed from: com.google.android.gms.ads.internal.util.y1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/y1.class */
public final class C5752y1 extends ConnectivityManager.NetworkCallback {
    public C5752y1(C5679c2 c5679c2) {
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        synchronized (C5679c2.class) {
            try {
                boolean unused = C5679c2.f18452b = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        synchronized (C5679c2.class) {
            try {
                boolean unused = C5679c2.f18452b = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
