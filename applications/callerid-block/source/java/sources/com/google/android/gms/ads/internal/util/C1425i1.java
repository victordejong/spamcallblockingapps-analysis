package com.google.android.gms.ads.internal.util;

import android.net.ConnectivityManager;
import android.net.Network;
/* renamed from: com.google.android.gms.ads.internal.util.i1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/i1.class */
final class C1425i1 extends ConnectivityManager.NetworkCallback {
    public C1425i1(C1433l1 c1433l1) {
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        synchronized (C1433l1.class) {
            try {
                boolean unused = C1433l1.f5595j = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        synchronized (C1433l1.class) {
            try {
                boolean unused = C1433l1.f5595j = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
