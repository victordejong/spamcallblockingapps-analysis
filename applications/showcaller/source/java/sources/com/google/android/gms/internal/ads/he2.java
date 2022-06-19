package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.ads.ew0;
import com.google.android.gms.internal.ads.f21;
import com.google.android.gms.internal.ads.xy0;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/he2.class */
public abstract class he2<AppOpenAd extends xy0, AppOpenRequestComponent extends ew0<AppOpenAd>, AppOpenRequestComponentBuilder extends f21<AppOpenRequestComponent>> implements q42<AppOpenAd> {

    /* renamed from: a */
    private final Context f23873a;

    /* renamed from: b */
    private final Executor f23874b;

    /* renamed from: c */
    protected final sp0 f23875c;

    /* renamed from: d */
    private final xe2 f23876d;

    /* renamed from: e */
    private final sg2<AppOpenRequestComponent, AppOpenAd> f23877e;

    /* renamed from: f */
    private final ViewGroup f23878f;

    /* renamed from: g */
    private final vj2 f23879g;

    /* renamed from: h */
    private r03<AppOpenAd> f23880h;

    public he2(Context context, Executor executor, sp0 sp0Var, sg2<AppOpenRequestComponent, AppOpenAd> sg2Var, xe2 xe2Var, vj2 vj2Var) {
        this.f23873a = context;
        this.f23874b = executor;
        this.f23875c = sp0Var;
        this.f23877e = sg2Var;
        this.f23876d = xe2Var;
        this.f23879g = vj2Var;
        this.f23878f = new FrameLayout(context);
    }

    /* renamed from: l */
    public final AppOpenRequestComponentBuilder m14688k(qg2 qg2Var) {
        synchronized (this) {
            fe2 fe2Var = (fe2) qg2Var;
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25561P5)).booleanValue()) {
                uw0 uw0Var = new uw0(this.f23878f);
                h21 h21Var = new h21();
                h21Var.m14759e(this.f23873a);
                h21Var.m14758f(fe2Var.f22858a);
                j21 m14756h = h21Var.m14756h();
                n81 n81Var = new n81();
                n81Var.m12963v(this.f23876d, this.f23874b);
                n81Var.m12960y(this.f23876d, this.f23874b);
                return mo8406c(uw0Var, m14756h, n81Var.m12982c());
            }
            xe2 m9241d = xe2.m9241d(this.f23876d);
            n81 n81Var2 = new n81();
            n81Var2.m12964u(m9241d, this.f23874b);
            n81Var2.m12987A(m9241d, this.f23874b);
            n81Var2.m12986B(m9241d, this.f23874b);
            n81Var2.m12985C(m9241d, this.f23874b);
            n81Var2.m12963v(m9241d, this.f23874b);
            n81Var2.m12960y(m9241d, this.f23874b);
            n81Var2.m12984a(m9241d);
            uw0 uw0Var2 = new uw0(this.f23878f);
            h21 h21Var2 = new h21();
            h21Var2.m14759e(this.f23873a);
            h21Var2.m14758f(fe2Var.f22858a);
            return mo8406c(uw0Var2, h21Var2.m14756h(), n81Var2.m12982c());
        }
    }

    @Override // com.google.android.gms.internal.ads.q42
    /* renamed from: a */
    public final boolean mo8958a(zzbdg zzbdgVar, String str, o42 o42Var, p42<? super AppOpenAd> p42Var) {
        synchronized (this) {
            C6155o.m17023e("loadAd must be called on the main UI thread.");
            if (str == null) {
                ei0.m15467c("Ad unit ID should not be null for app open ad.");
                this.f23874b.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.ae2

                    /* renamed from: d */
                    private final he2 f19923d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f19923d = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f19923d.m14689j();
                    }
                });
                return false;
            } else if (this.f23880h != null) {
                return false;
            } else {
                nk2.m12891b(this.f23873a, zzbdgVar.f33664i);
                if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25773p6)).booleanValue() && zzbdgVar.f33664i) {
                    this.f23875c.mo10966C().m13453c(true);
                }
                vj2 vj2Var = this.f23879g;
                vj2Var.m9984L(str);
                vj2Var.m9987I(zzbdl.m8080n0());
                vj2Var.m9989G(zzbdgVar);
                xj2 m9969l = vj2Var.m9969l();
                fe2 fe2Var = new fe2(null);
                fe2Var.f22858a = m9969l;
                r03<AppOpenAd> mo9227a = this.f23877e.mo9227a(new tg2(fe2Var, null), new rg2(this) { // from class: com.google.android.gms.internal.ads.ce2

                    /* renamed from: a */
                    private final he2 f21196a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f21196a = this;
                    }

                    @Override // com.google.android.gms.internal.ads.rg2
                    /* renamed from: a */
                    public final f21 mo11470a(qg2 qg2Var) {
                        return this.f21196a.m14688k(qg2Var);
                    }
                }, null);
                this.f23880h = mo9227a;
                k03.m13988p(mo9227a, new ee2(this, p42Var, fe2Var), this.f23874b);
                return true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.q42
    /* renamed from: b */
    public final boolean mo8957b() {
        r03<AppOpenAd> r03Var = this.f23880h;
        return r03Var != null && !r03Var.isDone();
    }

    /* renamed from: c */
    protected abstract AppOpenRequestComponentBuilder mo8406c(uw0 uw0Var, j21 j21Var, p81 p81Var);

    /* renamed from: i */
    public final void m14690i(zzbdr zzbdrVar) {
        this.f23879g.m9975f(zzbdrVar);
    }

    /* renamed from: j */
    public final /* synthetic */ void m14689j() {
        this.f23876d.mo9146O(sk2.m10997d(6, null, null));
    }
}
