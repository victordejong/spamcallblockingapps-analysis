package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.g2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/g2.class */
final class RunnableC1743g2 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ h2 f6606b;

    RunnableC1743g2(h2 h2Var) {
        this.f6606b = h2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (i2.A6(this.f6606b.b) != null) {
            try {
                i2.A6(this.f6606b.b).m7064H(1);
            } catch (RemoteException e) {
                C1894po.m6179g("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
