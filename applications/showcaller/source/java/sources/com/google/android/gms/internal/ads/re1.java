package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import java.util.Collections;
import java.util.List;
import p020b.p036e.C1502g;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/re1.class */
public final class re1 {

    /* renamed from: a */
    private int f28891a;

    /* renamed from: b */
    private AbstractC6640ju f28892b;

    /* renamed from: c */
    private AbstractC7199yy f28893c;

    /* renamed from: d */
    private View f28894d;

    /* renamed from: e */
    private List<?> f28895e;

    /* renamed from: g */
    private BinderC7158xu f28897g;

    /* renamed from: h */
    private Bundle f28898h;

    /* renamed from: i */
    private wn0 f28899i;

    /* renamed from: j */
    private wn0 f28900j;

    /* renamed from: k */
    private wn0 f28901k;

    /* renamed from: l */
    private AbstractC6253a f28902l;

    /* renamed from: m */
    private View f28903m;

    /* renamed from: n */
    private View f28904n;

    /* renamed from: o */
    private AbstractC6253a f28905o;

    /* renamed from: p */
    private double f28906p;

    /* renamed from: q */
    private AbstractC6533gz f28907q;

    /* renamed from: r */
    private AbstractC6533gz f28908r;

    /* renamed from: s */
    private String f28909s;

    /* renamed from: v */
    private float f28912v;

    /* renamed from: w */
    private String f28913w;

    /* renamed from: t */
    private final C1502g<String, BinderC6940ry> f28910t = new C1502g<>();

    /* renamed from: u */
    private final C1502g<String, String> f28911u = new C1502g<>();

    /* renamed from: f */
    private List<BinderC7158xu> f28896f = Collections.emptyList();

    /* renamed from: B */
    public static re1 m11545B(h80 h80Var) {
        try {
            return m11540G(m11538I(h80Var.mo14732m(), h80Var), h80Var.mo14731n(), (View) m11539H(h80Var.mo14733l()), h80Var.mo14743a(), h80Var.mo14742d(), h80Var.zzg(), h80Var.mo14730o(), h80Var.zzi(), (View) m11539H(h80Var.mo14735k()), h80Var.mo14728s(), h80Var.mo14737i(), h80Var.mo14736j(), h80Var.mo14738h(), h80Var.mo14741f(), h80Var.mo14740g(), h80Var.mo14729q());
        } catch (RemoteException e) {
            ei0.m15463g("Failed to get native ad assets from unified ad mapper", e);
            return null;
        }
    }

    /* renamed from: C */
    public static re1 m11544C(e80 e80Var) {
        try {
            qe1 m11538I = m11538I(e80Var.m15553A4(), null);
            AbstractC7199yy m15552V4 = e80Var.m15552V4();
            View view = (View) m11539H(e80Var.m15541s());
            String m15551a = e80Var.m15551a();
            List<?> m15548d = e80Var.m15548d();
            String zzg = e80Var.zzg();
            Bundle m15538y4 = e80Var.m15538y4();
            String zzi = e80Var.zzi();
            View view2 = (View) m11539H(e80Var.zzu());
            AbstractC6253a m15540w = e80Var.m15540w();
            String m15546g = e80Var.m15546g();
            AbstractC6533gz m15547f = e80Var.m15547f();
            re1 re1Var = new re1();
            re1Var.f28891a = 1;
            re1Var.f28892b = m11538I;
            re1Var.f28893c = m15552V4;
            re1Var.f28894d = view;
            re1Var.m11522Y("headline", m15551a);
            re1Var.f28895e = m15548d;
            re1Var.m11522Y("body", zzg);
            re1Var.f28898h = m15538y4;
            re1Var.m11522Y("call_to_action", zzi);
            re1Var.f28903m = view2;
            re1Var.f28905o = m15540w;
            re1Var.m11522Y("advertiser", m15546g);
            re1Var.f28908r = m15547f;
            return re1Var;
        } catch (RemoteException e) {
            ei0.m15463g("Failed to get native ad from content ad mapper", e);
            return null;
        }
    }

    /* renamed from: D */
    public static re1 m11543D(d80 d80Var) {
        try {
            qe1 m11538I = m11538I(d80Var.m15879A4(), null);
            AbstractC7199yy m15875V4 = d80Var.m15875V4();
            View view = (View) m11539H(d80Var.zzu());
            String m15874a = d80Var.m15874a();
            List<?> m15871d = d80Var.m15871d();
            String zzg = d80Var.zzg();
            Bundle m15864s = d80Var.m15864s();
            String zzi = d80Var.zzi();
            View view2 = (View) m11539H(d80Var.m15872a6());
            AbstractC6253a m15878D6 = d80Var.m15878D6();
            String m15869h = d80Var.m15869h();
            String m15868i = d80Var.m15868i();
            double m15873a3 = d80Var.m15873a3();
            AbstractC6533gz m15870f = d80Var.m15870f();
            re1 re1Var = new re1();
            re1Var.f28891a = 2;
            re1Var.f28892b = m11538I;
            re1Var.f28893c = m15875V4;
            re1Var.f28894d = view;
            re1Var.m11522Y("headline", m15874a);
            re1Var.f28895e = m15871d;
            re1Var.m11522Y("body", zzg);
            re1Var.f28898h = m15864s;
            re1Var.m11522Y("call_to_action", zzi);
            re1Var.f28903m = view2;
            re1Var.f28905o = m15878D6;
            re1Var.m11522Y("store", m15869h);
            re1Var.m11522Y("price", m15868i);
            re1Var.f28906p = m15873a3;
            re1Var.f28907q = m15870f;
            return re1Var;
        } catch (RemoteException e) {
            ei0.m15463g("Failed to get native ad from app install ad mapper", e);
            return null;
        }
    }

    /* renamed from: E */
    public static re1 m11542E(d80 d80Var) {
        try {
            return m11540G(m11538I(d80Var.m15879A4(), null), d80Var.m15875V4(), (View) m11539H(d80Var.zzu()), d80Var.m15874a(), d80Var.m15871d(), d80Var.zzg(), d80Var.m15864s(), d80Var.zzi(), (View) m11539H(d80Var.m15872a6()), d80Var.m15878D6(), d80Var.m15869h(), d80Var.m15868i(), d80Var.m15873a3(), d80Var.m15870f(), null, 0.0f);
        } catch (RemoteException e) {
            ei0.m15463g("Failed to get native ad assets from app install ad mapper", e);
            return null;
        }
    }

    /* renamed from: F */
    public static re1 m11541F(e80 e80Var) {
        try {
            return m11540G(m11538I(e80Var.m15553A4(), null), e80Var.m15552V4(), (View) m11539H(e80Var.m15541s()), e80Var.m15551a(), e80Var.m15548d(), e80Var.zzg(), e80Var.m15538y4(), e80Var.zzi(), (View) m11539H(e80Var.zzu()), e80Var.m15540w(), null, null, -1.0d, e80Var.m15547f(), e80Var.m15546g(), 0.0f);
        } catch (RemoteException e) {
            ei0.m15463g("Failed to get native ad assets from content ad mapper", e);
            return null;
        }
    }

    /* renamed from: G */
    private static re1 m11540G(AbstractC6640ju abstractC6640ju, AbstractC7199yy abstractC7199yy, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, AbstractC6253a abstractC6253a, String str4, String str5, double d, AbstractC6533gz abstractC6533gz, String str6, float f) {
        re1 re1Var = new re1();
        re1Var.f28891a = 6;
        re1Var.f28892b = abstractC6640ju;
        re1Var.f28893c = abstractC7199yy;
        re1Var.f28894d = view;
        re1Var.m11522Y("headline", str);
        re1Var.f28895e = list;
        re1Var.m11522Y("body", str2);
        re1Var.f28898h = bundle;
        re1Var.m11522Y("call_to_action", str3);
        re1Var.f28903m = view2;
        re1Var.f28905o = abstractC6253a;
        re1Var.m11522Y("store", str4);
        re1Var.m11522Y("price", str5);
        re1Var.f28906p = d;
        re1Var.f28907q = abstractC6533gz;
        re1Var.m11522Y("advertiser", str6);
        re1Var.m11519a0(f);
        return re1Var;
    }

    /* renamed from: H */
    private static <T> T m11539H(AbstractC6253a abstractC6253a) {
        if (abstractC6253a == null) {
            return null;
        }
        return (T) BinderC6255b.m16745J0(abstractC6253a);
    }

    /* renamed from: I */
    private static qe1 m11538I(AbstractC6640ju abstractC6640ju, h80 h80Var) {
        if (abstractC6640ju == null) {
            return null;
        }
        return new qe1(abstractC6640ju, h80Var);
    }

    /* renamed from: A */
    public final void m11546A(int i) {
        synchronized (this) {
            this.f28891a = i;
        }
    }

    /* renamed from: J */
    public final void m11537J(AbstractC6640ju abstractC6640ju) {
        synchronized (this) {
            this.f28892b = abstractC6640ju;
        }
    }

    /* renamed from: K */
    public final void m11536K(AbstractC7199yy abstractC7199yy) {
        synchronized (this) {
            this.f28893c = abstractC7199yy;
        }
    }

    /* renamed from: L */
    public final void m11535L(List<BinderC6940ry> list) {
        synchronized (this) {
            this.f28895e = list;
        }
    }

    /* renamed from: M */
    public final void m11534M(List<BinderC7158xu> list) {
        synchronized (this) {
            this.f28896f = list;
        }
    }

    /* renamed from: N */
    public final void m11533N(BinderC7158xu binderC7158xu) {
        synchronized (this) {
            this.f28897g = binderC7158xu;
        }
    }

    /* renamed from: O */
    public final void m11532O(View view) {
        synchronized (this) {
            this.f28903m = view;
        }
    }

    /* renamed from: P */
    public final void m11531P(View view) {
        synchronized (this) {
            this.f28904n = view;
        }
    }

    /* renamed from: Q */
    public final void m11530Q(double d) {
        synchronized (this) {
            this.f28906p = d;
        }
    }

    /* renamed from: R */
    public final void m11529R(AbstractC6533gz abstractC6533gz) {
        synchronized (this) {
            this.f28907q = abstractC6533gz;
        }
    }

    /* renamed from: S */
    public final void m11528S(AbstractC6533gz abstractC6533gz) {
        synchronized (this) {
            this.f28908r = abstractC6533gz;
        }
    }

    /* renamed from: T */
    public final void m11527T(String str) {
        synchronized (this) {
            this.f28909s = str;
        }
    }

    /* renamed from: U */
    public final void m11526U(wn0 wn0Var) {
        synchronized (this) {
            this.f28899i = wn0Var;
        }
    }

    /* renamed from: V */
    public final void m11525V(wn0 wn0Var) {
        synchronized (this) {
            this.f28900j = wn0Var;
        }
    }

    /* renamed from: W */
    public final void m11524W(wn0 wn0Var) {
        synchronized (this) {
            this.f28901k = wn0Var;
        }
    }

    /* renamed from: X */
    public final void m11523X(AbstractC6253a abstractC6253a) {
        synchronized (this) {
            this.f28902l = abstractC6253a;
        }
    }

    /* renamed from: Y */
    public final void m11522Y(String str, String str2) {
        synchronized (this) {
            if (str2 == null) {
                this.f28911u.remove(str);
            } else {
                this.f28911u.put(str, str2);
            }
        }
    }

    /* renamed from: Z */
    public final void m11521Z(String str, BinderC6940ry binderC6940ry) {
        synchronized (this) {
            if (binderC6940ry == null) {
                this.f28910t.remove(str);
            } else {
                this.f28910t.put(str, binderC6940ry);
            }
        }
    }

    /* renamed from: a */
    public final List<?> m11520a() {
        List<?> list;
        synchronized (this) {
            list = this.f28895e;
        }
        return list;
    }

    /* renamed from: a0 */
    public final void m11519a0(float f) {
        synchronized (this) {
            this.f28912v = f;
        }
    }

    /* renamed from: b */
    public final AbstractC6533gz m11518b() {
        List<?> list = this.f28895e;
        if (list == null || list.size() == 0) {
            return null;
        }
        Object obj = this.f28895e.get(0);
        if (!(obj instanceof IBinder)) {
            return null;
        }
        return AbstractBinderC6496fz.m15025E6((IBinder) obj);
    }

    /* renamed from: b0 */
    public final void m11517b0(String str) {
        synchronized (this) {
            this.f28913w = str;
        }
    }

    /* renamed from: c */
    public final List<BinderC7158xu> m11516c() {
        List<BinderC7158xu> list;
        synchronized (this) {
            list = this.f28896f;
        }
        return list;
    }

    /* renamed from: c0 */
    public final String m11515c0(String str) {
        String str2;
        synchronized (this) {
            str2 = this.f28911u.get(str);
        }
        return str2;
    }

    /* renamed from: d */
    public final BinderC7158xu m11514d() {
        BinderC7158xu binderC7158xu;
        synchronized (this) {
            binderC7158xu = this.f28897g;
        }
        return binderC7158xu;
    }

    /* renamed from: d0 */
    public final int m11513d0() {
        int i;
        synchronized (this) {
            i = this.f28891a;
        }
        return i;
    }

    /* renamed from: e */
    public final String m11512e() {
        String m11515c0;
        synchronized (this) {
            m11515c0 = m11515c0("body");
        }
        return m11515c0;
    }

    /* renamed from: e0 */
    public final AbstractC6640ju m11511e0() {
        AbstractC6640ju abstractC6640ju;
        synchronized (this) {
            abstractC6640ju = this.f28892b;
        }
        return abstractC6640ju;
    }

    /* renamed from: f */
    public final Bundle m11510f() {
        Bundle bundle;
        synchronized (this) {
            if (this.f28898h == null) {
                this.f28898h = new Bundle();
            }
            bundle = this.f28898h;
        }
        return bundle;
    }

    /* renamed from: f0 */
    public final AbstractC7199yy m11509f0() {
        AbstractC7199yy abstractC7199yy;
        synchronized (this) {
            abstractC7199yy = this.f28893c;
        }
        return abstractC7199yy;
    }

    /* renamed from: g */
    public final String m11508g() {
        String m11515c0;
        synchronized (this) {
            m11515c0 = m11515c0("call_to_action");
        }
        return m11515c0;
    }

    /* renamed from: g0 */
    public final View m11507g0() {
        View view;
        synchronized (this) {
            view = this.f28894d;
        }
        return view;
    }

    /* renamed from: h */
    public final View m11506h() {
        View view;
        synchronized (this) {
            view = this.f28903m;
        }
        return view;
    }

    /* renamed from: h0 */
    public final String m11505h0() {
        String m11515c0;
        synchronized (this) {
            m11515c0 = m11515c0("headline");
        }
        return m11515c0;
    }

    /* renamed from: i */
    public final View m11504i() {
        View view;
        synchronized (this) {
            view = this.f28904n;
        }
        return view;
    }

    /* renamed from: j */
    public final AbstractC6253a m11503j() {
        AbstractC6253a abstractC6253a;
        synchronized (this) {
            abstractC6253a = this.f28905o;
        }
        return abstractC6253a;
    }

    /* renamed from: k */
    public final String m11502k() {
        String m11515c0;
        synchronized (this) {
            m11515c0 = m11515c0("store");
        }
        return m11515c0;
    }

    /* renamed from: l */
    public final String m11501l() {
        String m11515c0;
        synchronized (this) {
            m11515c0 = m11515c0("price");
        }
        return m11515c0;
    }

    /* renamed from: m */
    public final double m11500m() {
        double d;
        synchronized (this) {
            d = this.f28906p;
        }
        return d;
    }

    /* renamed from: n */
    public final AbstractC6533gz m11499n() {
        AbstractC6533gz abstractC6533gz;
        synchronized (this) {
            abstractC6533gz = this.f28907q;
        }
        return abstractC6533gz;
    }

    /* renamed from: o */
    public final String m11498o() {
        String m11515c0;
        synchronized (this) {
            m11515c0 = m11515c0("advertiser");
        }
        return m11515c0;
    }

    /* renamed from: p */
    public final AbstractC6533gz m11497p() {
        AbstractC6533gz abstractC6533gz;
        synchronized (this) {
            abstractC6533gz = this.f28908r;
        }
        return abstractC6533gz;
    }

    /* renamed from: q */
    public final String m11496q() {
        String str;
        synchronized (this) {
            str = this.f28909s;
        }
        return str;
    }

    /* renamed from: r */
    public final wn0 m11495r() {
        wn0 wn0Var;
        synchronized (this) {
            wn0Var = this.f28899i;
        }
        return wn0Var;
    }

    /* renamed from: s */
    public final wn0 m11494s() {
        wn0 wn0Var;
        synchronized (this) {
            wn0Var = this.f28900j;
        }
        return wn0Var;
    }

    /* renamed from: t */
    public final wn0 m11493t() {
        wn0 wn0Var;
        synchronized (this) {
            wn0Var = this.f28901k;
        }
        return wn0Var;
    }

    /* renamed from: u */
    public final AbstractC6253a m11492u() {
        AbstractC6253a abstractC6253a;
        synchronized (this) {
            abstractC6253a = this.f28902l;
        }
        return abstractC6253a;
    }

    /* renamed from: v */
    public final C1502g<String, BinderC6940ry> m11491v() {
        C1502g<String, BinderC6940ry> c1502g;
        synchronized (this) {
            c1502g = this.f28910t;
        }
        return c1502g;
    }

    /* renamed from: w */
    public final float m11490w() {
        float f;
        synchronized (this) {
            f = this.f28912v;
        }
        return f;
    }

    /* renamed from: x */
    public final String m11489x() {
        String str;
        synchronized (this) {
            str = this.f28913w;
        }
        return str;
    }

    /* renamed from: y */
    public final C1502g<String, String> m11488y() {
        C1502g<String, String> c1502g;
        synchronized (this) {
            c1502g = this.f28911u;
        }
        return c1502g;
    }

    /* renamed from: z */
    public final void m11487z() {
        synchronized (this) {
            wn0 wn0Var = this.f28899i;
            if (wn0Var != null) {
                wn0Var.destroy();
                this.f28899i = null;
            }
            wn0 wn0Var2 = this.f28900j;
            if (wn0Var2 != null) {
                wn0Var2.destroy();
                this.f28900j = null;
            }
            wn0 wn0Var3 = this.f28901k;
            if (wn0Var3 != null) {
                wn0Var3.destroy();
                this.f28901k = null;
            }
            this.f28902l = null;
            this.f28910t.clear();
            this.f28911u.clear();
            this.f28892b = null;
            this.f28893c = null;
            this.f28894d = null;
            this.f28895e = null;
            this.f28898h = null;
            this.f28903m = null;
            this.f28904n = null;
            this.f28905o = null;
            this.f28907q = null;
            this.f28908r = null;
            this.f28909s = null;
        }
    }
}
