package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.o2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/o2.class */
final /* synthetic */ class RunnableC1869o2 implements Runnable {

    /* renamed from: b */
    private final AbstractC2052yk f7827b;

    RunnableC1869o2(AbstractC2052yk ykVar) {
        this.f7827b = ykVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC2052yk ykVar = this.f7827b;
        if (ykVar != null) {
            try {
                ykVar.m4752E(1);
            } catch (RemoteException e) {
                C1894po.m6177i("#007 Could not call remote method.", e);
            }
        }
    }
}
