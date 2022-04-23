package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.List;
import p012b.p035f.C0793g;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcei.class */
public final class zzcei {

    /* renamed from: a */
    public int f25846a;

    /* renamed from: b */
    public zzyo f25847b;

    /* renamed from: c */
    public zzadw f25848c;

    /* renamed from: d */
    public View f25849d;

    /* renamed from: e */
    public List<?> f25850e;

    /* renamed from: g */
    public zzzk f25852g;

    /* renamed from: h */
    public Bundle f25853h;

    /* renamed from: i */
    public zzbgj f25854i;

    /* renamed from: j */
    public zzbgj f25855j;

    /* renamed from: k */
    public IObjectWrapper f25856k;

    /* renamed from: l */
    public View f25857l;

    /* renamed from: m */
    public IObjectWrapper f25858m;

    /* renamed from: n */
    public double f25859n;

    /* renamed from: o */
    public zzaee f25860o;

    /* renamed from: p */
    public zzaee f25861p;

    /* renamed from: q */
    public String f25862q;

    /* renamed from: t */
    public float f25865t;

    /* renamed from: u */
    public String f25866u;

    /* renamed from: r */
    public C0793g<String, zzadq> f25863r = new C0793g<>();

    /* renamed from: s */
    public C0793g<String, String> f25864s = new C0793g<>();

    /* renamed from: f */
    public List<zzzk> f25851f = Collections.emptyList();

    /* renamed from: a */
    public static zzcef m14709a(zzyo zzyoVar, zzanu zzanuVar) {
        if (zzyoVar == null) {
            return null;
        }
        return new zzcef(zzyoVar, zzanuVar);
    }

    /* renamed from: a */
    public static zzcei m14715a(zzano zzanoVar) {
        try {
            zzcef a = m14709a(zzanoVar.getVideoController(), (zzanu) null);
            zzadw d = zzanoVar.mo16571d();
            View view = (View) m14702b(zzanoVar.mo16576R());
            String e = zzanoVar.mo16570e();
            List<?> i = zzanoVar.mo16565i();
            String g = zzanoVar.mo16567g();
            Bundle extras = zzanoVar.getExtras();
            String f = zzanoVar.mo16568f();
            View view2 = (View) m14702b(zzanoVar.mo16577N());
            IObjectWrapper h = zzanoVar.mo16566h();
            String D = zzanoVar.mo16579D();
            String s = zzanoVar.mo16562s();
            double starRating = zzanoVar.getStarRating();
            zzaee q = zzanoVar.mo16563q();
            zzcei zzceiVar = new zzcei();
            zzceiVar.f25846a = 2;
            zzceiVar.f25847b = a;
            zzceiVar.f25848c = d;
            zzceiVar.f25849d = view;
            zzceiVar.m14705a("headline", e);
            zzceiVar.f25850e = i;
            zzceiVar.m14705a("body", g);
            zzceiVar.f25853h = extras;
            zzceiVar.m14705a("call_to_action", f);
            zzceiVar.f25857l = view2;
            zzceiVar.f25858m = h;
            zzceiVar.m14705a("store", D);
            zzceiVar.m14705a("price", s);
            zzceiVar.f25859n = starRating;
            zzceiVar.f25860o = q;
            return zzceiVar;
        } catch (RemoteException e2) {
            zzbbq.m15853c("Failed to get native ad from app install ad mapper", e2);
            return null;
        }
    }

    /* renamed from: a */
    public static zzcei m14714a(zzanp zzanpVar) {
        try {
            zzcef a = m14709a(zzanpVar.getVideoController(), (zzanu) null);
            zzadw d = zzanpVar.mo16588d();
            View view = (View) m14702b(zzanpVar.mo16593R());
            String e = zzanpVar.mo16587e();
            List<?> i = zzanpVar.mo16582i();
            String g = zzanpVar.mo16584g();
            Bundle extras = zzanpVar.getExtras();
            String f = zzanpVar.mo16585f();
            View view2 = (View) m14702b(zzanpVar.mo16594N());
            IObjectWrapper h = zzanpVar.mo16583h();
            String C = zzanpVar.mo16596C();
            zzaee p0 = zzanpVar.mo16580p0();
            zzcei zzceiVar = new zzcei();
            zzceiVar.f25846a = 1;
            zzceiVar.f25847b = a;
            zzceiVar.f25848c = d;
            zzceiVar.f25849d = view;
            zzceiVar.m14705a("headline", e);
            zzceiVar.f25850e = i;
            zzceiVar.m14705a("body", g);
            zzceiVar.f25853h = extras;
            zzceiVar.m14705a("call_to_action", f);
            zzceiVar.f25857l = view2;
            zzceiVar.f25858m = h;
            zzceiVar.m14705a("advertiser", C);
            zzceiVar.f25861p = p0;
            return zzceiVar;
        } catch (RemoteException e2) {
            zzbbq.m15853c("Failed to get native ad from content ad mapper", e2);
            return null;
        }
    }

    /* renamed from: a */
    public static zzcei m14713a(zzanu zzanuVar) {
        try {
            return m14710a(m14709a(zzanuVar.getVideoController(), zzanuVar), zzanuVar.mo16507d(), (View) m14702b(zzanuVar.mo16512R()), zzanuVar.mo16506e(), zzanuVar.mo16502i(), zzanuVar.mo16504g(), zzanuVar.getExtras(), zzanuVar.mo16505f(), (View) m14702b(zzanuVar.mo16514N()), zzanuVar.mo16503h(), zzanuVar.mo16517D(), zzanuVar.mo16499s(), zzanuVar.getStarRating(), zzanuVar.mo16500q(), zzanuVar.mo16518C(), zzanuVar.mo16516D0());
        } catch (RemoteException e) {
            zzbbq.m15853c("Failed to get native ad assets from unified ad mapper", e);
            return null;
        }
    }

    /* renamed from: a */
    public static zzcei m14710a(zzyo zzyoVar, zzadw zzadwVar, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, IObjectWrapper iObjectWrapper, String str4, String str5, double d, zzaee zzaeeVar, String str6, float f) {
        zzcei zzceiVar = new zzcei();
        zzceiVar.f25846a = 6;
        zzceiVar.f25847b = zzyoVar;
        zzceiVar.f25848c = zzadwVar;
        zzceiVar.f25849d = view;
        zzceiVar.m14705a("headline", str);
        zzceiVar.f25850e = list;
        zzceiVar.m14705a("body", str2);
        zzceiVar.f25853h = bundle;
        zzceiVar.m14705a("call_to_action", str3);
        zzceiVar.f25857l = view2;
        zzceiVar.f25858m = iObjectWrapper;
        zzceiVar.m14705a("store", str4);
        zzceiVar.m14705a("price", str5);
        zzceiVar.f25859n = d;
        zzceiVar.f25860o = zzaeeVar;
        zzceiVar.m14705a("advertiser", str6);
        zzceiVar.m14721a(f);
        return zzceiVar;
    }

    /* renamed from: b */
    public static zzcei m14700b(zzano zzanoVar) {
        try {
            return m14710a(m14709a(zzanoVar.getVideoController(), (zzanu) null), zzanoVar.mo16571d(), (View) m14702b(zzanoVar.mo16576R()), zzanoVar.mo16570e(), zzanoVar.mo16565i(), zzanoVar.mo16567g(), zzanoVar.getExtras(), zzanoVar.mo16568f(), (View) m14702b(zzanoVar.mo16577N()), zzanoVar.mo16566h(), zzanoVar.mo16579D(), zzanoVar.mo16562s(), zzanoVar.getStarRating(), zzanoVar.mo16563q(), null, 0.0f);
        } catch (RemoteException e) {
            zzbbq.m15853c("Failed to get native ad assets from app install ad mapper", e);
            return null;
        }
    }

    /* renamed from: b */
    public static zzcei m14699b(zzanp zzanpVar) {
        try {
            return m14710a(m14709a(zzanpVar.getVideoController(), (zzanu) null), zzanpVar.mo16588d(), (View) m14702b(zzanpVar.mo16593R()), zzanpVar.mo16587e(), zzanpVar.mo16582i(), zzanpVar.mo16584g(), zzanpVar.getExtras(), zzanpVar.mo16585f(), (View) m14702b(zzanpVar.mo16594N()), zzanpVar.mo16583h(), null, null, -1.0d, zzanpVar.mo16580p0(), zzanpVar.mo16596C(), 0.0f);
        } catch (RemoteException e) {
            zzbbq.m15853c("Failed to get native ad assets from content ad mapper", e);
            return null;
        }
    }

    /* renamed from: b */
    public static <T> T m14702b(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return null;
        }
        return (T) ObjectWrapper.m17021Q(iObjectWrapper);
    }

    /* renamed from: A */
    public final zzadw m14726A() {
        zzadw zzadwVar;
        synchronized (this) {
            zzadwVar = this.f25848c;
        }
        return zzadwVar;
    }

    /* renamed from: B */
    public final IObjectWrapper m14725B() {
        IObjectWrapper iObjectWrapper;
        synchronized (this) {
            iObjectWrapper = this.f25858m;
        }
        return iObjectWrapper;
    }

    /* renamed from: C */
    public final zzaee m14724C() {
        zzaee zzaeeVar;
        synchronized (this) {
            zzaeeVar = this.f25861p;
        }
        return zzaeeVar;
    }

    /* renamed from: a */
    public final void m14723a() {
        synchronized (this) {
            if (this.f25854i != null) {
                this.f25854i.destroy();
                this.f25854i = null;
            }
            if (this.f25855j != null) {
                this.f25855j.destroy();
                this.f25855j = null;
            }
            this.f25856k = null;
            this.f25863r.clear();
            this.f25864s.clear();
            this.f25847b = null;
            this.f25848c = null;
            this.f25849d = null;
            this.f25850e = null;
            this.f25853h = null;
            this.f25857l = null;
            this.f25858m = null;
            this.f25860o = null;
            this.f25861p = null;
            this.f25862q = null;
        }
    }

    /* renamed from: a */
    public final void m14722a(double d) {
        synchronized (this) {
            this.f25859n = d;
        }
    }

    /* renamed from: a */
    public final void m14721a(float f) {
        synchronized (this) {
            this.f25865t = f;
        }
    }

    /* renamed from: a */
    public final void m14720a(int i) {
        synchronized (this) {
            this.f25846a = i;
        }
    }

    /* renamed from: a */
    public final void m14719a(View view) {
        synchronized (this) {
            this.f25857l = view;
        }
    }

    /* renamed from: a */
    public final void m14718a(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            this.f25856k = iObjectWrapper;
        }
    }

    /* renamed from: a */
    public final void m14717a(zzadw zzadwVar) {
        synchronized (this) {
            this.f25848c = zzadwVar;
        }
    }

    /* renamed from: a */
    public final void m14716a(zzaee zzaeeVar) {
        synchronized (this) {
            this.f25860o = zzaeeVar;
        }
    }

    /* renamed from: a */
    public final void m14712a(zzbgj zzbgjVar) {
        synchronized (this) {
            this.f25854i = zzbgjVar;
        }
    }

    /* renamed from: a */
    public final void m14711a(zzyo zzyoVar) {
        synchronized (this) {
            this.f25847b = zzyoVar;
        }
    }

    /* renamed from: a */
    public final void m14708a(zzzk zzzkVar) {
        synchronized (this) {
            this.f25852g = zzzkVar;
        }
    }

    /* renamed from: a */
    public final void m14707a(String str) {
        synchronized (this) {
            this.f25862q = str;
        }
    }

    /* renamed from: a */
    public final void m14706a(String str, zzadq zzadqVar) {
        synchronized (this) {
            if (zzadqVar == null) {
                this.f25863r.remove(str);
            } else {
                this.f25863r.put(str, zzadqVar);
            }
        }
    }

    /* renamed from: a */
    public final void m14705a(String str, String str2) {
        synchronized (this) {
            if (str2 == null) {
                this.f25864s.remove(str);
            } else {
                this.f25864s.put(str, str2);
            }
        }
    }

    /* renamed from: a */
    public final void m14704a(List<zzadq> list) {
        synchronized (this) {
            this.f25850e = list;
        }
    }

    /* renamed from: b */
    public final String m14703b() {
        String c;
        synchronized (this) {
            c = m14694c("advertiser");
        }
        return c;
    }

    /* renamed from: b */
    public final void m14701b(zzaee zzaeeVar) {
        synchronized (this) {
            this.f25861p = zzaeeVar;
        }
    }

    /* renamed from: b */
    public final void m14698b(zzbgj zzbgjVar) {
        synchronized (this) {
            this.f25855j = zzbgjVar;
        }
    }

    /* renamed from: b */
    public final void m14697b(String str) {
        synchronized (this) {
            this.f25866u = str;
        }
    }

    /* renamed from: b */
    public final void m14696b(List<zzzk> list) {
        synchronized (this) {
            this.f25851f = list;
        }
    }

    /* renamed from: c */
    public final String m14695c() {
        String c;
        synchronized (this) {
            c = m14694c("body");
        }
        return c;
    }

    /* renamed from: c */
    public final String m14694c(String str) {
        String str2;
        synchronized (this) {
            str2 = this.f25864s.get(str);
        }
        return str2;
    }

    /* renamed from: d */
    public final String m14693d() {
        String c;
        synchronized (this) {
            c = m14694c("call_to_action");
        }
        return c;
    }

    /* renamed from: e */
    public final String m14692e() {
        String str;
        synchronized (this) {
            str = this.f25862q;
        }
        return str;
    }

    /* renamed from: f */
    public final Bundle m14691f() {
        Bundle bundle;
        synchronized (this) {
            if (this.f25853h == null) {
                this.f25853h = new Bundle();
            }
            bundle = this.f25853h;
        }
        return bundle;
    }

    /* renamed from: g */
    public final String m14690g() {
        String c;
        synchronized (this) {
            c = m14694c("headline");
        }
        return c;
    }

    /* renamed from: h */
    public final List<?> m14689h() {
        List<?> list;
        synchronized (this) {
            list = this.f25850e;
        }
        return list;
    }

    /* renamed from: i */
    public final float m14688i() {
        float f;
        synchronized (this) {
            f = this.f25865t;
        }
        return f;
    }

    /* renamed from: j */
    public final List<zzzk> m14687j() {
        List<zzzk> list;
        synchronized (this) {
            list = this.f25851f;
        }
        return list;
    }

    /* renamed from: k */
    public final String m14686k() {
        String c;
        synchronized (this) {
            c = m14694c("price");
        }
        return c;
    }

    /* renamed from: l */
    public final double m14685l() {
        double d;
        synchronized (this) {
            d = this.f25859n;
        }
        return d;
    }

    /* renamed from: m */
    public final String m14684m() {
        String c;
        synchronized (this) {
            c = m14694c("store");
        }
        return c;
    }

    /* renamed from: n */
    public final zzyo m14683n() {
        zzyo zzyoVar;
        synchronized (this) {
            zzyoVar = this.f25847b;
        }
        return zzyoVar;
    }

    /* renamed from: o */
    public final int m14682o() {
        int i;
        synchronized (this) {
            i = this.f25846a;
        }
        return i;
    }

    /* renamed from: p */
    public final View m14681p() {
        View view;
        synchronized (this) {
            view = this.f25849d;
        }
        return view;
    }

    /* renamed from: q */
    public final zzaee m14680q() {
        List<?> list = this.f25850e;
        if (list == null || list.size() == 0) {
            return null;
        }
        Object obj = this.f25850e.get(0);
        if (obj instanceof IBinder) {
            return zzaed.m16834a((IBinder) obj);
        }
        return null;
    }

    /* renamed from: r */
    public final zzzk m14679r() {
        zzzk zzzkVar;
        synchronized (this) {
            zzzkVar = this.f25852g;
        }
        return zzzkVar;
    }

    /* renamed from: s */
    public final View m14678s() {
        View view;
        synchronized (this) {
            view = this.f25857l;
        }
        return view;
    }

    /* renamed from: t */
    public final zzbgj m14677t() {
        zzbgj zzbgjVar;
        synchronized (this) {
            zzbgjVar = this.f25854i;
        }
        return zzbgjVar;
    }

    /* renamed from: u */
    public final zzbgj m14676u() {
        zzbgj zzbgjVar;
        synchronized (this) {
            zzbgjVar = this.f25855j;
        }
        return zzbgjVar;
    }

    /* renamed from: v */
    public final IObjectWrapper m14675v() {
        IObjectWrapper iObjectWrapper;
        synchronized (this) {
            iObjectWrapper = this.f25856k;
        }
        return iObjectWrapper;
    }

    /* renamed from: w */
    public final C0793g<String, zzadq> m14674w() {
        C0793g<String, zzadq> gVar;
        synchronized (this) {
            gVar = this.f25863r;
        }
        return gVar;
    }

    /* renamed from: x */
    public final String m14673x() {
        String str;
        synchronized (this) {
            str = this.f25866u;
        }
        return str;
    }

    /* renamed from: y */
    public final C0793g<String, String> m14672y() {
        C0793g<String, String> gVar;
        synchronized (this) {
            gVar = this.f25864s;
        }
        return gVar;
    }

    /* renamed from: z */
    public final zzaee m14671z() {
        zzaee zzaeeVar;
        synchronized (this) {
            zzaeeVar = this.f25860o;
        }
        return zzaeeVar;
    }
}
