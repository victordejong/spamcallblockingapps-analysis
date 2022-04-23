package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/im0.class */
public final class im0 {

    /* renamed from: a */
    private final Executor f6810a;

    /* renamed from: b */
    private final m00 f6811b;

    /* renamed from: c */
    private final pe0 f6812c;

    im0(Executor executor, m00 m00Var, pe0 pe0Var) {
        this.f6810a = executor;
        this.f6812c = pe0Var;
        this.f6811b = m00Var;
    }

    /* renamed from: a */
    public final void m7179a(jt jtVar) {
        if (jtVar != null) {
            this.f6812c.H0(jtVar.G());
            this.f6812c.m5530t0(new em0(jtVar), this.f6810a);
            this.f6812c.m5530t0(new fm0(jtVar), this.f6810a);
            this.f6812c.m5530t0(this.f6811b, this.f6810a);
            this.f6811b.a(jtVar);
            jtVar.T0("/trackActiveViewUnit", new gm0(this));
            jtVar.T0("/untrackActiveViewUnit", new hm0(this));
        }
    }

    /* renamed from: b */
    final /* synthetic */ void m7178b(jt jtVar, Map map) {
        this.f6811b.b();
    }

    /* renamed from: c */
    final /* synthetic */ void m7177c(jt jtVar, Map map) {
        this.f6811b.c();
    }
}
