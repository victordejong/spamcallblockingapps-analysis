package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import androidx.p013b.C0386g;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ayx.class */
public final class ayx {

    /* renamed from: a */
    private int f10650a;

    /* renamed from: b */
    private eba f10651b;

    /* renamed from: c */
    private AbstractC2837bn f10652c;

    /* renamed from: d */
    private View f10653d;

    /* renamed from: e */
    private List<?> f10654e;

    /* renamed from: g */
    private ebu f10656g;

    /* renamed from: h */
    private Bundle f10657h;

    /* renamed from: i */
    private act f10658i;

    /* renamed from: j */
    private act f10659j;

    /* renamed from: k */
    private AbstractC2731a f10660k;

    /* renamed from: l */
    private View f10661l;

    /* renamed from: m */
    private AbstractC2731a f10662m;

    /* renamed from: n */
    private double f10663n;

    /* renamed from: o */
    private AbstractC2844bu f10664o;

    /* renamed from: p */
    private AbstractC2844bu f10665p;

    /* renamed from: q */
    private String f10666q;

    /* renamed from: t */
    private float f10669t;

    /* renamed from: u */
    private String f10670u;

    /* renamed from: r */
    private C0386g<String, BinderC2831bh> f10667r = new C0386g<>();

    /* renamed from: s */
    private C0386g<String, String> f10668s = new C0386g<>();

    /* renamed from: f */
    private List<ebu> f10655f = Collections.emptyList();

    /* renamed from: a */
    private static ayu m12272a(eba ebaVar, AbstractC3297le abstractC3297le) {
        return ebaVar == null ? null : new ayu(ebaVar, abstractC3297le);
    }

    /* renamed from: a */
    private static ayx m12273a(eba ebaVar, AbstractC2837bn abstractC2837bn, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, AbstractC2731a abstractC2731a, String str4, String str5, double d, AbstractC2844bu abstractC2844bu, String str6, float f) {
        ayx ayxVar = new ayx();
        ayxVar.f10650a = 6;
        ayxVar.f10651b = ebaVar;
        ayxVar.f10652c = abstractC2837bn;
        ayxVar.f10653d = view;
        ayxVar.m12265a("headline", str);
        ayxVar.f10654e = list;
        ayxVar.m12265a("body", str2);
        ayxVar.f10657h = bundle;
        ayxVar.m12265a("call_to_action", str3);
        ayxVar.f10661l = view2;
        ayxVar.f10662m = abstractC2731a;
        ayxVar.m12265a("store", str4);
        ayxVar.m12265a("price", str5);
        ayxVar.f10663n = d;
        ayxVar.f10664o = abstractC2844bu;
        ayxVar.m12265a("advertiser", str6);
        ayxVar.m12281a(f);
        return ayxVar;
    }

    /* renamed from: a */
    public static ayx m12270a(AbstractC3289kx abstractC3289kx) {
        ayx ayxVar;
        try {
            ayu m12272a = m12272a(abstractC3289kx.mo7596m(), (AbstractC3297le) null);
            AbstractC2837bn mo7594o = abstractC3289kx.mo7594o();
            View view = (View) m12262b(abstractC3289kx.mo7595n());
            String mo7612a = abstractC3289kx.mo7612a();
            List<?> mo7609b = abstractC3289kx.mo7609b();
            String mo7607c = abstractC3289kx.mo7607c();
            Bundle mo7597l = abstractC3289kx.mo7597l();
            String mo7604e = abstractC3289kx.mo7604e();
            View view2 = (View) m12262b(abstractC3289kx.mo7593p());
            AbstractC2731a mo7592q = abstractC3289kx.mo7592q();
            String mo7602g = abstractC3289kx.mo7602g();
            String mo7601h = abstractC3289kx.mo7601h();
            double mo7603f = abstractC3289kx.mo7603f();
            AbstractC2844bu mo7605d = abstractC3289kx.mo7605d();
            ayxVar = new ayx();
            ayxVar.f10650a = 2;
            ayxVar.f10651b = m12272a;
            ayxVar.f10652c = mo7594o;
            ayxVar.f10653d = view;
            ayxVar.m12265a("headline", mo7612a);
            ayxVar.f10654e = mo7609b;
            ayxVar.m12265a("body", mo7607c);
            ayxVar.f10657h = mo7597l;
            ayxVar.m12265a("call_to_action", mo7604e);
            ayxVar.f10661l = view2;
            ayxVar.f10662m = mo7592q;
            ayxVar.m12265a("store", mo7602g);
            ayxVar.m12265a("price", mo7601h);
            ayxVar.f10663n = mo7603f;
            ayxVar.f10664o = mo7605d;
        } catch (RemoteException e) {
            C3556uu.m6746d("Failed to get native ad from app install ad mapper", e);
            ayxVar = null;
        }
        return ayxVar;
    }

    /* renamed from: a */
    public static ayx m12269a(AbstractC3296ld abstractC3296ld) {
        ayx ayxVar;
        try {
            ayu m12272a = m12272a(abstractC3296ld.mo7541l(), (AbstractC3297le) null);
            AbstractC2837bn mo7540m = abstractC3296ld.mo7540m();
            View view = (View) m12262b(abstractC3296ld.mo7542k());
            String mo7556a = abstractC3296ld.mo7556a();
            List<?> mo7553b = abstractC3296ld.mo7553b();
            String mo7551c = abstractC3296ld.mo7551c();
            Bundle mo7543j = abstractC3296ld.mo7543j();
            String mo7548e = abstractC3296ld.mo7548e();
            View view2 = (View) m12262b(abstractC3296ld.mo7539n());
            AbstractC2731a mo7538o = abstractC3296ld.mo7538o();
            String mo7547f = abstractC3296ld.mo7547f();
            AbstractC2844bu mo7549d = abstractC3296ld.mo7549d();
            ayxVar = new ayx();
            ayxVar.f10650a = 1;
            ayxVar.f10651b = m12272a;
            ayxVar.f10652c = mo7540m;
            ayxVar.f10653d = view;
            ayxVar.m12265a("headline", mo7556a);
            ayxVar.f10654e = mo7553b;
            ayxVar.m12265a("body", mo7551c);
            ayxVar.f10657h = mo7543j;
            ayxVar.m12265a("call_to_action", mo7548e);
            ayxVar.f10661l = view2;
            ayxVar.f10662m = mo7538o;
            ayxVar.m12265a("advertiser", mo7547f);
            ayxVar.f10665p = mo7549d;
        } catch (RemoteException e) {
            C3556uu.m6746d("Failed to get native ad from content ad mapper", e);
            ayxVar = null;
        }
        return ayxVar;
    }

    /* renamed from: a */
    public static ayx m12268a(AbstractC3297le abstractC3297le) {
        ayx ayxVar;
        try {
            ayxVar = m12273a(m12272a(abstractC3297le.mo7483j(), abstractC3297le), abstractC3297le.mo7482k(), (View) m12262b(abstractC3297le.mo7481l()), abstractC3297le.mo7495a(), abstractC3297le.mo7492b(), abstractC3297le.mo7490c(), abstractC3297le.mo7478o(), abstractC3297le.mo7488e(), (View) m12262b(abstractC3297le.mo7480m()), abstractC3297le.mo7479n(), abstractC3297le.mo7485h(), abstractC3297le.mo7484i(), abstractC3297le.mo7486g(), abstractC3297le.mo7489d(), abstractC3297le.mo7487f(), abstractC3297le.mo7474s());
        } catch (RemoteException e) {
            C3556uu.m6746d("Failed to get native ad assets from unified ad mapper", e);
            ayxVar = null;
        }
        return ayxVar;
    }

    /* renamed from: a */
    private final void m12281a(float f) {
        synchronized (this) {
            this.f10669t = f;
        }
    }

    /* renamed from: b */
    public static ayx m12259b(AbstractC3289kx abstractC3289kx) {
        ayx ayxVar;
        try {
            ayxVar = m12273a(m12272a(abstractC3289kx.mo7596m(), (AbstractC3297le) null), abstractC3289kx.mo7594o(), (View) m12262b(abstractC3289kx.mo7595n()), abstractC3289kx.mo7612a(), abstractC3289kx.mo7609b(), abstractC3289kx.mo7607c(), abstractC3289kx.mo7597l(), abstractC3289kx.mo7604e(), (View) m12262b(abstractC3289kx.mo7593p()), abstractC3289kx.mo7592q(), abstractC3289kx.mo7602g(), abstractC3289kx.mo7601h(), abstractC3289kx.mo7603f(), abstractC3289kx.mo7605d(), null, 0.0f);
        } catch (RemoteException e) {
            C3556uu.m6746d("Failed to get native ad assets from app install ad mapper", e);
            ayxVar = null;
        }
        return ayxVar;
    }

    /* renamed from: b */
    public static ayx m12258b(AbstractC3296ld abstractC3296ld) {
        ayx ayxVar;
        try {
            ayxVar = m12273a(m12272a(abstractC3296ld.mo7541l(), (AbstractC3297le) null), abstractC3296ld.mo7540m(), (View) m12262b(abstractC3296ld.mo7542k()), abstractC3296ld.mo7556a(), abstractC3296ld.mo7553b(), abstractC3296ld.mo7551c(), abstractC3296ld.mo7543j(), abstractC3296ld.mo7548e(), (View) m12262b(abstractC3296ld.mo7539n()), abstractC3296ld.mo7538o(), null, null, -1.0d, abstractC3296ld.mo7549d(), abstractC3296ld.mo7547f(), 0.0f);
        } catch (RemoteException e) {
            C3556uu.m6746d("Failed to get native ad assets from content ad mapper", e);
            ayxVar = null;
        }
        return ayxVar;
    }

    /* renamed from: b */
    private static <T> T m12262b(AbstractC2731a abstractC2731a) {
        return (T) (abstractC2731a == null ? null : BinderC2734b.m13795a(abstractC2731a));
    }

    /* renamed from: c */
    private final String m12254c(String str) {
        String str2;
        synchronized (this) {
            str2 = this.f10668s.get(str);
        }
        return str2;
    }

    /* renamed from: A */
    public final String m12286A() {
        String str;
        synchronized (this) {
            str = this.f10670u;
        }
        return str;
    }

    /* renamed from: B */
    public final C0386g<String, String> m12285B() {
        C0386g<String, String> c0386g;
        synchronized (this) {
            c0386g = this.f10668s;
        }
        return c0386g;
    }

    /* renamed from: C */
    public final void m12284C() {
        synchronized (this) {
            if (this.f10658i != null) {
                this.f10658i.destroy();
                this.f10658i = null;
            }
            if (this.f10659j != null) {
                this.f10659j.destroy();
                this.f10659j = null;
            }
            this.f10660k = null;
            this.f10667r.clear();
            this.f10668s.clear();
            this.f10651b = null;
            this.f10652c = null;
            this.f10653d = null;
            this.f10654e = null;
            this.f10657h = null;
            this.f10661l = null;
            this.f10662m = null;
            this.f10664o = null;
            this.f10665p = null;
            this.f10666q = null;
        }
    }

    /* renamed from: a */
    public final int m12283a() {
        int i;
        synchronized (this) {
            i = this.f10650a;
        }
        return i;
    }

    /* renamed from: a */
    public final void m12282a(double d) {
        synchronized (this) {
            this.f10663n = d;
        }
    }

    /* renamed from: a */
    public final void m12280a(int i) {
        synchronized (this) {
            this.f10650a = i;
        }
    }

    /* renamed from: a */
    public final void m12279a(View view) {
        synchronized (this) {
            this.f10661l = view;
        }
    }

    /* renamed from: a */
    public final void m12278a(AbstractC2731a abstractC2731a) {
        synchronized (this) {
            this.f10660k = abstractC2731a;
        }
    }

    /* renamed from: a */
    public final void m12277a(act actVar) {
        synchronized (this) {
            this.f10658i = actVar;
        }
    }

    /* renamed from: a */
    public final void m12276a(AbstractC2837bn abstractC2837bn) {
        synchronized (this) {
            this.f10652c = abstractC2837bn;
        }
    }

    /* renamed from: a */
    public final void m12275a(AbstractC2844bu abstractC2844bu) {
        synchronized (this) {
            this.f10664o = abstractC2844bu;
        }
    }

    /* renamed from: a */
    public final void m12274a(eba ebaVar) {
        synchronized (this) {
            this.f10651b = ebaVar;
        }
    }

    /* renamed from: a */
    public final void m12271a(ebu ebuVar) {
        synchronized (this) {
            this.f10656g = ebuVar;
        }
    }

    /* renamed from: a */
    public final void m12267a(String str) {
        synchronized (this) {
            this.f10666q = str;
        }
    }

    /* renamed from: a */
    public final void m12266a(String str, BinderC2831bh binderC2831bh) {
        synchronized (this) {
            if (binderC2831bh == null) {
                this.f10667r.remove(str);
            } else {
                this.f10667r.put(str, binderC2831bh);
            }
        }
    }

    /* renamed from: a */
    public final void m12265a(String str, String str2) {
        synchronized (this) {
            if (str2 == null) {
                this.f10668s.remove(str);
            } else {
                this.f10668s.put(str, str2);
            }
        }
    }

    /* renamed from: a */
    public final void m12264a(List<BinderC2831bh> list) {
        synchronized (this) {
            this.f10654e = list;
        }
    }

    /* renamed from: b */
    public final eba m12263b() {
        eba ebaVar;
        synchronized (this) {
            ebaVar = this.f10651b;
        }
        return ebaVar;
    }

    /* renamed from: b */
    public final void m12261b(act actVar) {
        synchronized (this) {
            this.f10659j = actVar;
        }
    }

    /* renamed from: b */
    public final void m12260b(AbstractC2844bu abstractC2844bu) {
        synchronized (this) {
            this.f10665p = abstractC2844bu;
        }
    }

    /* renamed from: b */
    public final void m12257b(String str) {
        synchronized (this) {
            this.f10670u = str;
        }
    }

    /* renamed from: b */
    public final void m12256b(List<ebu> list) {
        synchronized (this) {
            this.f10655f = list;
        }
    }

    /* renamed from: c */
    public final AbstractC2837bn m12255c() {
        AbstractC2837bn abstractC2837bn;
        synchronized (this) {
            abstractC2837bn = this.f10652c;
        }
        return abstractC2837bn;
    }

    /* renamed from: d */
    public final View m12253d() {
        View view;
        synchronized (this) {
            view = this.f10653d;
        }
        return view;
    }

    /* renamed from: e */
    public final String m12252e() {
        String m12254c;
        synchronized (this) {
            m12254c = m12254c("headline");
        }
        return m12254c;
    }

    /* renamed from: f */
    public final List<?> m12251f() {
        List<?> list;
        synchronized (this) {
            list = this.f10654e;
        }
        return list;
    }

    /* renamed from: g */
    public final AbstractC2844bu m12250g() {
        AbstractC2844bu abstractC2844bu;
        if (this.f10654e == null || this.f10654e.size() == 0) {
            abstractC2844bu = null;
        } else {
            Object obj = this.f10654e.get(0);
            abstractC2844bu = obj instanceof IBinder ? AbstractBinderC2848bx.m11567a((IBinder) obj) : null;
        }
        return abstractC2844bu;
    }

    /* renamed from: h */
    public final List<ebu> m12249h() {
        List<ebu> list;
        synchronized (this) {
            list = this.f10655f;
        }
        return list;
    }

    /* renamed from: i */
    public final ebu m12248i() {
        ebu ebuVar;
        synchronized (this) {
            ebuVar = this.f10656g;
        }
        return ebuVar;
    }

    /* renamed from: j */
    public final String m12247j() {
        String m12254c;
        synchronized (this) {
            m12254c = m12254c("body");
        }
        return m12254c;
    }

    /* renamed from: k */
    public final Bundle m12246k() {
        Bundle bundle;
        synchronized (this) {
            if (this.f10657h == null) {
                this.f10657h = new Bundle();
            }
            bundle = this.f10657h;
        }
        return bundle;
    }

    /* renamed from: l */
    public final String m12245l() {
        String m12254c;
        synchronized (this) {
            m12254c = m12254c("call_to_action");
        }
        return m12254c;
    }

    /* renamed from: m */
    public final View m12244m() {
        View view;
        synchronized (this) {
            view = this.f10661l;
        }
        return view;
    }

    /* renamed from: n */
    public final AbstractC2731a m12243n() {
        AbstractC2731a abstractC2731a;
        synchronized (this) {
            abstractC2731a = this.f10662m;
        }
        return abstractC2731a;
    }

    /* renamed from: o */
    public final String m12242o() {
        String m12254c;
        synchronized (this) {
            m12254c = m12254c("store");
        }
        return m12254c;
    }

    /* renamed from: p */
    public final String m12241p() {
        String m12254c;
        synchronized (this) {
            m12254c = m12254c("price");
        }
        return m12254c;
    }

    /* renamed from: q */
    public final double m12240q() {
        double d;
        synchronized (this) {
            d = this.f10663n;
        }
        return d;
    }

    /* renamed from: r */
    public final AbstractC2844bu m12239r() {
        AbstractC2844bu abstractC2844bu;
        synchronized (this) {
            abstractC2844bu = this.f10664o;
        }
        return abstractC2844bu;
    }

    /* renamed from: s */
    public final String m12238s() {
        String m12254c;
        synchronized (this) {
            m12254c = m12254c("advertiser");
        }
        return m12254c;
    }

    /* renamed from: t */
    public final AbstractC2844bu m12237t() {
        AbstractC2844bu abstractC2844bu;
        synchronized (this) {
            abstractC2844bu = this.f10665p;
        }
        return abstractC2844bu;
    }

    /* renamed from: u */
    public final String m12236u() {
        String str;
        synchronized (this) {
            str = this.f10666q;
        }
        return str;
    }

    /* renamed from: v */
    public final act m12235v() {
        act actVar;
        synchronized (this) {
            actVar = this.f10658i;
        }
        return actVar;
    }

    /* renamed from: w */
    public final act m12234w() {
        act actVar;
        synchronized (this) {
            actVar = this.f10659j;
        }
        return actVar;
    }

    /* renamed from: x */
    public final AbstractC2731a m12233x() {
        AbstractC2731a abstractC2731a;
        synchronized (this) {
            abstractC2731a = this.f10660k;
        }
        return abstractC2731a;
    }

    /* renamed from: y */
    public final C0386g<String, BinderC2831bh> m12232y() {
        C0386g<String, BinderC2831bh> c0386g;
        synchronized (this) {
            c0386g = this.f10667r;
        }
        return c0386g;
    }

    /* renamed from: z */
    public final float m12231z() {
        float f;
        synchronized (this) {
            f = this.f10669t;
        }
        return f;
    }
}
