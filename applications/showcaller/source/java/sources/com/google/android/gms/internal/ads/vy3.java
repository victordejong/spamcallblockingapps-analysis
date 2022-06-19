package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vy3.class */
public final class vy3 {

    /* renamed from: a */
    private final Executor f31412a;

    public vy3(Handler handler) {
        this.f31412a = new ty3(this, handler);
    }

    /* renamed from: a */
    public final void m9835a(dz3<?> dz3Var, jz3<?> jz3Var, Runnable runnable) {
        dz3Var.m15626s();
        dz3Var.m15639f("post-response");
        Executor executor = this.f31412a;
        ((ty3) executor).f30431d.post(new uy3(dz3Var, jz3Var, runnable));
    }

    /* renamed from: b */
    public final void m9834b(dz3<?> dz3Var, zzwl zzwlVar) {
        dz3Var.m15639f("post-error");
        jz3 m14010b = jz3.m14010b(zzwlVar);
        Executor executor = this.f31412a;
        ((ty3) executor).f30431d.post(new uy3(dz3Var, m14010b, null));
    }
}
