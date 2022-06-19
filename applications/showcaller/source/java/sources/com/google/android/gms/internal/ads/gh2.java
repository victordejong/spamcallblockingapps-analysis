package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gh2.class */
public final class gh2 implements q42<lb1> {

    /* renamed from: a */
    private final Context f23349a;

    /* renamed from: b */
    private final Executor f23350b;

    /* renamed from: c */
    private final sp0 f23351c;

    /* renamed from: d */
    private final a42 f23352d;

    /* renamed from: e */
    private final hi2 f23353e;

    /* renamed from: f */
    private AbstractC6531gx f23354f;

    /* renamed from: g */
    private final vj2 f23355g;

    /* renamed from: h */
    private r03<lb1> f23356h;

    public gh2(Context context, Executor executor, sp0 sp0Var, a42 a42Var, hi2 hi2Var, vj2 vj2Var) {
        this.f23349a = context;
        this.f23350b = executor;
        this.f23351c = sp0Var;
        this.f23352d = a42Var;
        this.f23355g = vj2Var;
        this.f23353e = hi2Var;
    }

    @Override // com.google.android.gms.internal.ads.q42
    /* renamed from: a */
    public final boolean mo8958a(zzbdg zzbdgVar, String str, o42 o42Var, p42<? super lb1> p42Var) {
        jc1 jc1Var;
        if (str == null) {
            ei0.m15467c("Ad unit ID should not be null for interstitial ad.");
            this.f23350b.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.ah2

                /* renamed from: d */
                private final gh2 f19952d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f19952d = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f19952d.m14940h();
                }
            });
            return false;
        } else if (mo8957b()) {
            return false;
        } else {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25773p6)).booleanValue() && zzbdgVar.f33664i) {
                this.f23351c.mo10966C().m13453c(true);
            }
            zzbdl zzbdlVar = ((zg2) o42Var).f32925a;
            vj2 vj2Var = this.f23355g;
            vj2Var.m9984L(str);
            vj2Var.m9987I(zzbdlVar);
            vj2Var.m9989G(zzbdgVar);
            xj2 m9969l = vj2Var.m9969l();
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25569Q5)).booleanValue()) {
                ic1 mo10947s = this.f23351c.mo10947s();
                h21 h21Var = new h21();
                h21Var.m14759e(this.f23349a);
                h21Var.m14758f(m9969l);
                mo10947s.mo10923a(h21Var.m14756h());
                n81 n81Var = new n81();
                n81Var.m12983b(this.f23352d, this.f23350b);
                n81Var.m12962w(this.f23352d, this.f23350b);
                mo10947s.mo10922i(n81Var.m12982c());
                mo10947s.mo10921r(new g22(this.f23354f));
                jc1Var = mo10947s.zza();
            } else {
                n81 n81Var2 = new n81();
                hi2 hi2Var = this.f23353e;
                if (hi2Var != null) {
                    n81Var2.m12966s(hi2Var, this.f23350b);
                    n81Var2.m12965t(this.f23353e, this.f23350b);
                    n81Var2.m12964u(this.f23353e, this.f23350b);
                }
                ic1 mo10947s2 = this.f23351c.mo10947s();
                h21 h21Var2 = new h21();
                h21Var2.m14759e(this.f23349a);
                h21Var2.m14758f(m9969l);
                mo10947s2.mo10923a(h21Var2.m14756h());
                n81Var2.m12983b(this.f23352d, this.f23350b);
                n81Var2.m12966s(this.f23352d, this.f23350b);
                n81Var2.m12965t(this.f23352d, this.f23350b);
                n81Var2.m12964u(this.f23352d, this.f23350b);
                n81Var2.m12961x(this.f23352d, this.f23350b);
                n81Var2.m12960y(this.f23352d, this.f23350b);
                n81Var2.m12962w(this.f23352d, this.f23350b);
                n81Var2.m12985C(this.f23352d, this.f23350b);
                n81Var2.m12963v(this.f23352d, this.f23350b);
                mo10947s2.mo10922i(n81Var2.m12982c());
                mo10947s2.mo10921r(new g22(this.f23354f));
                jc1Var = mo10947s2.zza();
            }
            b01<lb1> mo10543b = jc1Var.mo10543b();
            r03<lb1> m16459d = mo10543b.m16459d(mo10543b.m16460c());
            this.f23356h = m16459d;
            k03.m13988p(m16459d, new fh2(this, p42Var, jc1Var), this.f23350b);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.q42
    /* renamed from: b */
    public final boolean mo8957b() {
        r03<lb1> r03Var = this.f23356h;
        return r03Var != null && !r03Var.isDone();
    }

    /* renamed from: g */
    public final void m14941g(AbstractC6531gx abstractC6531gx) {
        this.f23354f = abstractC6531gx;
    }

    /* renamed from: h */
    public final /* synthetic */ void m14940h() {
        this.f23352d.mo9146O(sk2.m10997d(6, null, null));
    }
}
