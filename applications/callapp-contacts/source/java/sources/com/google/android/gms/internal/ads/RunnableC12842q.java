package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.q */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/q.class */
final class RunnableC12842q implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ BinderC12869r f49717a;

    public RunnableC12842q(BinderC12869r binderC12869r) {
        this.f49717a = binderC12869r;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC12949tz abstractC12949tz;
        AbstractC12949tz abstractC12949tz2;
        abstractC12949tz = this.f49717a.f49755a;
        if (abstractC12949tz != null) {
            try {
                abstractC12949tz2 = this.f49717a.f49755a;
                abstractC12949tz2.mo14127a(1);
            } catch (RemoteException e) {
                C13088za.zzd("Could not notify onRewardedVideoAdFailedToLoad event.", e);
            }
        }
    }
}
