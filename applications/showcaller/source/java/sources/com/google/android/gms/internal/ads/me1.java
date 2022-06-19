package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.dynamic.AbstractC6253a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;
import p020b.p036e.C1489a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/me1.class */
public final class me1 extends xy0 {

    /* renamed from: A */
    private final Context f26552A;

    /* renamed from: B */
    private final oe1 f26553B;

    /* renamed from: C */
    private final d42 f26554C;

    /* renamed from: D */
    private final Map<String, Boolean> f26555D = new HashMap();

    /* renamed from: E */
    private final List<View$OnAttachStateChangeListenerC6925rj> f26556E = new ArrayList();

    /* renamed from: F */
    private final C6962sj f26557F;

    /* renamed from: i */
    private final Executor f26558i;

    /* renamed from: j */
    private final re1 f26559j;

    /* renamed from: k */
    private final ze1 f26560k;

    /* renamed from: l */
    private final rf1 f26561l;

    /* renamed from: m */
    private final we1 f26562m;

    /* renamed from: n */
    private final cf1 f26563n;

    /* renamed from: o */
    private final vi3<vi1> f26564o;

    /* renamed from: p */
    private final vi3<ti1> f26565p;

    /* renamed from: q */
    private final vi3<aj1> f26566q;

    /* renamed from: r */
    private final vi3<ri1> f26567r;

    /* renamed from: s */
    private final vi3<yi1> f26568s;

    /* renamed from: t */
    private ng1 f26569t;

    /* renamed from: u */
    private boolean f26570u;

    /* renamed from: v */
    private boolean f26571v;

    /* renamed from: w */
    private boolean f26572w;

    /* renamed from: x */
    private final sf0 f26573x;

    /* renamed from: y */
    private final C7016u f26574y;

    /* renamed from: z */
    private final zzcgz f26575z;

    public me1(wy0 wy0Var, Executor executor, re1 re1Var, ze1 ze1Var, rf1 rf1Var, we1 we1Var, cf1 cf1Var, vi3<vi1> vi3Var, vi3<ti1> vi3Var2, vi3<aj1> vi3Var3, vi3<ri1> vi3Var4, vi3<yi1> vi3Var5, sf0 sf0Var, C7016u c7016u, zzcgz zzcgzVar, Context context, oe1 oe1Var, d42 d42Var, C6962sj c6962sj) {
        super(wy0Var);
        this.f26558i = executor;
        this.f26559j = re1Var;
        this.f26560k = ze1Var;
        this.f26561l = rf1Var;
        this.f26562m = we1Var;
        this.f26563n = cf1Var;
        this.f26564o = vi3Var;
        this.f26565p = vi3Var2;
        this.f26566q = vi3Var3;
        this.f26567r = vi3Var4;
        this.f26568s = vi3Var5;
        this.f26573x = sf0Var;
        this.f26574y = c7016u;
        this.f26575z = zzcgzVar;
        this.f26552A = context;
        this.f26553B = oe1Var;
        this.f26554C = d42Var;
        this.f26557F = c6962sj;
    }

    /* renamed from: i */
    public static boolean m13235i(View view) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25586S6)).booleanValue()) {
            return view.isShown() && view.getGlobalVisibleRect(new Rect(), null);
        }
        C5667s.m18160d();
        long m18081a = C5679c2.m18081a(view);
        if (!view.isShown() || !view.getGlobalVisibleRect(new Rect(), null)) {
            return false;
        }
        return m18081a >= ((long) ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25594T6)).intValue());
    }

    /* renamed from: w */
    public final void m13224t(ng1 ng1Var) {
        Iterator<String> keys;
        View view;
        AbstractC6868q m10450b;
        synchronized (this) {
            if (this.f26570u) {
                return;
            }
            this.f26569t = ng1Var;
            this.f26561l.m11483a(ng1Var);
            this.f26560k.mo8410o(ng1Var.mo12908V4(), ng1Var.mo12905h(), ng1Var.mo12904i(), ng1Var, ng1Var);
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25517K1)).booleanValue() && (m10450b = this.f26574y.m10450b()) != null) {
                m10450b.mo11198c(ng1Var.mo12908V4());
            }
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25696g1)).booleanValue()) {
                ej2 ej2Var = this.f32349b;
                if (ej2Var.f22234h0 && (keys = ej2Var.f22232g0.keys()) != null) {
                    while (keys.hasNext()) {
                        String next = keys.next();
                        WeakReference<View> weakReference = this.f26569t.mo12906g().get(next);
                        this.f26555D.put(next, Boolean.FALSE);
                        if (weakReference != null && (view = weakReference.get()) != null) {
                            View$OnAttachStateChangeListenerC6925rj view$OnAttachStateChangeListenerC6925rj = new View$OnAttachStateChangeListenerC6925rj(this.f26552A, view);
                            this.f26556E.add(view$OnAttachStateChangeListenerC6925rj);
                            view$OnAttachStateChangeListenerC6925rj.m11451a(new le1(this, next));
                        }
                    }
                }
            }
            if (ng1Var.mo12907f() == null) {
                return;
            }
            ng1Var.mo12907f().m11451a(this.f26573x);
        }
    }

    /* renamed from: x */
    public final void m13225s(ng1 ng1Var) {
        this.f26560k.mo8420e(ng1Var.mo12908V4(), ng1Var.mo12906g());
        if (ng1Var.mo12911D0() != null) {
            ng1Var.mo12911D0().setClickable(false);
            ng1Var.mo12911D0().removeAllViews();
        }
        if (ng1Var.mo12907f() != null) {
            ng1Var.mo12907f().m11450b(this.f26573x);
        }
        this.f26569t = null;
    }

    /* renamed from: A */
    public final void m13255A(String str) {
        synchronized (this) {
            this.f26560k.mo8426O(str);
        }
    }

    /* renamed from: B */
    public final void m13254B() {
        synchronized (this) {
            if (this.f26571v) {
                return;
            }
            this.f26560k.mo8414k();
        }
    }

    /* renamed from: C */
    public final void m13253C(Bundle bundle) {
        synchronized (this) {
            this.f26560k.mo8424a0(bundle);
        }
    }

    /* renamed from: D */
    public final boolean m13252D(Bundle bundle) {
        synchronized (this) {
            if (this.f26571v) {
                return true;
            }
            boolean mo8409p = this.f26560k.mo8409p(bundle);
            this.f26571v = mo8409p;
            return mo8409p;
        }
    }

    /* renamed from: E */
    public final void m13251E(Bundle bundle) {
        synchronized (this) {
            this.f26560k.mo8427L(bundle);
        }
    }

    /* renamed from: F */
    public final void m13250F(ng1 ng1Var) {
        synchronized (this) {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25680e1)).booleanValue()) {
                C5679c2.f18451a.post(new Runnable(this, ng1Var) { // from class: com.google.android.gms.internal.ads.ie1

                    /* renamed from: d */
                    private final me1 f24218d;

                    /* renamed from: e */
                    private final ng1 f24219e;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f24218d = this;
                        this.f24219e = ng1Var;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f24218d.m13224t(this.f24219e);
                    }
                });
            } else {
                m13224t(ng1Var);
            }
        }
    }

    /* renamed from: G */
    public final void m13249G(ng1 ng1Var) {
        synchronized (this) {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25680e1)).booleanValue()) {
                C5679c2.f18451a.post(new Runnable(this, ng1Var) { // from class: com.google.android.gms.internal.ads.je1

                    /* renamed from: d */
                    private final me1 f24850d;

                    /* renamed from: e */
                    private final ng1 f24851e;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f24850d = this;
                        this.f24851e = ng1Var;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f24850d.m13225s(this.f24851e);
                    }
                });
            } else {
                m13225s(ng1Var);
            }
        }
    }

    /* renamed from: H */
    public final void m13248H(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        synchronized (this) {
            this.f26561l.m11482b(this.f26569t);
            this.f26560k.mo8419f(view, view2, map, map2, z);
            if (this.f26572w && this.f26559j.m11495r() != null) {
                this.f26559j.m11495r().mo7959D0("onSdkAdUserInteractionClick", new C1489a());
            }
        }
    }

    /* renamed from: I */
    public final void m13247I(View view, MotionEvent motionEvent, View view2) {
        synchronized (this) {
            this.f26560k.mo8416i(view, motionEvent, view2);
        }
    }

    /* renamed from: J */
    public final void m13246J(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        synchronized (this) {
            if (this.f26571v) {
                return;
            }
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25696g1)).booleanValue() && this.f32349b.f22234h0) {
                Iterator<String> it = this.f26555D.keySet().iterator();
                do {
                    if (it.hasNext()) {
                    }
                } while (this.f26555D.get(it.next()).booleanValue());
                return;
            }
            if (z) {
                this.f26561l.m11481c(this.f26569t);
                this.f26560k.mo8413l(view, map, map2);
                this.f26571v = true;
                return;
            }
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25777q2)).booleanValue() && map != null) {
                for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                    View view2 = entry.getValue().get();
                    if (view2 != null && m13235i(view2)) {
                        this.f26561l.m11481c(this.f26569t);
                        this.f26560k.mo8413l(view, map, map2);
                        this.f26571v = true;
                        return;
                    }
                }
            }
        }
    }

    /* renamed from: K */
    public final JSONObject m13245K(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        JSONObject mo8411n;
        synchronized (this) {
            mo8411n = this.f26560k.mo8411n(view, map, map2);
        }
        return mo8411n;
    }

    /* renamed from: L */
    public final JSONObject m13244L(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        JSONObject mo8421d;
        synchronized (this) {
            mo8421d = this.f26560k.mo8421d(view, map, map2);
        }
        return mo8421d;
    }

    /* renamed from: M */
    public final void m13243M(View view) {
        synchronized (this) {
            this.f26560k.mo8415j(view);
        }
    }

    /* renamed from: N */
    public final void m13242N(z00 z00Var) {
        synchronized (this) {
            this.f26560k.mo8412m(z00Var);
        }
    }

    /* renamed from: O */
    public final void m13241O() {
        synchronized (this) {
            this.f26560k.zzt();
        }
    }

    /* renamed from: P */
    public final void m13240P(AbstractC6972st abstractC6972st) {
        synchronized (this) {
            this.f26560k.mo8425a(abstractC6972st);
        }
    }

    /* renamed from: Q */
    public final void m13239Q(AbstractC6861pt abstractC6861pt) {
        synchronized (this) {
            this.f26560k.mo8422c(abstractC6861pt);
        }
    }

    /* renamed from: R */
    public final void m13238R() {
        synchronized (this) {
            this.f26560k.mo8418g();
        }
    }

    @Override // com.google.android.gms.internal.ads.xy0
    /* renamed from: a */
    public final void mo9021a() {
        this.f26558i.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.fe1

            /* renamed from: d */
            private final me1 f22857d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22857d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f22857d.m13222v();
            }
        });
        if (this.f26559j.m11513d0() != 7) {
            Executor executor = this.f26558i;
            ze1 ze1Var = this.f26560k;
            ze1Var.getClass();
            executor.execute(ge1.m14958a(ze1Var));
        }
        super.mo9021a();
    }

    @Override // com.google.android.gms.internal.ads.xy0
    /* renamed from: b */
    public final void mo9020b() {
        synchronized (this) {
            this.f26570u = true;
            this.f26558i.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.he1

                /* renamed from: d */
                private final me1 f23872d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23872d = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f23872d.m13223u();
                }
            });
            super.mo9020b();
        }
    }

    /* renamed from: g */
    public final void m13237g() {
        synchronized (this) {
            ng1 ng1Var = this.f26569t;
            if (ng1Var == null) {
                ei0.m15469a("Ad should be associated with an ad view before calling recordCustomClickGesture()");
                return;
            }
            this.f26558i.execute(new Runnable(this, ng1Var instanceof lf1) { // from class: com.google.android.gms.internal.ads.ke1

                /* renamed from: d */
                private final me1 f25198d;

                /* renamed from: e */
                private final boolean f25199e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f25198d = this;
                    this.f25199e = z;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f25198d.m13226r(this.f25199e);
                }
            });
        }
    }

    /* renamed from: h */
    public final boolean m13236h() {
        boolean mo8417h;
        synchronized (this) {
            mo8417h = this.f26560k.mo8417h();
        }
        return mo8417h;
    }

    /* renamed from: j */
    public final boolean m13234j() {
        return this.f26562m.mo9599c();
    }

    /* renamed from: k */
    public final String m13233k() {
        return this.f26562m.mo9596f();
    }

    /* renamed from: l */
    public final void m13232l(String str, boolean z) {
        String str2;
        zzbzl zzbzlVar;
        zzbzm zzbzmVar;
        if (!this.f26562m.mo9598d() || TextUtils.isEmpty(str)) {
            return;
        }
        wn0 m11493t = this.f26559j.m11493t();
        wn0 m11495r = this.f26559j.m11495r();
        if (m11493t == null && m11495r == null) {
            return;
        }
        if (m11493t != null) {
            str2 = null;
        } else {
            str2 = "javascript";
            m11493t = m11495r;
        }
        if (!C5667s.m18145s().mo12112U(this.f26552A)) {
            ei0.m15464f("Failed to initialize omid in InternalNativeAd");
            return;
        }
        zzcgz zzcgzVar = this.f26575z;
        int i = zzcgzVar.f33855e;
        int i2 = zzcgzVar.f33856f;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append(".");
        sb.append(i2);
        String sb2 = sb.toString();
        if (m11495r != null) {
            zzbzlVar = zzbzl.VIDEO;
            zzbzmVar = zzbzm.DEFINED_BY_JAVASCRIPT;
        } else {
            zzbzlVar = zzbzl.NATIVE_DISPLAY;
            zzbzmVar = this.f26559j.m11513d0() == 3 ? zzbzm.UNSPECIFIED : zzbzm.ONE_PIXEL;
        }
        AbstractC6253a mo12109c = C5667s.m18145s().mo12109c(sb2, m11493t.mo7956F(), "", "javascript", str2, str, zzbzmVar, zzbzlVar, this.f32349b.f22236i0);
        if (mo12109c == null) {
            ei0.m15464f("Failed to create omid session in InternalNativeAd");
            return;
        }
        this.f26559j.m11523X(mo12109c);
        m11493t.mo7965A0(mo12109c);
        if (m11495r != null) {
            C5667s.m18145s().mo12107e(mo12109c, m11495r.mo7960D());
            this.f26572w = true;
        }
        if (!z) {
            return;
        }
        C5667s.m18145s().zzf(mo12109c);
        m11493t.mo7959D0("onSdkLoaded", new C1489a());
    }

    /* renamed from: m */
    public final boolean m13231m() {
        return this.f26562m.mo9598d();
    }

    /* renamed from: n */
    public final void m13230n(View view) {
        AbstractC6253a m11492u = this.f26559j.m11492u();
        wn0 m11493t = this.f26559j.m11493t();
        if (!this.f26562m.mo9598d() || m11492u == null || m11493t == null || view == null) {
            return;
        }
        C5667s.m18145s().mo12107e(m11492u, view);
    }

    /* renamed from: o */
    public final void m13229o(View view) {
        AbstractC6253a m11492u = this.f26559j.m11492u();
        if (!this.f26562m.mo9598d() || m11492u == null || view == null) {
            return;
        }
        C5667s.m18145s().mo12108d(m11492u, view);
    }

    /* renamed from: p */
    public final oe1 m13228p() {
        return this.f26553B;
    }

    /* renamed from: q */
    public final void m13227q(AbstractC6379cu abstractC6379cu) {
        synchronized (this) {
            this.f26554C.m15949a(abstractC6379cu);
        }
    }

    /* renamed from: r */
    public final /* synthetic */ void m13226r(boolean z) {
        this.f26560k.mo8423b(this.f26569t.mo12908V4(), this.f26569t.mo12906g(), this.f26569t.mo12905h(), z);
    }

    /* renamed from: u */
    public final /* synthetic */ void m13223u() {
        this.f26560k.mo8408u();
        this.f26559j.m11487z();
    }

    /* renamed from: v */
    public final /* bridge */ /* synthetic */ void m13222v() {
        try {
            int m11513d0 = this.f26559j.m11513d0();
            if (m11513d0 == 1) {
                if (this.f26563n.m16069a() == null) {
                    return;
                }
                m13232l("Google", true);
                this.f26563n.m16069a().mo15002v5(this.f26564o.m9997b());
            } else if (m11513d0 == 2) {
                if (this.f26563n.m16068b() == null) {
                    return;
                }
                m13232l("Google", true);
                this.f26563n.m16068b().mo15974N0(this.f26565p.m9997b());
            } else if (m11513d0 == 3) {
                if (this.f26563n.m16064f(this.f26559j.m11496q()) == null) {
                    return;
                }
                if (this.f26559j.m11495r() != null) {
                    m13232l("Google", true);
                }
                this.f26563n.m16064f(this.f26559j.m11496q()).mo13379j6(this.f26568s.m9997b());
            } else if (m11513d0 == 6) {
                if (this.f26563n.m16067c() == null) {
                    return;
                }
                m13232l("Google", true);
                this.f26563n.m16067c().mo9302y6(this.f26566q.m9997b());
            } else if (m11513d0 != 7) {
                ei0.m15467c("Wrong native template id!");
            } else if (this.f26563n.m16065e() == null) {
            } else {
                this.f26563n.m16065e().mo12033c5(this.f26567r.m9997b());
            }
        } catch (RemoteException e) {
            ei0.m15466d("RemoteException when notifyAdLoad is called", e);
        }
    }
}
