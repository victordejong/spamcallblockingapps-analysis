package com.google.android.gms.internal.ads;

import java.io.IOException;
/* renamed from: com.google.android.gms.internal.ads.ag */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ag.class */
final class RunnableC6291ag implements Runnable {

    /* renamed from: d */
    final /* synthetic */ IOException f19945d;

    /* renamed from: e */
    final /* synthetic */ C6440eg f19946e;

    public RunnableC6291ag(C6440eg c6440eg, IOException iOException) {
        this.f19946e = c6440eg;
        this.f19945d = iOException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC6477fg abstractC6477fg;
        abstractC6477fg = this.f19946e.f22143h;
        abstractC6477fg.mo11406b(this.f19945d);
    }
}
