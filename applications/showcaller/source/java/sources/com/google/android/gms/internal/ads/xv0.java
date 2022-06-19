package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xv0.class */
public final class xv0 {

    /* renamed from: a */
    private final jo2 f32309a;

    /* renamed from: b */
    private final rn1 f32310b;

    /* renamed from: c */
    private final rj2 f32311c;

    public xv0(rn1 rn1Var, rj2 rj2Var, jo2 jo2Var) {
        this.f32309a = jo2Var;
        this.f32310b = rn1Var;
        this.f32311c = rj2Var;
    }

    /* renamed from: b */
    private static String m9046b(int i) {
        int i2 = i - 1;
        return i2 != 0 ? i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? "u" : "ac" : "cb" : "cc" : "bb" : "h";
    }

    /* renamed from: a */
    public final void m9047a(long j, int i) {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25717i6)).booleanValue()) {
            jo2 jo2Var = this.f32309a;
            io2 m14338a = io2.m14338a("ad_closed");
            m14338a.m14331h(this.f32311c.f28999b.f28519b);
            m14338a.m14336c("show_time", String.valueOf(j));
            m14338a.m14336c("ad_format", "app_open_ad");
            m14338a.m14336c("acr", m9046b(i));
            jo2Var.mo9502b(m14338a);
            return;
        }
        qn1 m11371d = this.f32310b.m11371d();
        m11371d.m11847b(this.f32311c.f28999b.f28519b);
        m11371d.m11845d("action", "ad_closed");
        m11371d.m11845d("show_time", String.valueOf(j));
        m11371d.m11845d("ad_format", "app_open_ad");
        m11371d.m11845d("acr", m9046b(i));
        m11371d.m11844e();
    }
}
