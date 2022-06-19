package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.gv */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gv.class */
final class RunnableC6529gv implements Runnable {

    /* renamed from: d */
    final /* synthetic */ BinderC6566hv f23704d;

    public RunnableC6529gv(BinderC6566hv binderC6566hv) {
        this.f23704d = binderC6566hv;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC6526gs abstractC6526gs;
        AbstractC6526gs abstractC6526gs2;
        abstractC6526gs = this.f23704d.f24047d;
        if (abstractC6526gs != null) {
            try {
                abstractC6526gs2 = this.f23704d.f24047d;
                abstractC6526gs2.mo12205C(1);
            } catch (RemoteException e) {
                ei0.m15463g("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
