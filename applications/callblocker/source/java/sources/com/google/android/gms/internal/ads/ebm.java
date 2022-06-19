package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AbstractC2345l;
import com.google.android.gms.ads.C2249b;
import com.google.android.gms.ads.p118a.AbstractC2244a;
import com.google.android.gms.ads.p118a.AbstractC2246c;
import com.google.android.gms.ads.p118a.C2248e;
import com.google.android.gms.ads.reward.AbstractC2394d;
import com.google.android.gms.ads.reward.C2391a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ebm.class */
public final class ebm {

    /* renamed from: a */
    private final BinderC3277kl f16246a;

    /* renamed from: b */
    private final Context f16247b;

    /* renamed from: c */
    private final dyb f16248c;

    /* renamed from: d */
    private C2249b f16249d;

    /* renamed from: e */
    private dxs f16250e;

    /* renamed from: f */
    private dzn f16251f;

    /* renamed from: g */
    private String f16252g;

    /* renamed from: h */
    private C2391a f16253h;

    /* renamed from: i */
    private AbstractC2244a f16254i;

    /* renamed from: j */
    private AbstractC2246c f16255j;

    /* renamed from: k */
    private AbstractC2394d f16256k;

    /* renamed from: l */
    private boolean f16257l;

    /* renamed from: m */
    private boolean f16258m;

    /* renamed from: n */
    private AbstractC2345l f16259n;

    public ebm(Context context) {
        this(context, dyb.f16089a, null);
    }

    private ebm(Context context, dyb dybVar, C2248e c2248e) {
        this.f16246a = new BinderC3277kl();
        this.f16247b = context;
        this.f16248c = dybVar;
    }

    /* renamed from: b */
    private final void m7994b(String str) {
        if (this.f16251f == null) {
            throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 63).append("The ad unit ID must be set on InterstitialAd before ").append(str).append(" is called.").toString());
        }
    }

    /* renamed from: a */
    public final void m8002a(C2249b c2249b) {
        try {
            this.f16249d = c2249b;
            if (this.f16251f == null) {
                return;
            }
            this.f16251f.mo7961a(c2249b != null ? new dxw(c2249b) : null);
        } catch (RemoteException e) {
            C3645yb.m6744e("#008 Must be called on the main UI thread.", e);
        }
    }

    /* renamed from: a */
    public final void m8001a(C2391a c2391a) {
        try {
            this.f16253h = c2391a;
            if (this.f16251f == null) {
                return;
            }
            this.f16251f.mo7960a(c2391a != null ? new dxx(c2391a) : null);
        } catch (RemoteException e) {
            C3645yb.m6744e("#008 Must be called on the main UI thread.", e);
        }
    }

    /* renamed from: a */
    public final void m8000a(AbstractC2394d abstractC2394d) {
        try {
            this.f16256k = abstractC2394d;
            if (this.f16251f == null) {
                return;
            }
            this.f16251f.mo7951a(abstractC2394d != null ? new BinderC3463ri(abstractC2394d) : null);
        } catch (RemoteException e) {
            C3645yb.m6744e("#008 Must be called on the main UI thread.", e);
        }
    }

    /* renamed from: a */
    public final void m7999a(dxs dxsVar) {
        try {
            this.f16250e = dxsVar;
            if (this.f16251f == null) {
                return;
            }
            this.f16251f.mo7962a(dxsVar != null ? new dxr(dxsVar) : null);
        } catch (RemoteException e) {
            C3645yb.m6744e("#008 Must be called on the main UI thread.", e);
        }
    }

    /* renamed from: a */
    public final void m7998a(ebi ebiVar) {
        try {
            if (this.f16251f == null) {
                if (this.f16252g == null) {
                    m7994b("loadAd");
                }
                dyd m8191b = this.f16257l ? dyd.m8191b() : new dyd();
                dyl m8161b = dyx.m8161b();
                Context context = this.f16247b;
                this.f16251f = new dyq(m8161b, context, m8191b, this.f16252g, this.f16246a).m8172a(context, false);
                if (this.f16249d != null) {
                    this.f16251f.mo7961a(new dxw(this.f16249d));
                }
                if (this.f16250e != null) {
                    this.f16251f.mo7962a(new dxr(this.f16250e));
                }
                if (this.f16253h != null) {
                    this.f16251f.mo7960a(new dxx(this.f16253h));
                }
                if (this.f16254i != null) {
                    this.f16251f.mo7959a(new dyh(this.f16254i));
                }
                if (this.f16255j != null) {
                    this.f16251f.mo7950a(new BinderC3670z(this.f16255j));
                }
                if (this.f16256k != null) {
                    this.f16251f.mo7951a(new BinderC3463ri(this.f16256k));
                }
                this.f16251f.mo7957a(new eci(this.f16259n));
                this.f16251f.mo7945b(this.f16258m);
            }
            if (!this.f16251f.mo7965a(dyb.m8196a(this.f16247b, ebiVar))) {
                return;
            }
            this.f16246a.m7668a(ebiVar.m8051k());
        } catch (RemoteException e) {
            C3645yb.m6744e("#008 Must be called on the main UI thread.", e);
        }
    }

    /* renamed from: a */
    public final void m7997a(String str) {
        if (this.f16252g != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
        }
        this.f16252g = str;
    }

    /* renamed from: a */
    public final void m7996a(boolean z) {
        this.f16257l = true;
    }

    /* renamed from: a */
    public final boolean m8003a() {
        boolean z = false;
        try {
            if (this.f16251f != null) {
                z = this.f16251f.mo7944c();
            }
        } catch (RemoteException e) {
            C3645yb.m6744e("#008 Must be called on the main UI thread.", e);
        }
        return z;
    }

    /* renamed from: b */
    public final Bundle m7995b() {
        Bundle bundle;
        try {
        } catch (RemoteException e) {
            C3645yb.m6744e("#008 Must be called on the main UI thread.", e);
        }
        if (this.f16251f != null) {
            bundle = this.f16251f.mo7941f();
            return bundle;
        }
        bundle = new Bundle();
        return bundle;
    }

    /* renamed from: b */
    public final void m7993b(boolean z) {
        try {
            this.f16258m = z;
            if (this.f16251f == null) {
                return;
            }
            this.f16251f.mo7945b(z);
        } catch (RemoteException e) {
            C3645yb.m6744e("#008 Must be called on the main UI thread.", e);
        }
    }

    /* renamed from: c */
    public final void m7992c() {
        try {
            m7994b("show");
            this.f16251f.mo7940g();
        } catch (RemoteException e) {
            C3645yb.m6744e("#008 Must be called on the main UI thread.", e);
        }
    }
}
