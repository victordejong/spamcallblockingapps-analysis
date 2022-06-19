package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* renamed from: com.google.android.gms.internal.ads.ai */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ai.class */
public final class C6293ai {

    /* renamed from: a */
    private final ExecutorService f19954a = C6961si.m11020b("Loader:ExtractorMediaPeriod");

    /* renamed from: b */
    private HandlerC7182yh<? extends AbstractC7219zh> f19955b;

    /* renamed from: c */
    private IOException f19956c;

    public C6293ai(String str) {
    }

    /* renamed from: e */
    public final <T extends AbstractC7219zh> long m16592e(T t, AbstractC7145xh<T> abstractC7145xh, int i) {
        Looper myLooper = Looper.myLooper();
        C6367ci.m16039d(myLooper != null);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new HandlerC7182yh(this, myLooper, t, abstractC7145xh, i, elapsedRealtime).m8825b(0L);
        return elapsedRealtime;
    }

    /* renamed from: f */
    public final boolean m16591f() {
        return this.f19955b != null;
    }

    /* renamed from: g */
    public final void m16590g() {
        this.f19955b.m8824c(false);
    }

    /* renamed from: h */
    public final void m16589h(Runnable runnable) {
        HandlerC7182yh<? extends AbstractC7219zh> handlerC7182yh = this.f19955b;
        if (handlerC7182yh != null) {
            handlerC7182yh.m8824c(true);
        }
        this.f19954a.execute(runnable);
        this.f19954a.shutdown();
    }

    /* renamed from: i */
    public final void m16588i(int i) {
        IOException iOException = this.f19956c;
        if (iOException == null) {
            HandlerC7182yh<? extends AbstractC7219zh> handlerC7182yh = this.f19955b;
            if (handlerC7182yh == null) {
                return;
            }
            handlerC7182yh.m8826a(handlerC7182yh.f32499f);
            return;
        }
        throw iOException;
    }
}
