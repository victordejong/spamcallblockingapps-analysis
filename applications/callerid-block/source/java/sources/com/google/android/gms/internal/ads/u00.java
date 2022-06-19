package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/u00.class */
public final class u00 {

    /* renamed from: a */
    private final aq1 f8739a;

    /* renamed from: b */
    private final jr0 f8740b;

    /* renamed from: c */
    private final ml1 f8741c;

    public u00(jr0 jr0Var, ml1 ml1Var, aq1 aq1Var) {
        this.f8739a = aq1Var;
        this.f8740b = jr0Var;
        this.f8741c = ml1Var;
    }

    /* renamed from: b */
    private static String m5447b(int i) {
        int i2 = i - 1;
        return i2 != 0 ? i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? "u" : "ac" : "cb" : "cc" : "bb" : "h";
    }

    /* renamed from: a */
    public final void m5448a(long j, int i) {
        if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7411f5)).booleanValue()) {
            aq1 aq1Var = this.f8739a;
            zp1 m4559a = zp1.m4559a("ad_closed");
            m4559a.m4552h(this.f8741c.f7583b.f6992b);
            m4559a.m4557c("show_time", String.valueOf(j));
            m4559a.m4557c("ad_format", "app_open_ad");
            m4559a.m4557c("acr", m5447b(i));
            aq1Var.m8101b(m4559a);
            return;
        }
        ir0 m6930a = this.f8740b.m6930a();
        m6930a.m7106a(this.f8741c.f7583b.f6992b);
        m6930a.m7104c("action", "ad_closed");
        m6930a.m7104c("show_time", String.valueOf(j));
        m6930a.m7104c("ad_format", "app_open_ad");
        m6930a.m7104c("acr", m5447b(i));
        m6930a.m7103d();
    }
}
