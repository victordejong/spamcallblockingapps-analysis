package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.g21;
import com.google.android.gms.internal.ads.xy0;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xf2.class */
public final class xf2<R extends g21<AdT>, AdT extends xy0> implements sg2<R, AdT> {

    /* renamed from: a */
    private final sg2<R, AdT> f32035a;

    /* renamed from: b */
    private final sg2<R, cg2<R, AdT>> f32036b;

    /* renamed from: c */
    private final dm2<R, AdT> f32037c;

    /* renamed from: d */
    private final String f32038d;

    /* renamed from: e */
    private R f32039e;

    /* renamed from: f */
    private final Executor f32040f;

    public xf2(sg2<R, AdT> sg2Var, sg2<R, cg2<R, AdT>> sg2Var2, dm2<R, AdT> dm2Var, String str, Executor executor) {
        this.f32035a = sg2Var;
        this.f32036b = sg2Var2;
        this.f32037c = dm2Var;
        this.f32038d = str;
        this.f32040f = executor;
    }

    /* renamed from: g */
    private final r03<AdT> m9221g(ql2<R, AdT> ql2Var, tg2 tg2Var) {
        R r = ql2Var.f28549a;
        this.f32039e = r;
        if (ql2Var.f28551c != null) {
            if (r.mo8259E() != null) {
                ql2Var.f28551c.m9017e().mo9234q(ql2Var.f28549a.mo8259E());
            }
            return k03.m14003a(ql2Var.f28551c);
        }
        r.mo8231o().m16454i(ql2Var.f28550b);
        return ((ig2) this.f32035a).m14403c(tg2Var, null, ql2Var.f28549a);
    }

    @Override // com.google.android.gms.internal.ads.sg2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ r03 mo9227a(tg2 tg2Var, rg2 rg2Var, Object obj) {
        return m9225c(tg2Var, rg2Var, null);
    }

    /* renamed from: b */
    public final R mo9223e() {
        R r;
        synchronized (this) {
            r = this.f32039e;
        }
        return r;
    }

    /* renamed from: c */
    public final r03<AdT> m9225c(tg2 tg2Var, rg2<R> rg2Var, R r) {
        synchronized (this) {
            f21<R> mo11470a = rg2Var.mo11470a(tg2Var.f29969b);
            mo11470a.mo8738n(new yf2(this.f32038d));
            R mo8739d = mo11470a.mo8739d();
            mo8739d.mo8247Q();
            mo8739d.mo8247Q();
            zzbdg zzbdgVar = mo8739d.mo8247Q().f32077d;
            if (zzbdgVar.f33677v == null && zzbdgVar.f33658A == null) {
                xj2 mo8247Q = mo8739d.mo8247Q();
                return k03.m13995i(a03.m16718E(((eg2) this.f32036b).m15476b(tg2Var, rg2Var, mo8739d)), new uz2(this, tg2Var, new wf2(rg2Var, tg2Var, mo8247Q.f32077d, mo8247Q.f32079f, this.f32040f, mo8247Q.f32083j, null), rg2Var, mo8739d) { // from class: com.google.android.gms.internal.ads.tf2

                    /* renamed from: a */
                    private final xf2 f29961a;

                    /* renamed from: b */
                    private final tg2 f29962b;

                    /* renamed from: c */
                    private final wf2 f29963c;

                    /* renamed from: d */
                    private final rg2 f29964d;

                    /* renamed from: e */
                    private final g21 f29965e;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f29961a = this;
                        this.f29962b = tg2Var;
                        this.f29963c = wf2Var;
                        this.f29964d = rg2Var;
                        this.f29965e = mo8739d;
                    }

                    @Override // com.google.android.gms.internal.ads.uz2
                    /* renamed from: a */
                    public final r03 mo8403a(Object obj) {
                        return this.f29961a.m9222f(this.f29962b, this.f29963c, this.f29964d, this.f29965e, (cg2) obj);
                    }
                }, this.f32040f);
            }
            this.f32039e = mo8739d;
            return ((ig2) this.f32035a).m14403c(tg2Var, rg2Var, mo8739d);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public final /* synthetic */ r03 m9224d(am2 am2Var) {
        Object obj;
        if (am2Var == null || am2Var.f20019a == null || (obj = am2Var.f20020b) == null) {
            throw new zzdym(1, "Empty prefetch");
        }
        wf2 wf2Var = (wf2) obj;
        C6335bn m14588C = C6558hn.m14588C();
        C7224zm m16523C = C6298an.m16523C();
        m16523C.m8336t(2);
        m16523C.m8339q(C6447en.m15423D());
        m14588C.m16317q(m16523C);
        am2Var.f20019a.f28549a.mo8231o().m16458e().mo12849d0(m14588C.m15512n());
        return m9221g(am2Var.f20019a, wf2Var.f31562b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    public final /* synthetic */ r03 m9222f(tg2 tg2Var, wf2 wf2Var, rg2 rg2Var, g21 g21Var, cg2 cg2Var) {
        tg2 tg2Var2 = tg2Var;
        if (cg2Var != null) {
            wf2 wf2Var2 = new wf2(wf2Var.f31561a, wf2Var.f31562b, wf2Var.f31563c, wf2Var.f31564d, wf2Var.f31565e, wf2Var.f31566f, cg2Var.f21238a);
            if (cg2Var.f21240c != null) {
                this.f32039e = null;
                this.f32037c.m15766c(wf2Var2);
                return m9221g(cg2Var.f21240c, tg2Var);
            }
            r03<am2<R, AdT>> m15765d = this.f32037c.m15765d(wf2Var2);
            if (m15765d != null) {
                this.f32039e = null;
                return k03.m13995i(m15765d, new uz2(this) { // from class: com.google.android.gms.internal.ads.uf2

                    /* renamed from: a */
                    private final xf2 f30600a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f30600a = this;
                    }

                    @Override // com.google.android.gms.internal.ads.uz2
                    /* renamed from: a */
                    public final r03 mo8403a(Object obj) {
                        return this.f30600a.m9224d((am2) obj);
                    }
                }, this.f32040f);
            }
            this.f32037c.m15766c(wf2Var2);
            tg2Var2 = new tg2(tg2Var.f29969b, cg2Var.f21239b);
        }
        r03 m14403c = ((ig2) this.f32035a).m14403c(tg2Var2, rg2Var, g21Var);
        this.f32039e = g21Var;
        return m14403c;
    }
}
