package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.j2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/j2.class */
final class RunnableC1795j2 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ k2 f6879b;

    RunnableC1795j2(k2 k2Var) {
        this.f6879b = k2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (k2.z6(this.f6879b) != null) {
            try {
                k2.z6(this.f6879b).m7064H(1);
            } catch (RemoteException e) {
                C1894po.m6179g("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
