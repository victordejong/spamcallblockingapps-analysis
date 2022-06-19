package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dag;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dby.class */
final class dby extends dag.C12308h<Void> implements Runnable {

    /* renamed from: a */
    private final Runnable f46930a;

    public dby(Runnable runnable) {
        this.f46930a = (Runnable) cyg.m17060a(runnable);
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f46930a.run();
        } catch (Throwable th) {
            mo16882a(th);
            throw cyq.m17043b(th);
        }
    }
}
