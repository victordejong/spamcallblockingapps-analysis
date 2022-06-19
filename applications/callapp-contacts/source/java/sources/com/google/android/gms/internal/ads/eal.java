package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eal.class */
final class eal implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ IOException f48509a;

    /* renamed from: b */
    private final /* synthetic */ eah f48510b;

    public eal(eah eahVar, IOException iOException) {
        this.f48510b = eahVar;
        this.f48509a = iOException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f48510b.f48470a.mo15365a(this.f48509a);
    }
}
