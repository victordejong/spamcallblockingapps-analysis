package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import p131c.p161d.p170b.p224d.p252g.p253a.C3828n3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqv.class */
public final class zzaqv {

    /* renamed from: b */
    public static final Object f24310b = new Object();
    @VisibleForTesting

    /* renamed from: c */
    public static boolean f24311c = false;
    @VisibleForTesting

    /* renamed from: d */
    public static boolean f24312d = false;
    @VisibleForTesting

    /* renamed from: a */
    public zzdsy f24313a;

    /* renamed from: a */
    public final IObjectWrapper m16415a(String str, WebView webView, String str2, String str3, String str4) {
        return m16414a(str, webView, str2, str3, str4, "Google");
    }

    /* renamed from: a */
    public final IObjectWrapper m16414a(String str, WebView webView, String str2, String str3, String str4, String str5) {
        synchronized (f24310b) {
            try {
                try {
                    if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23897u2)).booleanValue() && f24311c) {
                        try {
                            return this.f24313a.mo13226a(str, ObjectWrapper.m17020a(webView), str2, str3, str4, str5);
                        } catch (RemoteException | NullPointerException e) {
                            zzbbq.m15851d("#007 Could not call remote method.", e);
                            return null;
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    /* renamed from: a */
    public final String m16418a(Context context) {
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23897u2)).booleanValue()) {
            return null;
        }
        try {
            m16410c(context);
            String valueOf = String.valueOf(this.f24313a.mo13228Y1());
            return valueOf.length() != 0 ? "a.".concat(valueOf) : new String("a.");
        } catch (RemoteException | NullPointerException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
            return null;
        }
    }

    /* renamed from: a */
    public final void m16417a(IObjectWrapper iObjectWrapper) {
        synchronized (f24310b) {
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23897u2)).booleanValue() && f24311c) {
                try {
                    this.f24313a.mo13229P(iObjectWrapper);
                } catch (RemoteException | NullPointerException e) {
                    zzbbq.m15851d("#007 Could not call remote method.", e);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m16416a(IObjectWrapper iObjectWrapper, View view) {
        synchronized (f24310b) {
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23897u2)).booleanValue() && f24311c) {
                try {
                    this.f24313a.mo13225b(iObjectWrapper, ObjectWrapper.m17020a(view));
                } catch (RemoteException | NullPointerException e) {
                    zzbbq.m15851d("#007 Could not call remote method.", e);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m16412b(IObjectWrapper iObjectWrapper) {
        synchronized (f24310b) {
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23897u2)).booleanValue() && f24311c) {
                try {
                    this.f24313a.mo13231A(iObjectWrapper);
                } catch (RemoteException | NullPointerException e) {
                    zzbbq.m15851d("#007 Could not call remote method.", e);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m16411b(IObjectWrapper iObjectWrapper, View view) {
        synchronized (f24310b) {
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23897u2)).booleanValue() && f24311c) {
                try {
                    this.f24313a.mo13227a(iObjectWrapper, ObjectWrapper.m17020a(view));
                } catch (RemoteException | NullPointerException e) {
                    zzbbq.m15851d("#007 Could not call remote method.", e);
                }
            }
        }
    }

    /* renamed from: b */
    public final boolean m16413b(Context context) {
        synchronized (f24310b) {
            if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23897u2)).booleanValue()) {
                return false;
            }
            if (f24311c) {
                return true;
            }
            try {
                m16410c(context);
                boolean F = this.f24313a.mo13230F(ObjectWrapper.m17020a(context));
                f24311c = F;
                return F;
            } catch (RemoteException | NullPointerException e) {
                zzbbq.m15851d("#007 Could not call remote method.", e);
                return false;
            }
        }
    }

    @VisibleForTesting
    /* renamed from: c */
    public final void m16410c(Context context) {
        synchronized (f24310b) {
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23897u2)).booleanValue() && !f24312d) {
                try {
                    f24312d = true;
                    this.f24313a = (zzdsy) zzbbt.m15847a(context, "com.google.android.gms.ads.omid.DynamiteOmid", C3828n3.f14213a);
                } catch (zzbbv e) {
                    zzbbq.m15851d("#007 Could not call remote method.", e);
                }
            }
        }
    }
}
