package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mf2.class */
public final class mf2 implements q42<xw0> {

    /* renamed from: a */
    private final Context f26581a;

    /* renamed from: b */
    private final Executor f26582b;

    /* renamed from: c */
    private final sp0 f26583c;

    /* renamed from: d */
    private final a42 f26584d;

    /* renamed from: e */
    private final e42 f26585e;

    /* renamed from: f */
    private final ViewGroup f26586f;

    /* renamed from: g */
    private AbstractC6531gx f26587g;

    /* renamed from: h */
    private final o51 f26588h;

    /* renamed from: i */
    private final vj2 f26589i;

    /* renamed from: j */
    private r03<xw0> f26590j;

    public mf2(Context context, Executor executor, zzbdl zzbdlVar, sp0 sp0Var, a42 a42Var, e42 e42Var, vj2 vj2Var) {
        this.f26581a = context;
        this.f26582b = executor;
        this.f26583c = sp0Var;
        this.f26584d = a42Var;
        this.f26585e = e42Var;
        this.f26589i = vj2Var;
        this.f26588h = sp0Var.mo10955k();
        this.f26586f = new FrameLayout(context);
        vj2Var.m9987I(zzbdlVar);
    }

    @Override // com.google.android.gms.internal.ads.q42
    /* renamed from: a */
    public final boolean mo8958a(zzbdg zzbdgVar, String str, o42 o42Var, p42<? super xw0> p42Var) {
        vx0 vx0Var;
        if (str == null) {
            ei0.m15467c("Ad unit ID should not be null for banner ad.");
            this.f26582b.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.if2

                /* renamed from: d */
                private final mf2 f24263d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24263d = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f24263d.m13204p();
                }
            });
            return false;
        } else if (mo8957b()) {
            return false;
        } else {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25773p6)).booleanValue() && zzbdgVar.f33664i) {
                this.f26583c.mo10966C().m13453c(true);
            }
            vj2 vj2Var = this.f26589i;
            vj2Var.m9984L(str);
            vj2Var.m9989G(zzbdgVar);
            xj2 m9969l = vj2Var.m9969l();
            if (C6420dy.f21924c.m12799e().booleanValue() && this.f26589i.m9985K().f33692n) {
                a42 a42Var = this.f26584d;
                if (a42Var == null) {
                    return false;
                }
                a42Var.mo9146O(sk2.m10997d(7, null, null));
                return false;
            }
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25553O5)).booleanValue()) {
                ux0 mo10952n = this.f26583c.mo10952n();
                h21 h21Var = new h21();
                h21Var.m14759e(this.f26581a);
                h21Var.m14758f(m9969l);
                mo10952n.mo10154p(h21Var.m14756h());
                n81 n81Var = new n81();
                n81Var.m12983b(this.f26584d, this.f26582b);
                n81Var.m12962w(this.f26584d, this.f26582b);
                mo10952n.mo10153q(n81Var.m12982c());
                mo10952n.mo10155m(new g22(this.f26587g));
                mo10952n.mo10156h(new zc1(cf1.f21214a, null));
                mo10952n.mo10157g(new ry0(this.f26588h));
                mo10952n.mo10152t(new uw0(this.f26586f));
                vx0Var = mo10952n.zza();
            } else {
                ux0 mo10952n2 = this.f26583c.mo10952n();
                h21 h21Var2 = new h21();
                h21Var2.m14759e(this.f26581a);
                h21Var2.m14758f(m9969l);
                mo10952n2.mo10154p(h21Var2.m14756h());
                n81 n81Var2 = new n81();
                n81Var2.m12983b(this.f26584d, this.f26582b);
                n81Var2.m12961x(this.f26584d, this.f26582b);
                n81Var2.m12961x(this.f26585e, this.f26582b);
                n81Var2.m12960y(this.f26584d, this.f26582b);
                n81Var2.m12959z(this.f26584d, this.f26582b);
                n81Var2.m12966s(this.f26584d, this.f26582b);
                n81Var2.m12965t(this.f26584d, this.f26582b);
                n81Var2.m12964u(this.f26584d, this.f26582b);
                n81Var2.m12962w(this.f26584d, this.f26582b);
                n81Var2.m12985C(this.f26584d, this.f26582b);
                mo10952n2.mo10153q(n81Var2.m12982c());
                mo10952n2.mo10155m(new g22(this.f26587g));
                mo10952n2.mo10156h(new zc1(cf1.f21214a, null));
                mo10952n2.mo10157g(new ry0(this.f26588h));
                mo10952n2.mo10152t(new uw0(this.f26586f));
                vx0Var = mo10952n2.zza();
            }
            b01<xw0> mo9842b = vx0Var.mo9842b();
            r03<xw0> m16459d = mo9842b.m16459d(mo9842b.m16460c());
            this.f26590j = m16459d;
            k03.m13988p(m16459d, new lf2(this, p42Var, vx0Var), this.f26582b);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.q42
    /* renamed from: b */
    public final boolean mo8957b() {
        r03<xw0> r03Var = this.f26590j;
        return r03Var != null && !r03Var.isDone();
    }

    /* renamed from: i */
    public final ViewGroup m13211i() {
        return this.f26586f;
    }

    /* renamed from: j */
    public final void m13210j(AbstractC6531gx abstractC6531gx) {
        this.f26587g = abstractC6531gx;
    }

    /* renamed from: k */
    public final void m13209k(AbstractC6377cs abstractC6377cs) {
        this.f26585e.m15563a(abstractC6377cs);
    }

    /* renamed from: l */
    public final vj2 m13208l() {
        return this.f26589i;
    }

    /* renamed from: m */
    public final boolean m13207m() {
        ViewParent parent = this.f26586f.getParent();
        if (!(parent instanceof View)) {
            return false;
        }
        View view = (View) parent;
        C5667s.m18160d();
        return C5679c2.m18049z(view, view.getContext());
    }

    /* renamed from: n */
    public final void m13206n(p51 p51Var) {
        this.f26588h.m13341D0(p51Var, this.f26582b);
    }

    /* renamed from: o */
    public final void m13205o() {
        this.f26588h.m12729S0(60);
    }

    /* renamed from: p */
    public final /* synthetic */ void m13204p() {
        this.f26584d.mo9146O(sk2.m10997d(6, null, null));
    }
}
