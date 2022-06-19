package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qu2.class */
public final class qu2 {

    /* renamed from: a */
    private final Executor f8280a;

    public qu2(Handler handler) {
        this.f8280a = new os2(this, handler);
    }

    /* renamed from: a */
    public final void m6032a(AbstractC1676c1<?> abstractC1676c1, C1992v6<?> c1992v6, Runnable runnable) {
        abstractC1676c1.m7885u();
        abstractC1676c1.m7898e("post-response");
        Executor executor = this.f8280a;
        ((os2) executor).f7902b.post(new pt2(abstractC1676c1, c1992v6, runnable));
    }

    /* renamed from: b */
    public final void m6031b(AbstractC1676c1<?> abstractC1676c1, zzal zzalVar) {
        abstractC1676c1.m7898e("post-error");
        C1992v6 m5310b = C1992v6.m5310b(zzalVar);
        Executor executor = this.f8280a;
        ((os2) executor).f7902b.post(new pt2(abstractC1676c1, m5310b, null));
    }
}
