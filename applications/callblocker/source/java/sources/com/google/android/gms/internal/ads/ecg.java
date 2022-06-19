package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ecg.class */
final class ecg implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ ecf f16279a;

    public ecg(ecf ecfVar) {
        this.f16279a = ecfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC3456rb abstractC3456rb;
        AbstractC3456rb abstractC3456rb2;
        abstractC3456rb = this.f16279a.f16278a;
        if (abstractC3456rb != null) {
            try {
                abstractC3456rb2 = this.f16279a.f16278a;
                abstractC3456rb2.mo7260a(1);
            } catch (RemoteException e) {
                C3645yb.m6746d("Could not notify onRewardedVideoAdFailedToLoad event.", e);
            }
        }
    }
}
