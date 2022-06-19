package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.internal.ads.nv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nv.class */
public final class C3368nv {

    /* renamed from: a */
    private static final Object f17045a = new Object();
    @GuardedBy("lock")

    /* renamed from: b */
    private static boolean f17046b = false;
    @GuardedBy("lock")

    /* renamed from: c */
    private static boolean f17047c = false;

    /* renamed from: d */
    private clo f17048d;

    /* renamed from: c */
    private final void m7386c(Context context) {
        synchronized (f17045a) {
            if (((Boolean) dyx.m8158e().m7876a(edi.f16487cn)).booleanValue() && !f17047c) {
                try {
                    f17047c = true;
                    this.f17048d = (clo) C3644ya.m6755a(context, "com.google.android.gms.ads.omid.DynamiteOmid", C3367nu.f17044a);
                } catch (zzazx e) {
                    C3645yb.m6744e("#007 Could not call remote method.", e);
                }
            }
        }
    }

    /* renamed from: a */
    public final AbstractC2731a m7391a(String str, WebView webView, String str2, String str3, String str4) {
        return m7390a(str, webView, str2, str3, str4, "Google");
    }

    /* renamed from: a */
    public final AbstractC2731a m7390a(String str, WebView webView, String str2, String str3, String str4, String str5) {
        AbstractC2731a abstractC2731a;
        synchronized (f17045a) {
            if (!((Boolean) dyx.m8158e().m7876a(edi.f16487cn)).booleanValue() || !f17046b) {
                abstractC2731a = null;
            } else {
                try {
                    abstractC2731a = this.f17048d.mo11090a(str, BinderC2734b.m13794a(webView), str2, str3, str4, str5);
                } catch (RemoteException | NullPointerException e) {
                    C3645yb.m6744e("#007 Could not call remote method.", e);
                    abstractC2731a = null;
                }
            }
        }
        return abstractC2731a;
    }

    /* renamed from: a */
    public final void m7393a(AbstractC2731a abstractC2731a) {
        synchronized (f17045a) {
            if (!((Boolean) dyx.m8158e().m7876a(edi.f16487cn)).booleanValue() || !f17046b) {
                return;
            }
            try {
                this.f17048d.mo11089b(abstractC2731a);
            } catch (RemoteException | NullPointerException e) {
                C3645yb.m6744e("#007 Could not call remote method.", e);
            }
        }
    }

    /* renamed from: a */
    public final void m7392a(AbstractC2731a abstractC2731a, View view) {
        synchronized (f17045a) {
            if (!((Boolean) dyx.m8158e().m7876a(edi.f16487cn)).booleanValue() || !f17046b) {
                return;
            }
            try {
                this.f17048d.mo11091a(abstractC2731a, BinderC2734b.m13794a(view));
            } catch (RemoteException | NullPointerException e) {
                C3645yb.m6744e("#007 Could not call remote method.", e);
            }
        }
    }

    /* renamed from: a */
    public final boolean m7394a(Context context) {
        boolean z;
        synchronized (f17045a) {
            if (!((Boolean) dyx.m8158e().m7876a(edi.f16487cn)).booleanValue()) {
                z = false;
            } else if (f17046b) {
                z = true;
            } else {
                try {
                    m7386c(context);
                    z = this.f17048d.mo11092a(BinderC2734b.m13794a(context));
                    f17046b = z;
                } catch (RemoteException | NullPointerException e) {
                    C3645yb.m6744e("#007 Could not call remote method.", e);
                    z = false;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public final String m7389b(Context context) {
        String str;
        if (!((Boolean) dyx.m8158e().m7876a(edi.f16487cn)).booleanValue()) {
            str = null;
        } else {
            try {
                m7386c(context);
                String valueOf = String.valueOf(this.f17048d.mo11093a());
                str = valueOf.length() != 0 ? "a.".concat(valueOf) : new String("a.");
            } catch (RemoteException | NullPointerException e) {
                C3645yb.m6744e("#007 Could not call remote method.", e);
                str = null;
            }
        }
        return str;
    }

    /* renamed from: b */
    public final void m7388b(AbstractC2731a abstractC2731a) {
        synchronized (f17045a) {
            if (!((Boolean) dyx.m8158e().m7876a(edi.f16487cn)).booleanValue() || !f17046b) {
                return;
            }
            try {
                this.f17048d.mo11087c(abstractC2731a);
            } catch (RemoteException | NullPointerException e) {
                C3645yb.m6744e("#007 Could not call remote method.", e);
            }
        }
    }

    /* renamed from: b */
    public final void m7387b(AbstractC2731a abstractC2731a, View view) {
        synchronized (f17045a) {
            if (!((Boolean) dyx.m8158e().m7876a(edi.f16487cn)).booleanValue() || !f17046b) {
                return;
            }
            try {
                this.f17048d.mo11088b(abstractC2731a, BinderC2734b.m13794a(view));
            } catch (RemoteException | NullPointerException e) {
                C3645yb.m6744e("#007 Could not call remote method.", e);
            }
        }
    }
}
