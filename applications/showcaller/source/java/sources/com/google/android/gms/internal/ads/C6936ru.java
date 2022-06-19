package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AbstractC5596b;
import com.google.android.gms.ads.AbstractC5795n;
import com.google.android.gms.ads.C5593a0;
import com.google.android.gms.ads.C5605f;
import com.google.android.gms.ads.C5844r;
import com.google.android.gms.ads.C5845s;
import com.google.android.gms.ads.C5848t;
import com.google.android.gms.ads.admanager.AbstractC5595b;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* renamed from: com.google.android.gms.internal.ads.ru */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ru.class */
public final class C6936ru {

    /* renamed from: a */
    private final p70 f29223a;

    /* renamed from: b */
    private final C7154xq f29224b;

    /* renamed from: c */
    private final AtomicBoolean f29225c;

    /* renamed from: d */
    private final C5845s f29226d;

    /* renamed from: e */
    final C7155xr f29227e;

    /* renamed from: f */
    private AbstractC6673kq f29228f;

    /* renamed from: g */
    private AbstractC5596b f29229g;

    /* renamed from: h */
    private C5605f[] f29230h;

    /* renamed from: i */
    private AbstractC5595b f29231i;

    /* renamed from: j */
    private AbstractC7008ts f29232j;

    /* renamed from: k */
    private C5848t f29233k;

    /* renamed from: l */
    private String f29234l;
    @NotOnlyInitialized

    /* renamed from: m */
    private final ViewGroup f29235m;

    /* renamed from: n */
    private int f29236n;

    /* renamed from: o */
    private boolean f29237o;

    /* renamed from: p */
    private AbstractC5795n f29238p;

    public C6936ru(ViewGroup viewGroup) {
        this(viewGroup, null, false, C7154xq.f32156a, null, 0);
    }

    public C6936ru(ViewGroup viewGroup, int i) {
        this(viewGroup, null, false, C7154xq.f32156a, null, i);
    }

    public C6936ru(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, C7154xq.f32156a, null, 0);
    }

    public C6936ru(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, int i) {
        this(viewGroup, attributeSet, z, C7154xq.f32156a, null, i);
    }

    C6936ru(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, C7154xq c7154xq, AbstractC7008ts abstractC7008ts, int i) {
        zzbdl zzbdlVar;
        this.f29223a = new p70();
        this.f29226d = new C5845s();
        this.f29227e = new C6899qu(this);
        this.f29235m = viewGroup;
        this.f29224b = c7154xq;
        this.f29232j = null;
        this.f29225c = new AtomicBoolean(false);
        this.f29236n = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zzbdt zzbdtVar = new zzbdt(context, attributeSet);
                this.f29230h = zzbdtVar.m8076a(z);
                this.f29234l = zzbdtVar.m8075b();
                if (!viewGroup.isInEditMode()) {
                    return;
                }
                xh0 m9485a = C7118wr.m9485a();
                C5605f c5605f = this.f29230h[0];
                int i2 = this.f29236n;
                if (c5605f.equals(C5605f.f18235i)) {
                    zzbdlVar = zzbdl.m8079o0();
                } else {
                    zzbdlVar = new zzbdl(context, c5605f);
                    zzbdlVar.f33691m = m11294b(i2);
                }
                m9485a.m9175c(viewGroup, zzbdlVar, "Ads by Google");
            } catch (IllegalArgumentException e) {
                C7118wr.m9485a().m9176b(viewGroup, new zzbdl(context, C5605f.f18227a), e.getMessage(), e.getMessage());
            }
        }
    }

    /* renamed from: a */
    private static zzbdl m11295a(Context context, C5605f[] c5605fArr, int i) {
        for (C5605f c5605f : c5605fArr) {
            if (c5605f.equals(C5605f.f18235i)) {
                return zzbdl.m8079o0();
            }
        }
        zzbdl zzbdlVar = new zzbdl(context, c5605fArr);
        zzbdlVar.f33691m = m11294b(i);
        return zzbdlVar;
    }

    /* renamed from: b */
    private static boolean m11294b(int i) {
        return i == 1;
    }

    /* renamed from: d */
    public final void m11292d() {
        try {
            AbstractC7008ts abstractC7008ts = this.f29232j;
            if (abstractC7008ts == null) {
                return;
            }
            abstractC7008ts.mo9638g();
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: e */
    public final AbstractC5596b m11291e() {
        return this.f29229g;
    }

    /* renamed from: f */
    public final C5605f m11290f() {
        zzbdl zzu;
        try {
            AbstractC7008ts abstractC7008ts = this.f29232j;
            if (abstractC7008ts != null && (zzu = abstractC7008ts.zzu()) != null) {
                return C5593a0.m18306a(zzu.f33686h, zzu.f33683e, zzu.f33682d);
            }
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
        C5605f[] c5605fArr = this.f29230h;
        if (c5605fArr != null) {
            return c5605fArr[0];
        }
        return null;
    }

    /* renamed from: g */
    public final C5605f[] m11289g() {
        return this.f29230h;
    }

    /* renamed from: h */
    public final String m11288h() {
        AbstractC7008ts abstractC7008ts;
        if (this.f29234l == null && (abstractC7008ts = this.f29232j) != null) {
            try {
                this.f29234l = abstractC7008ts.mo9653K();
            } catch (RemoteException e) {
                ei0.m15461i("#007 Could not call remote method.", e);
            }
        }
        return this.f29234l;
    }

    /* renamed from: i */
    public final AbstractC5595b m11287i() {
        return this.f29231i;
    }

    /* renamed from: j */
    public final void m11286j(C6862pu c6862pu) {
        try {
            if (this.f29232j == null) {
                if (this.f29230h == null || this.f29234l == null) {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
                Context context = this.f29235m.getContext();
                zzbdl m11295a = m11295a(context, this.f29230h, this.f29236n);
                AbstractC7008ts m9877d = "search_v2".equals(m11295a.f33682d) ? new C6711lr(C7118wr.m9484b(), context, m11295a, this.f29234l).m9877d(context, false) : new C6637jr(C7118wr.m9484b(), context, m11295a, this.f29234l, this.f29223a).m9877d(context, false);
                this.f29232j = m9877d;
                m9877d.mo9644X5(new BinderC6858pq(this.f29227e));
                AbstractC6673kq abstractC6673kq = this.f29228f;
                if (abstractC6673kq != null) {
                    this.f29232j.mo9619v4(new BinderC6710lq(abstractC6673kq));
                }
                AbstractC5595b abstractC5595b = this.f29231i;
                if (abstractC5595b != null) {
                    this.f29232j.mo9652K2(new BinderC6444ek(abstractC5595b));
                }
                C5848t c5848t = this.f29233k;
                if (c5848t != null) {
                    this.f29232j.mo9631l6(new zzbis(c5848t));
                }
                this.f29232j.mo9640e3(new BinderC6789nv(this.f29238p));
                this.f29232j.mo9663C4(this.f29237o);
                AbstractC7008ts abstractC7008ts = this.f29232j;
                if (abstractC7008ts != null) {
                    try {
                        AbstractC6253a zzi = abstractC7008ts.zzi();
                        if (zzi != null) {
                            this.f29235m.addView((View) BinderC6255b.m16745J0(zzi));
                        }
                    } catch (RemoteException e) {
                        ei0.m15461i("#007 Could not call remote method.", e);
                    }
                }
            }
            AbstractC7008ts abstractC7008ts2 = this.f29232j;
            Objects.requireNonNull(abstractC7008ts2);
            if (!abstractC7008ts2.mo9634k5(this.f29224b.m9085a(this.f29235m.getContext(), c6862pu))) {
                return;
            }
            this.f29223a.m12359F6(c6862pu.m12139l());
        } catch (RemoteException e2) {
            ei0.m15461i("#007 Could not call remote method.", e2);
        }
    }

    /* renamed from: k */
    public final void m11285k() {
        try {
            AbstractC7008ts abstractC7008ts = this.f29232j;
            if (abstractC7008ts == null) {
                return;
            }
            abstractC7008ts.mo9635j();
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: l */
    public final void m11284l() {
        try {
            AbstractC7008ts abstractC7008ts = this.f29232j;
            if (abstractC7008ts == null) {
                return;
            }
            abstractC7008ts.mo9630m();
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: m */
    public final void m11283m(AbstractC5596b abstractC5596b) {
        this.f29229g = abstractC5596b;
        this.f29227e.m9075u(abstractC5596b);
    }

    /* renamed from: n */
    public final void m11282n(AbstractC6673kq abstractC6673kq) {
        try {
            this.f29228f = abstractC6673kq;
            AbstractC7008ts abstractC7008ts = this.f29232j;
            if (abstractC7008ts == null) {
                return;
            }
            abstractC7008ts.mo9619v4(abstractC6673kq != null ? new BinderC6710lq(abstractC6673kq) : null);
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: o */
    public final void m11281o(C5605f... c5605fArr) {
        if (this.f29230h == null) {
            m11280p(c5605fArr);
            return;
        }
        throw new IllegalStateException("The ad size can only be set once on AdView.");
    }

    /* renamed from: p */
    public final void m11280p(C5605f... c5605fArr) {
        this.f29230h = c5605fArr;
        try {
            AbstractC7008ts abstractC7008ts = this.f29232j;
            if (abstractC7008ts != null) {
                abstractC7008ts.mo9650L0(m11295a(this.f29235m.getContext(), this.f29230h, this.f29236n));
            }
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
        this.f29235m.requestLayout();
    }

    /* renamed from: q */
    public final void m11279q(String str) {
        if (this.f29234l == null) {
            this.f29234l = str;
            return;
        }
        throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
    }

    /* renamed from: r */
    public final void m11278r(AbstractC5595b abstractC5595b) {
        try {
            this.f29231i = abstractC5595b;
            AbstractC7008ts abstractC7008ts = this.f29232j;
            if (abstractC7008ts == null) {
                return;
            }
            abstractC7008ts.mo9652K2(abstractC5595b != null ? new BinderC6444ek(abstractC5595b) : null);
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: s */
    public final void m11277s(boolean z) {
        this.f29237o = z;
        try {
            AbstractC7008ts abstractC7008ts = this.f29232j;
            if (abstractC7008ts == null) {
                return;
            }
            abstractC7008ts.mo9663C4(z);
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: t */
    public final C5844r m11276t() {
        AbstractC6491fu abstractC6491fu;
        try {
            AbstractC7008ts abstractC7008ts = this.f29232j;
            abstractC6491fu = null;
            if (abstractC7008ts != null) {
                abstractC6491fu = abstractC7008ts.mo9621u();
            }
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
            abstractC6491fu = null;
        }
        return C5844r.m17769d(abstractC6491fu);
    }

    /* renamed from: u */
    public final void m11275u(AbstractC5795n abstractC5795n) {
        try {
            this.f29238p = abstractC5795n;
            AbstractC7008ts abstractC7008ts = this.f29232j;
            if (abstractC7008ts == null) {
                return;
            }
            abstractC7008ts.mo9640e3(new BinderC6789nv(abstractC5795n));
        } catch (RemoteException e) {
            ei0.m15461i("#008 Must be called on the main UI thread.", e);
        }
    }

    /* renamed from: v */
    public final AbstractC5795n m11274v() {
        return this.f29238p;
    }

    /* renamed from: w */
    public final C5845s m11273w() {
        return this.f29226d;
    }

    /* renamed from: x */
    public final AbstractC6640ju m11272x() {
        AbstractC7008ts abstractC7008ts = this.f29232j;
        if (abstractC7008ts != null) {
            try {
                return abstractC7008ts.mo9627p0();
            } catch (RemoteException e) {
                ei0.m15461i("#007 Could not call remote method.", e);
                return null;
            }
        }
        return null;
    }

    /* renamed from: y */
    public final void m11271y(C5848t c5848t) {
        this.f29233k = c5848t;
        try {
            AbstractC7008ts abstractC7008ts = this.f29232j;
            if (abstractC7008ts == null) {
                return;
            }
            abstractC7008ts.mo9631l6(c5848t == null ? null : new zzbis(c5848t));
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: z */
    public final C5848t m11270z() {
        return this.f29233k;
    }
}
