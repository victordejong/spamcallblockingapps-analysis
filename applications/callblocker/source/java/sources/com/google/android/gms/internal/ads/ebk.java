package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AbstractC2345l;
import com.google.android.gms.ads.C2249b;
import com.google.android.gms.ads.C2286e;
import com.google.android.gms.ads.C2386o;
import com.google.android.gms.ads.C2387p;
import com.google.android.gms.ads.C2389q;
import com.google.android.gms.ads.p118a.AbstractC2244a;
import com.google.android.gms.ads.p118a.AbstractC2246c;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ebk.class */
public final class ebk {

    /* renamed from: a */
    private final BinderC3277kl f16223a;

    /* renamed from: b */
    private final dyb f16224b;

    /* renamed from: c */
    private final AtomicBoolean f16225c;

    /* renamed from: d */
    private final C2387p f16226d;

    /* renamed from: e */
    private final dyw f16227e;

    /* renamed from: f */
    private dxs f16228f;

    /* renamed from: g */
    private C2249b f16229g;

    /* renamed from: h */
    private C2286e[] f16230h;

    /* renamed from: i */
    private AbstractC2244a f16231i;

    /* renamed from: j */
    private dzn f16232j;

    /* renamed from: k */
    private AbstractC2246c f16233k;

    /* renamed from: l */
    private C2389q f16234l;

    /* renamed from: m */
    private String f16235m;

    /* renamed from: n */
    private ViewGroup f16236n;

    /* renamed from: o */
    private int f16237o;

    /* renamed from: p */
    private boolean f16238p;

    /* renamed from: q */
    private AbstractC2345l f16239q;

    public ebk(ViewGroup viewGroup, int i) {
        this(viewGroup, null, false, dyb.f16089a, i);
    }

    public ebk(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, int i) {
        this(viewGroup, attributeSet, false, dyb.f16089a, i);
    }

    private ebk(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, dyb dybVar, int i) {
        this(viewGroup, attributeSet, z, dybVar, null, i);
    }

    private ebk(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, dyb dybVar, dzn dznVar, int i) {
        dyd dydVar;
        this.f16223a = new BinderC3277kl();
        this.f16226d = new C2387p();
        this.f16227e = new ebj(this);
        this.f16236n = viewGroup;
        this.f16224b = dybVar;
        this.f16232j = null;
        this.f16225c = new AtomicBoolean(false);
        this.f16237o = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                dym dymVar = new dym(context, attributeSet);
                this.f16230h = dymVar.m8173a(z);
                this.f16235m = dymVar.m8175a();
                if (!viewGroup.isInEditMode()) {
                    return;
                }
                C3634xr m8162a = dyx.m8162a();
                C2286e c2286e = this.f16230h[0];
                int i2 = this.f16237o;
                if (c2286e.equals(C2286e.f6607i)) {
                    dydVar = dyd.m8187d();
                } else {
                    dydVar = new dyd(context, c2286e);
                    dydVar.f16099j = m8039a(i2);
                }
                m8162a.m6797a(viewGroup, dydVar, "Ads by Google");
            } catch (IllegalArgumentException e) {
                dyx.m8162a().m6795a(viewGroup, new dyd(context, C2286e.f6599a), e.getMessage(), e.getMessage());
            }
        }
    }

    /* renamed from: a */
    private static dyd m8038a(Context context, C2286e[] c2286eArr, int i) {
        dyd dydVar;
        int length = c2286eArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                dydVar = new dyd(context, c2286eArr);
                dydVar.f16099j = m8039a(i);
                break;
            } else if (c2286eArr[i2].equals(C2286e.f6607i)) {
                dydVar = dyd.m8187d();
                break;
            } else {
                i2++;
            }
        }
        return dydVar;
    }

    /* renamed from: a */
    private static boolean m8039a(int i) {
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public final void m8040a() {
        try {
            if (this.f16232j == null) {
                return;
            }
            this.f16232j.mo7947b();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m8037a(AbstractC2244a abstractC2244a) {
        try {
            this.f16231i = abstractC2244a;
            if (this.f16232j == null) {
                return;
            }
            this.f16232j.mo7959a(abstractC2244a != null ? new dyh(abstractC2244a) : null);
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m8036a(AbstractC2246c abstractC2246c) {
        this.f16233k = abstractC2246c;
        try {
            if (this.f16232j == null) {
                return;
            }
            this.f16232j.mo7950a(abstractC2246c != null ? new BinderC3670z(abstractC2246c) : null);
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m8035a(C2249b c2249b) {
        this.f16229g = c2249b;
        this.f16227e.m8165a(c2249b);
    }

    /* renamed from: a */
    public final void m8034a(AbstractC2345l abstractC2345l) {
        try {
            this.f16239q = abstractC2345l;
            if (this.f16232j == null) {
                return;
            }
            this.f16232j.mo7957a(new eci(abstractC2345l));
        } catch (RemoteException e) {
            C3645yb.m6744e("#008 Must be called on the main UI thread.", e);
        }
    }

    /* renamed from: a */
    public final void m8033a(C2389q c2389q) {
        this.f16234l = c2389q;
        try {
            if (this.f16232j == null) {
                return;
            }
            this.f16232j.mo7954a(c2389q == null ? null : new ecn(c2389q));
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m8032a(dxs dxsVar) {
        try {
            this.f16228f = dxsVar;
            if (this.f16232j == null) {
                return;
            }
            this.f16232j.mo7962a(dxsVar != null ? new dxr(dxsVar) : null);
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m8031a(ebi ebiVar) {
        try {
            if (this.f16232j == null) {
                if ((this.f16230h == null || this.f16235m == null) && this.f16232j == null) {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
                Context context = this.f16236n.getContext();
                dyd m8038a = m8038a(context, this.f16230h, this.f16237o);
                this.f16232j = "search_v2".equals(m8038a.f16090a) ? new dyr(dyx.m8161b(), context, m8038a, this.f16235m).m8172a(context, false) : new dyn(dyx.m8161b(), context, m8038a, this.f16235m, this.f16223a).m8172a(context, false);
                this.f16232j.mo7961a(new dxw(this.f16227e));
                if (this.f16228f != null) {
                    this.f16232j.mo7962a(new dxr(this.f16228f));
                }
                if (this.f16231i != null) {
                    this.f16232j.mo7959a(new dyh(this.f16231i));
                }
                if (this.f16233k != null) {
                    this.f16232j.mo7950a(new BinderC3670z(this.f16233k));
                }
                if (this.f16234l != null) {
                    this.f16232j.mo7954a(new ecn(this.f16234l));
                }
                this.f16232j.mo7957a(new eci(this.f16239q));
                this.f16232j.mo7948a(this.f16238p);
                try {
                    AbstractC2731a mo7967a = this.f16232j.mo7967a();
                    if (mo7967a != null) {
                        this.f16236n.addView((View) BinderC2734b.m13795a(mo7967a));
                    }
                } catch (RemoteException e) {
                    C3645yb.m6744e("#007 Could not call remote method.", e);
                }
            }
            if (!this.f16232j.mo7965a(dyb.m8196a(this.f16236n.getContext(), ebiVar))) {
                return;
            }
            this.f16223a.m7668a(ebiVar.m8051k());
        } catch (RemoteException e2) {
            C3645yb.m6744e("#007 Could not call remote method.", e2);
        }
    }

    /* renamed from: a */
    public final void m8029a(String str) {
        if (this.f16235m != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
        }
        this.f16235m = str;
    }

    /* renamed from: a */
    public final void m8028a(boolean z) {
        this.f16238p = z;
        try {
            if (this.f16232j == null) {
                return;
            }
            this.f16232j.mo7948a(this.f16238p);
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m8027a(C2286e... c2286eArr) {
        if (this.f16230h != null) {
            throw new IllegalStateException("The ad size can only be set once on AdView.");
        }
        m8025b(c2286eArr);
    }

    /* renamed from: b */
    public final C2249b m8026b() {
        return this.f16229g;
    }

    /* renamed from: b */
    public final void m8025b(C2286e... c2286eArr) {
        this.f16230h = c2286eArr;
        try {
            if (this.f16232j != null) {
                this.f16232j.mo7964a(m8038a(this.f16236n.getContext(), this.f16230h, this.f16237o));
            }
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
        this.f16236n.requestLayout();
    }

    /* renamed from: c */
    public final C2286e m8024c() {
        C2286e c2286e;
        dyd mo7937j;
        try {
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
        if (this.f16232j != null && (mo7937j = this.f16232j.mo7937j()) != null) {
            c2286e = mo7937j.m8186e();
            return c2286e;
        }
        c2286e = this.f16230h != null ? this.f16230h[0] : null;
        return c2286e;
    }

    /* renamed from: d */
    public final C2286e[] m8023d() {
        return this.f16230h;
    }

    /* renamed from: e */
    public final String m8022e() {
        if (this.f16235m == null && this.f16232j != null) {
            try {
                this.f16235m = this.f16232j.mo7933n();
            } catch (RemoteException e) {
                C3645yb.m6744e("#007 Could not call remote method.", e);
            }
        }
        return this.f16235m;
    }

    /* renamed from: f */
    public final AbstractC2244a m8021f() {
        return this.f16231i;
    }

    /* renamed from: g */
    public final AbstractC2246c m8020g() {
        return this.f16233k;
    }

    /* renamed from: h */
    public final void m8019h() {
        try {
            if (this.f16232j == null) {
                return;
            }
            this.f16232j.mo7943d();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: i */
    public final void m8018i() {
        try {
            if (this.f16232j == null) {
                return;
            }
            this.f16232j.mo7942e();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: j */
    public final String m8017j() {
        String str;
        try {
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
        if (this.f16232j != null) {
            str = this.f16232j.mo7935l();
            return str;
        }
        str = null;
        return str;
    }

    /* renamed from: k */
    public final C2386o m8016k() {
        eav eavVar = null;
        try {
            if (this.f16232j != null) {
                eavVar = this.f16232j.mo7934m();
            }
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
            eavVar = null;
        }
        return C2386o.m14618a(eavVar);
    }

    /* renamed from: l */
    public final C2387p m8015l() {
        return this.f16226d;
    }

    /* renamed from: m */
    public final eba m8014m() {
        eba ebaVar = null;
        if (this.f16232j != null) {
            try {
                ebaVar = this.f16232j.mo7929r();
            } catch (RemoteException e) {
                C3645yb.m6744e("#007 Could not call remote method.", e);
            }
        }
        return ebaVar;
    }

    /* renamed from: n */
    public final C2389q m8013n() {
        return this.f16234l;
    }
}
