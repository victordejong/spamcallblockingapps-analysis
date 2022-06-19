package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.AbstractC1632a;
import com.google.android.gms.dynamic.b;
import d.e.g;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/si0.class */
public final class si0 {

    /* renamed from: a */
    private int f8447a;

    /* renamed from: b */
    private AbstractC1841m1 f8448b;

    /* renamed from: c */
    private AbstractC2063z5 f8449c;

    /* renamed from: d */
    private View f8450d;

    /* renamed from: e */
    private List<?> f8451e;

    /* renamed from: g */
    private b2 f8453g;

    /* renamed from: h */
    private Bundle f8454h;

    /* renamed from: i */
    private jt f8455i;

    /* renamed from: j */
    private jt f8456j;

    /* renamed from: k */
    private AbstractC1632a f8457k;

    /* renamed from: l */
    private View f8458l;

    /* renamed from: m */
    private AbstractC1632a f8459m;

    /* renamed from: n */
    private double f8460n;

    /* renamed from: o */
    private AbstractC1746g6 f8461o;

    /* renamed from: p */
    private AbstractC1746g6 f8462p;

    /* renamed from: q */
    private String f8463q;

    /* renamed from: t */
    private float f8466t;

    /* renamed from: u */
    private String f8467u;

    /* renamed from: r */
    private final g<String, r5> f8464r = new g<>();

    /* renamed from: s */
    private final g<String, String> f8465s = new g<>();

    /* renamed from: f */
    private List<b2> f8452f = Collections.emptyList();

    /* renamed from: B */
    public static si0 m5744B(te teVar) {
        try {
            return m5743C(m5741E(teVar.T4(), null), teVar.u5(), (View) m5742D(teVar.w()), teVar.a(), teVar.d(), teVar.g(), teVar.M4(), teVar.i(), (View) m5742D(teVar.t()), teVar.D(), null, null, -1.0d, teVar.e(), teVar.h(), 0.0f);
        } catch (RemoteException e) {
            C1894po.m6179g("Failed to get native ad assets from content ad mapper", e);
            return null;
        }
    }

    /* renamed from: C */
    private static si0 m5743C(AbstractC1841m1 abstractC1841m1, AbstractC2063z5 abstractC2063z5, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, AbstractC1632a abstractC1632a, String str4, String str5, double d, AbstractC1746g6 abstractC1746g6, String str6, float f) {
        si0 si0Var = new si0();
        si0Var.f8447a = 6;
        si0Var.f8448b = abstractC1841m1;
        si0Var.f8449c = abstractC2063z5;
        si0Var.f8450d = view;
        si0Var.m5727S("headline", str);
        si0Var.f8451e = list;
        si0Var.m5727S("body", str2);
        si0Var.f8454h = bundle;
        si0Var.m5727S("call_to_action", str3);
        si0Var.f8458l = view2;
        si0Var.f8459m = abstractC1632a;
        si0Var.m5727S("store", str4);
        si0Var.m5727S("price", str5);
        si0Var.f8460n = d;
        si0Var.f8461o = abstractC1746g6;
        si0Var.m5727S("advertiser", str6);
        si0Var.m5725U(f);
        return si0Var;
    }

    /* renamed from: D */
    private static <T> T m5742D(AbstractC1632a abstractC1632a) {
        if (abstractC1632a == null) {
            return null;
        }
        return (T) b.M1(abstractC1632a);
    }

    /* renamed from: E */
    private static ri0 m5741E(AbstractC1841m1 abstractC1841m1, AbstractC2016we abstractC2016we) {
        if (abstractC1841m1 == null) {
            return null;
        }
        return new ri0(abstractC1841m1, abstractC2016we);
    }

    /* renamed from: w */
    public static si0 m5693w(AbstractC2016we abstractC2016we) {
        try {
            return m5743C(m5741E(abstractC2016we.m5061p(), abstractC2016we), abstractC2016we.m5060q(), (View) m5742D(abstractC2016we.m5063n()), abstractC2016we.m5075a(), abstractC2016we.m5074d(), abstractC2016we.m5072g(), abstractC2016we.m5062o(), abstractC2016we.m5069i(), (View) m5742D(abstractC2016we.m5066l()), abstractC2016we.m5057w(), abstractC2016we.m5067k(), abstractC2016we.m5064m(), abstractC2016we.m5068j(), abstractC2016we.m5073e(), abstractC2016we.m5071h(), abstractC2016we.m5078C());
        } catch (RemoteException e) {
            C1894po.m6179g("Failed to get native ad assets from unified ad mapper", e);
            return null;
        }
    }

    /* renamed from: x */
    public static si0 m5692x(te teVar) {
        try {
            ri0 m5741E = m5741E(teVar.T4(), null);
            AbstractC2063z5 u5 = teVar.u5();
            View view = (View) m5742D(teVar.w());
            String a = teVar.a();
            List<?> d = teVar.d();
            String g = teVar.g();
            Bundle M4 = teVar.M4();
            String i = teVar.i();
            View view2 = (View) m5742D(teVar.t());
            AbstractC1632a D = teVar.D();
            String h = teVar.h();
            AbstractC1746g6 e = teVar.e();
            si0 si0Var = new si0();
            si0Var.f8447a = 1;
            si0Var.f8448b = m5741E;
            si0Var.f8449c = u5;
            si0Var.f8450d = view;
            si0Var.m5727S("headline", a);
            si0Var.f8451e = d;
            si0Var.m5727S("body", g);
            si0Var.f8454h = M4;
            si0Var.m5727S("call_to_action", i);
            si0Var.f8458l = view2;
            si0Var.f8459m = D;
            si0Var.m5727S("advertiser", h);
            si0Var.f8462p = e;
            return si0Var;
        } catch (RemoteException e2) {
            C1894po.m6179g("Failed to get native ad from content ad mapper", e2);
            return null;
        }
    }

    /* renamed from: y */
    public static si0 m5691y(se seVar) {
        try {
            ri0 m5741E = m5741E(seVar.u5(), null);
            AbstractC2063z5 K5 = seVar.K5();
            View view = (View) m5742D(seVar.t());
            String a = seVar.a();
            List<?> d = seVar.d();
            String g = seVar.g();
            Bundle M4 = seVar.M4();
            String i = seVar.i();
            View view2 = (View) m5742D(seVar.y6());
            AbstractC1632a z6 = seVar.z6();
            String j = seVar.j();
            String k = seVar.k();
            double w4 = seVar.w4();
            AbstractC1746g6 e = seVar.e();
            si0 si0Var = new si0();
            si0Var.f8447a = 2;
            si0Var.f8448b = m5741E;
            si0Var.f8449c = K5;
            si0Var.f8450d = view;
            si0Var.m5727S("headline", a);
            si0Var.f8451e = d;
            si0Var.m5727S("body", g);
            si0Var.f8454h = M4;
            si0Var.m5727S("call_to_action", i);
            si0Var.f8458l = view2;
            si0Var.f8459m = z6;
            si0Var.m5727S("store", j);
            si0Var.m5727S("price", k);
            si0Var.f8460n = w4;
            si0Var.f8461o = e;
            return si0Var;
        } catch (RemoteException e2) {
            C1894po.m6179g("Failed to get native ad from app install ad mapper", e2);
            return null;
        }
    }

    /* renamed from: z */
    public static si0 m5690z(se seVar) {
        try {
            return m5743C(m5741E(seVar.u5(), null), seVar.K5(), (View) m5742D(seVar.t()), seVar.a(), seVar.d(), seVar.g(), seVar.M4(), seVar.i(), (View) m5742D(seVar.y6()), seVar.z6(), seVar.j(), seVar.k(), seVar.w4(), seVar.e(), null, 0.0f);
        } catch (RemoteException e) {
            C1894po.m6179g("Failed to get native ad assets from app install ad mapper", e);
            return null;
        }
    }

    /* renamed from: A */
    public final void m5745A(int i) {
        synchronized (this) {
            this.f8447a = i;
        }
    }

    /* renamed from: F */
    public final void m5740F(AbstractC1841m1 abstractC1841m1) {
        synchronized (this) {
            this.f8448b = abstractC1841m1;
        }
    }

    /* renamed from: G */
    public final void m5739G(AbstractC2063z5 abstractC2063z5) {
        synchronized (this) {
            this.f8449c = abstractC2063z5;
        }
    }

    /* renamed from: H */
    public final void m5738H(List<r5> list) {
        synchronized (this) {
            this.f8451e = list;
        }
    }

    /* renamed from: I */
    public final void m5737I(List<b2> list) {
        synchronized (this) {
            this.f8452f = list;
        }
    }

    /* renamed from: J */
    public final void m5736J(b2 b2Var) {
        synchronized (this) {
            this.f8453g = b2Var;
        }
    }

    /* renamed from: K */
    public final void m5735K(View view) {
        synchronized (this) {
            this.f8458l = view;
        }
    }

    /* renamed from: L */
    public final void m5734L(double d) {
        synchronized (this) {
            this.f8460n = d;
        }
    }

    /* renamed from: M */
    public final void m5733M(AbstractC1746g6 abstractC1746g6) {
        synchronized (this) {
            this.f8461o = abstractC1746g6;
        }
    }

    /* renamed from: N */
    public final void m5732N(AbstractC1746g6 abstractC1746g6) {
        synchronized (this) {
            this.f8462p = abstractC1746g6;
        }
    }

    /* renamed from: O */
    public final void m5731O(String str) {
        synchronized (this) {
            this.f8463q = str;
        }
    }

    /* renamed from: P */
    public final void m5730P(jt jtVar) {
        synchronized (this) {
            this.f8455i = jtVar;
        }
    }

    /* renamed from: Q */
    public final void m5729Q(jt jtVar) {
        synchronized (this) {
            this.f8456j = jtVar;
        }
    }

    /* renamed from: R */
    public final void m5728R(AbstractC1632a abstractC1632a) {
        synchronized (this) {
            this.f8457k = abstractC1632a;
        }
    }

    /* renamed from: S */
    public final void m5727S(String str, String str2) {
        synchronized (this) {
            if (str2 == null) {
                this.f8465s.remove(str);
            } else {
                this.f8465s.put(str, str2);
            }
        }
    }

    /* renamed from: T */
    public final void m5726T(String str, r5 r5Var) {
        synchronized (this) {
            if (r5Var == null) {
                this.f8464r.remove(str);
            } else {
                this.f8464r.put(str, r5Var);
            }
        }
    }

    /* renamed from: U */
    public final void m5725U(float f) {
        synchronized (this) {
            this.f8466t = f;
        }
    }

    /* renamed from: V */
    public final void m5724V(String str) {
        synchronized (this) {
            this.f8467u = str;
        }
    }

    /* renamed from: W */
    public final String m5723W(String str) {
        String str2;
        synchronized (this) {
            str2 = (String) this.f8465s.get(str);
        }
        return str2;
    }

    /* renamed from: X */
    public final int m5722X() {
        int i;
        synchronized (this) {
            i = this.f8447a;
        }
        return i;
    }

    /* renamed from: Y */
    public final AbstractC1841m1 m5721Y() {
        AbstractC1841m1 abstractC1841m1;
        synchronized (this) {
            abstractC1841m1 = this.f8448b;
        }
        return abstractC1841m1;
    }

    /* renamed from: Z */
    public final AbstractC2063z5 m5720Z() {
        AbstractC2063z5 abstractC2063z5;
        synchronized (this) {
            abstractC2063z5 = this.f8449c;
        }
        return abstractC2063z5;
    }

    /* renamed from: a */
    public final List<b2> m5719a() {
        List<b2> list;
        synchronized (this) {
            list = this.f8452f;
        }
        return list;
    }

    /* renamed from: a0 */
    public final View m5718a0() {
        View view;
        synchronized (this) {
            view = this.f8450d;
        }
        return view;
    }

    /* renamed from: b */
    public final b2 m5717b() {
        b2 b2Var;
        synchronized (this) {
            b2Var = this.f8453g;
        }
        return b2Var;
    }

    /* renamed from: b0 */
    public final String m5716b0() {
        String m5723W;
        synchronized (this) {
            m5723W = m5723W("headline");
        }
        return m5723W;
    }

    /* renamed from: c */
    public final String m5715c() {
        String m5723W;
        synchronized (this) {
            m5723W = m5723W("body");
        }
        return m5723W;
    }

    /* renamed from: c0 */
    public final List<?> m5714c0() {
        List<?> list;
        synchronized (this) {
            list = this.f8451e;
        }
        return list;
    }

    /* renamed from: d */
    public final Bundle m5713d() {
        Bundle bundle;
        synchronized (this) {
            if (this.f8454h == null) {
                this.f8454h = new Bundle();
            }
            bundle = this.f8454h;
        }
        return bundle;
    }

    /* renamed from: d0 */
    public final AbstractC1746g6 m5712d0() {
        List<?> list = this.f8451e;
        if (list == null || list.size() == 0) {
            return null;
        }
        Object obj = this.f8451e.get(0);
        if (!(obj instanceof IBinder)) {
            return null;
        }
        return f6.z6((IBinder) obj);
    }

    /* renamed from: e */
    public final String m5711e() {
        String m5723W;
        synchronized (this) {
            m5723W = m5723W("call_to_action");
        }
        return m5723W;
    }

    /* renamed from: f */
    public final View m5710f() {
        View view;
        synchronized (this) {
            view = this.f8458l;
        }
        return view;
    }

    /* renamed from: g */
    public final AbstractC1632a m5709g() {
        AbstractC1632a abstractC1632a;
        synchronized (this) {
            abstractC1632a = this.f8459m;
        }
        return abstractC1632a;
    }

    /* renamed from: h */
    public final String m5708h() {
        String m5723W;
        synchronized (this) {
            m5723W = m5723W("store");
        }
        return m5723W;
    }

    /* renamed from: i */
    public final String m5707i() {
        String m5723W;
        synchronized (this) {
            m5723W = m5723W("price");
        }
        return m5723W;
    }

    /* renamed from: j */
    public final double m5706j() {
        double d;
        synchronized (this) {
            d = this.f8460n;
        }
        return d;
    }

    /* renamed from: k */
    public final AbstractC1746g6 m5705k() {
        AbstractC1746g6 abstractC1746g6;
        synchronized (this) {
            abstractC1746g6 = this.f8461o;
        }
        return abstractC1746g6;
    }

    /* renamed from: l */
    public final String m5704l() {
        String m5723W;
        synchronized (this) {
            m5723W = m5723W("advertiser");
        }
        return m5723W;
    }

    /* renamed from: m */
    public final AbstractC1746g6 m5703m() {
        AbstractC1746g6 abstractC1746g6;
        synchronized (this) {
            abstractC1746g6 = this.f8462p;
        }
        return abstractC1746g6;
    }

    /* renamed from: n */
    public final String m5702n() {
        String str;
        synchronized (this) {
            str = this.f8463q;
        }
        return str;
    }

    /* renamed from: o */
    public final jt m5701o() {
        jt jtVar;
        synchronized (this) {
            jtVar = this.f8455i;
        }
        return jtVar;
    }

    /* renamed from: p */
    public final jt m5700p() {
        jt jtVar;
        synchronized (this) {
            jtVar = this.f8456j;
        }
        return jtVar;
    }

    /* renamed from: q */
    public final AbstractC1632a m5699q() {
        AbstractC1632a abstractC1632a;
        synchronized (this) {
            abstractC1632a = this.f8457k;
        }
        return abstractC1632a;
    }

    /* renamed from: r */
    public final g<String, r5> m5698r() {
        g<String, r5> gVar;
        synchronized (this) {
            gVar = this.f8464r;
        }
        return gVar;
    }

    /* renamed from: s */
    public final float m5697s() {
        float f;
        synchronized (this) {
            f = this.f8466t;
        }
        return f;
    }

    /* renamed from: t */
    public final String m5696t() {
        String str;
        synchronized (this) {
            str = this.f8467u;
        }
        return str;
    }

    /* renamed from: u */
    public final g<String, String> m5695u() {
        g<String, String> gVar;
        synchronized (this) {
            gVar = this.f8465s;
        }
        return gVar;
    }

    /* renamed from: v */
    public final void m5694v() {
        synchronized (this) {
            jt jtVar = this.f8455i;
            if (jtVar != null) {
                jtVar.destroy();
                this.f8455i = null;
            }
            jt jtVar2 = this.f8456j;
            if (jtVar2 != null) {
                jtVar2.destroy();
                this.f8456j = null;
            }
            this.f8457k = null;
            this.f8464r.clear();
            this.f8465s.clear();
            this.f8448b = null;
            this.f8449c = null;
            this.f8450d = null;
            this.f8451e = null;
            this.f8454h = null;
            this.f8458l = null;
            this.f8459m = null;
            this.f8461o = null;
            this.f8462p = null;
            this.f8463q = null;
        }
    }
}
