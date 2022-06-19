package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AbstractC1350b;
import com.google.android.gms.ads.AbstractC1460m;
import com.google.android.gms.ads.C1348a0;
import com.google.android.gms.ads.C1359f;
import com.google.android.gms.ads.C1497q;
import com.google.android.gms.ads.C1498r;
import com.google.android.gms.ads.C1500s;
import com.google.android.gms.ads.admanager.AbstractC1349b;
import com.google.android.gms.dynamic.AbstractC1632a;
import com.google.android.gms.dynamic.b;
import java.util.concurrent.atomic.AtomicBoolean;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* renamed from: com.google.android.gms.internal.ads.u1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/u1.class */
public final class C1968u1 {

    /* renamed from: a */
    private final de f8747a;

    /* renamed from: b */
    private final sz2 f8748b;

    /* renamed from: c */
    private final C1498r f8749c;

    /* renamed from: d */
    final n03 f8750d;

    /* renamed from: e */
    private hz2 f8751e;

    /* renamed from: f */
    private AbstractC1350b f8752f;

    /* renamed from: g */
    private C1359f[] f8753g;

    /* renamed from: h */
    private AbstractC1349b f8754h;

    /* renamed from: i */
    private AbstractC2007w f8755i;

    /* renamed from: j */
    private C1500s f8756j;

    /* renamed from: k */
    private String f8757k;
    @NotOnlyInitialized

    /* renamed from: l */
    private final ViewGroup f8758l;

    /* renamed from: m */
    private int f8759m;

    /* renamed from: n */
    private boolean f8760n;

    /* renamed from: o */
    private AbstractC1460m f8761o;

    public C1968u1(ViewGroup viewGroup) {
        this(viewGroup, null, false, sz2.f8580a, null, 0);
    }

    public C1968u1(ViewGroup viewGroup, int i) {
        this(viewGroup, null, false, sz2.f8580a, null, i);
    }

    public C1968u1(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, sz2.f8580a, null, 0);
    }

    public C1968u1(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, int i) {
        this(viewGroup, attributeSet, z, sz2.f8580a, null, i);
    }

    C1968u1(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, sz2 sz2Var, AbstractC2007w abstractC2007w, int i) {
        zzyx zzyxVar;
        this.f8747a = new de();
        this.f8749c = new C1498r();
        this.f8750d = new t1(this);
        this.f8758l = viewGroup;
        this.f8748b = sz2Var;
        this.f8755i = null;
        new AtomicBoolean(false);
        this.f8759m = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zzzf zzzfVar = new zzzf(context, attributeSet);
                this.f8753g = zzzfVar.m4469a(z);
                this.f8757k = zzzfVar.m4468b();
                if (!viewGroup.isInEditMode()) {
                    return;
                }
                C1786io m6636a = m03.m6636a();
                C1359f c1359f = this.f8753g[0];
                int i2 = this.f8759m;
                if (c1359f.equals(C1359f.f5461q)) {
                    zzyxVar = zzyx.C();
                } else {
                    zzyxVar = new zzyx(context, c1359f);
                    zzyxVar.k = m5435c(i2);
                }
                m6636a.m7141c(viewGroup, zzyxVar, "Ads by Google");
            } catch (IllegalArgumentException e) {
                m03.m6636a().m7142b(viewGroup, new zzyx(context, C1359f.f5453i), e.getMessage(), e.getMessage());
            }
        }
    }

    /* renamed from: b */
    private static zzyx m5436b(Context context, C1359f[] c1359fArr, int i) {
        for (C1359f c1359f : c1359fArr) {
            if (c1359f.equals(C1359f.f5461q)) {
                return zzyx.C();
            }
        }
        zzyx zzyxVar = new zzyx(context, c1359fArr);
        zzyxVar.k = m5435c(i);
        return zzyxVar;
    }

    /* renamed from: c */
    private static boolean m5435c(int i) {
        return i == 1;
    }

    /* renamed from: d */
    public final void m5434d() {
        try {
            AbstractC2007w abstractC2007w = this.f8755i;
            if (abstractC2007w == null) {
                return;
            }
            abstractC2007w.m5155c();
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: e */
    public final AbstractC1350b m5433e() {
        return this.f8752f;
    }

    /* renamed from: f */
    public final C1359f m5432f() {
        zzyx m5140p;
        try {
            AbstractC2007w abstractC2007w = this.f8755i;
            if (abstractC2007w != null && (m5140p = abstractC2007w.m5140p()) != null) {
                return C1348a0.m9057a(m5140p.f, m5140p.c, m5140p.b);
            }
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
        }
        C1359f[] c1359fArr = this.f8753g;
        if (c1359fArr != null) {
            return c1359fArr[0];
        }
        return null;
    }

    /* renamed from: g */
    public final C1359f[] m5431g() {
        return this.f8753g;
    }

    /* renamed from: h */
    public final String m5430h() {
        AbstractC2007w abstractC2007w;
        if (this.f8757k == null && (abstractC2007w = this.f8755i) != null) {
            try {
                this.f8757k = abstractC2007w.m5133t();
            } catch (RemoteException e) {
                C1894po.m6177i("#007 Could not call remote method.", e);
            }
        }
        return this.f8757k;
    }

    /* renamed from: i */
    public final AbstractC1349b m5429i() {
        return this.f8754h;
    }

    /* renamed from: j */
    public final void m5428j(C1932s1 c1932s1) {
        try {
            if (this.f8755i == null) {
                if (this.f8753g == null || this.f8757k == null) {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
                Context context = this.f8758l.getContext();
                zzyx m5436b = m5436b(context, this.f8753g, this.f8759m);
                AbstractC2007w abstractC2007w = (AbstractC2007w) ("search_v2".equals(m5436b.b) ? new e03(m03.m6635b(), context, m5436b, this.f8757k).m6736d(context, false) : new c03(m03.m6635b(), context, m5436b, this.f8757k, this.f8747a).m6736d(context, false));
                this.f8755i = abstractC2007w;
                abstractC2007w.m5160S3(new lz2(this.f8750d));
                hz2 hz2Var = this.f8751e;
                if (hz2Var != null) {
                    this.f8755i.m5158Y2(new iz2(hz2Var));
                }
                AbstractC1349b abstractC1349b = this.f8754h;
                if (abstractC1349b != null) {
                    this.f8755i.m5165E4(new lt2(abstractC1349b));
                }
                C1500s c1500s = this.f8756j;
                if (c1500s != null) {
                    this.f8755i.m5138p5(new zzady(c1500s));
                }
                this.f8755i.m5148h5(new q2(this.f8761o));
                this.f8755i.m5139p2(this.f8760n);
                AbstractC2007w abstractC2007w2 = this.f8755i;
                if (abstractC2007w2 != null) {
                    try {
                        AbstractC1632a m5157b = abstractC2007w2.m5157b();
                        if (m5157b != null) {
                            this.f8758l.addView((View) b.M1(m5157b));
                        }
                    } catch (RemoteException e) {
                        C1894po.m6177i("#007 Could not call remote method.", e);
                    }
                }
            }
            AbstractC2007w abstractC2007w3 = this.f8755i;
            abstractC2007w3.getClass();
            if (!abstractC2007w3.m5137q0(this.f8748b.m5551a(this.f8758l.getContext(), c1932s1))) {
                return;
            }
            this.f8747a.A6(c1932s1.m5825l());
        } catch (RemoteException e2) {
            C1894po.m6177i("#007 Could not call remote method.", e2);
        }
    }

    /* renamed from: k */
    public final void m5427k() {
        try {
            AbstractC2007w abstractC2007w = this.f8755i;
            if (abstractC2007w == null) {
                return;
            }
            abstractC2007w.m5153d();
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: l */
    public final void m5426l() {
        try {
            AbstractC2007w abstractC2007w = this.f8755i;
            if (abstractC2007w == null) {
                return;
            }
            abstractC2007w.m5149g();
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: m */
    public final void m5425m(AbstractC1350b abstractC1350b) {
        this.f8752f = abstractC1350b;
        this.f8750d.u(abstractC1350b);
    }

    /* renamed from: n */
    public final void m5424n(hz2 hz2Var) {
        try {
            this.f8751e = hz2Var;
            AbstractC2007w abstractC2007w = this.f8755i;
            if (abstractC2007w == null) {
                return;
            }
            abstractC2007w.m5158Y2(hz2Var != null ? new iz2(hz2Var) : null);
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: o */
    public final void m5423o(C1359f... c1359fArr) {
        if (this.f8753g == null) {
            m5422p(c1359fArr);
            return;
        }
        throw new IllegalStateException("The ad size can only be set once on AdView.");
    }

    /* renamed from: p */
    public final void m5422p(C1359f... c1359fArr) {
        this.f8753g = c1359fArr;
        try {
            AbstractC2007w abstractC2007w = this.f8755i;
            if (abstractC2007w != null) {
                abstractC2007w.m5130y4(m5436b(this.f8758l.getContext(), this.f8753g, this.f8759m));
            }
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
        }
        this.f8758l.requestLayout();
    }

    /* renamed from: q */
    public final void m5421q(String str) {
        if (this.f8757k == null) {
            this.f8757k = str;
            return;
        }
        throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
    }

    /* renamed from: r */
    public final void m5420r(AbstractC1349b abstractC1349b) {
        try {
            this.f8754h = abstractC1349b;
            AbstractC2007w abstractC2007w = this.f8755i;
            if (abstractC2007w == null) {
                return;
            }
            abstractC2007w.m5165E4(abstractC1349b != null ? new lt2(abstractC1349b) : null);
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: s */
    public final void m5419s(boolean z) {
        this.f8760n = z;
        try {
            AbstractC2007w abstractC2007w = this.f8755i;
            if (abstractC2007w == null) {
                return;
            }
            abstractC2007w.m5139p2(z);
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: t */
    public final C1497q m5418t() {
        AbstractC1794j1 abstractC1794j1;
        try {
            AbstractC2007w abstractC2007w = this.f8755i;
            abstractC1794j1 = null;
            if (abstractC2007w != null) {
                abstractC1794j1 = abstractC2007w.m5134r();
            }
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
            abstractC1794j1 = null;
        }
        return C1497q.m8576d(abstractC1794j1);
    }

    /* renamed from: u */
    public final void m5417u(AbstractC1460m abstractC1460m) {
        try {
            this.f8761o = abstractC1460m;
            AbstractC2007w abstractC2007w = this.f8755i;
            if (abstractC2007w == null) {
                return;
            }
            abstractC2007w.m5148h5(new q2(abstractC1460m));
        } catch (RemoteException e) {
            C1894po.m6177i("#008 Must be called on the main UI thread.", e);
        }
    }

    /* renamed from: v */
    public final AbstractC1460m m5416v() {
        return this.f8761o;
    }

    /* renamed from: w */
    public final C1498r m5415w() {
        return this.f8749c;
    }

    /* renamed from: x */
    public final AbstractC1841m1 m5414x() {
        AbstractC2007w abstractC2007w = this.f8755i;
        if (abstractC2007w != null) {
            try {
                return abstractC2007w.m5162I();
            } catch (RemoteException e) {
                C1894po.m6177i("#007 Could not call remote method.", e);
                return null;
            }
        }
        return null;
    }

    /* renamed from: y */
    public final void m5413y(C1500s c1500s) {
        this.f8756j = c1500s;
        try {
            AbstractC2007w abstractC2007w = this.f8755i;
            if (abstractC2007w == null) {
                return;
            }
            abstractC2007w.m5138p5(c1500s == null ? null : new zzady(c1500s));
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: z */
    public final C1500s m5412z() {
        return this.f8756j;
    }
}
