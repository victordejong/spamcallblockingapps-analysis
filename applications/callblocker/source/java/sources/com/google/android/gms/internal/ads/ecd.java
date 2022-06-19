package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ecd.class */
final class ecd implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ eca f16276a;

    public ecd(eca ecaVar) {
        this.f16276a = ecaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dza dzaVar;
        dza dzaVar2;
        dzaVar = this.f16276a.f16273a;
        if (dzaVar != null) {
            try {
                dzaVar2 = this.f16276a.f16273a;
                dzaVar2.mo8138a(1);
            } catch (RemoteException e) {
                C3645yb.m6746d("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
