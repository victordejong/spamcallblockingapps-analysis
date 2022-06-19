package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/b30.class */
final /* synthetic */ class b30 implements Runnable {

    /* renamed from: b */
    private final AtomicReference f6117b;

    b30(AtomicReference atomicReference) {
        this.f6117b = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Runnable runnable = (Runnable) this.f6117b.getAndSet(null);
        if (runnable != null) {
            runnable.run();
        }
    }
}
