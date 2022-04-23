package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dag;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dby.class */
final class dby extends dag.h<Void> implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f26711a;

    public dby(Runnable runnable) {
        this.f26711a = (Runnable) cyg.a(runnable);
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f26711a.run();
        } catch (Throwable th) {
            a(th);
            throw cyq.b(th);
        }
    }
}
