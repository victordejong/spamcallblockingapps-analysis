package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ko2.class */
public final class ko2 implements cj3<jo2> {

    /* renamed from: a */
    private final pj3<po2> f25282a;

    /* renamed from: b */
    private final pj3<wo2> f25283b;

    /* renamed from: c */
    private final pj3<ScheduledExecutorService> f25284c;

    public ko2(pj3<po2> pj3Var, pj3<wo2> pj3Var2, pj3<ScheduledExecutorService> pj3Var3) {
        this.f25282a = pj3Var;
        this.f25283b = pj3Var2;
        this.f25284c = pj3Var3;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        vi3 m16583c = aj3.m16583c(this.f25282a);
        vi3 m16583c2 = aj3.m16583c(this.f25283b);
        mo2 mo2Var = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25725j6)).booleanValue() ? new mo2((jo2) m16583c.m9997b(), this.f25284c.mo8141b()) : (jo2) m16583c2.m9997b();
        kj3.m13879b(mo2Var);
        return mo2Var;
    }
}
