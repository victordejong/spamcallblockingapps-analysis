package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/up1.class */
public final class up1 extends z30 {

    /* renamed from: d */
    final /* synthetic */ Object f30700d;

    /* renamed from: e */
    final /* synthetic */ String f30701e;

    /* renamed from: f */
    final /* synthetic */ long f30702f;

    /* renamed from: g */
    final /* synthetic */ vi0 f30703g;

    /* renamed from: h */
    final /* synthetic */ vp1 f30704h;

    public up1(vp1 vp1Var, Object obj, String str, long j, vi0 vi0Var) {
        this.f30704h = vp1Var;
        this.f30700d = obj;
        this.f30701e = str;
        this.f30702f = j;
        this.f30703g = vi0Var;
    }

    @Override // com.google.android.gms.internal.ads.a40
    /* renamed from: a */
    public final void mo10276a() {
        ao1 ao1Var;
        u91 u91Var;
        synchronized (this.f30700d) {
            this.f30704h.m9895u(this.f30701e, true, "", (int) (C5667s.m18153k().mo16806b() - this.f30702f));
            ao1Var = this.f30704h.f31282l;
            ao1Var.m16516b(this.f30701e);
            u91Var = this.f30704h.f31285o;
            u91Var.mo9728r(this.f30701e);
            this.f30703g.m10016c(Boolean.TRUE);
        }
    }

    @Override // com.google.android.gms.internal.ads.a40
    /* renamed from: p */
    public final void mo8968p(String str) {
        ao1 ao1Var;
        u91 u91Var;
        synchronized (this.f30700d) {
            this.f30704h.m9895u(this.f30701e, false, str, (int) (C5667s.m18153k().mo16806b() - this.f30702f));
            ao1Var = this.f30704h.f31282l;
            ao1Var.m16515c(this.f30701e, "error");
            u91Var = this.f30704h.f31285o;
            u91Var.mo9732U(this.f30701e, "error");
            this.f30703g.m10016c(Boolean.FALSE);
        }
    }
}
