package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.AbstractC5728q1;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ou1.class */
public final class ou1 implements w91 {

    /* renamed from: f */
    private final String f27734f;

    /* renamed from: g */
    private final jo2 f27735g;

    /* renamed from: d */
    private boolean f27732d = false;

    /* renamed from: e */
    private boolean f27733e = false;

    /* renamed from: h */
    private final AbstractC5728q1 f27736h = C5667s.m18156h().m12230p();

    public ou1(String str, jo2 jo2Var) {
        this.f27734f = str;
        this.f27735g = jo2Var;
    }

    /* renamed from: b */
    private final io2 m12502b(String str) {
        String str2 = this.f27736h.mo17948t() ? "" : this.f27734f;
        io2 m14338a = io2.m14338a(str);
        m14338a.m14336c("tms", Long.toString(C5667s.m18153k().mo16806b(), 10));
        m14338a.m14336c("tid", str2);
        return m14338a;
    }

    @Override // com.google.android.gms.internal.ads.w91
    /* renamed from: U */
    public final void mo9732U(String str, String str2) {
        jo2 jo2Var = this.f27735g;
        io2 m12502b = m12502b("adapter_init_finished");
        m12502b.m14336c("ancn", str);
        m12502b.m14336c("rqe", str2);
        jo2Var.mo9502b(m12502b);
    }

    @Override // com.google.android.gms.internal.ads.w91
    /* renamed from: a */
    public final void mo9731a() {
        synchronized (this) {
            if (!this.f27733e) {
                this.f27735g.mo9502b(m12502b("init_finished"));
                this.f27733e = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.w91
    /* renamed from: e */
    public final void mo9730e() {
        synchronized (this) {
            if (!this.f27732d) {
                this.f27735g.mo9502b(m12502b("init_started"));
                this.f27732d = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.w91
    /* renamed from: n */
    public final void mo9729n(String str) {
        jo2 jo2Var = this.f27735g;
        io2 m12502b = m12502b("adapter_init_started");
        m12502b.m14336c("ancn", str);
        jo2Var.mo9502b(m12502b);
    }

    @Override // com.google.android.gms.internal.ads.w91
    /* renamed from: r */
    public final void mo9728r(String str) {
        jo2 jo2Var = this.f27735g;
        io2 m12502b = m12502b("adapter_init_finished");
        m12502b.m14336c("ancn", str);
        jo2Var.mo9502b(m12502b);
    }
}
