package com.google.android.gms.internal.ads;

import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nv2.class */
final /* synthetic */ class nv2 implements Runnable {

    /* renamed from: b */
    private final fp f7805b;

    /* renamed from: c */
    private final Future f7806c;

    nv2(fp fpVar, Future future) {
        this.f7805b = fpVar;
        this.f7806c = future;
    }

    @Override // java.lang.Runnable
    public final void run() {
        fp fpVar = this.f7805b;
        Future future = this.f7806c;
        if (fpVar.isCancelled()) {
            future.cancel(true);
        }
    }
}
