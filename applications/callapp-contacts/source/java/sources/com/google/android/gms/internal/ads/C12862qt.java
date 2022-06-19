package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
/* renamed from: com.google.android.gms.internal.ads.qt */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qt.class */
public final class C12862qt {

    /* renamed from: a */
    static final Object f49750a = new Object();

    /* renamed from: b */
    static boolean f49751b = false;

    /* renamed from: d */
    private static boolean f49752d = false;

    /* renamed from: c */
    cut f49753c;

    /* renamed from: b */
    private final AbstractC12126b m14217b(String str, WebView webView, String str2, String str3, String str4, String str5, EnumC12865qw enumC12865qw, EnumC12863qu enumC12863qu, String str6) {
        synchronized (f49750a) {
            try {
                try {
                    if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42763cT)).booleanValue() && f49751b) {
                        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42765cV)).booleanValue()) {
                            return m14220a(str, webView, str2, str3, str4, str5);
                        }
                        try {
                            return this.f49753c.mo17198b(str, BinderC12129d.m18979a(webView), str2, str3, str4, str5, enumC12865qw.toString(), enumC12863qu.toString(), str6);
                        } catch (RemoteException | NullPointerException e) {
                            C13088za.zze("#007 Could not call remote method.", e);
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

    /* renamed from: c */
    private final void m14216c(Context context) {
        synchronized (f49750a) {
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42763cT)).booleanValue() && !f49752d) {
                try {
                    f49752d = true;
                    this.f49753c = (cut) C13086yz.m13904a(context, "com.google.android.gms.ads.omid.DynamiteOmid", C12864qv.f49754a);
                } catch (zzbap e) {
                    C13088za.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    /* renamed from: a */
    public final AbstractC12126b m14222a(String str, WebView webView, String str2, String str3, String str4) {
        return m14220a(str, webView, str2, str3, str4, "Google");
    }

    /* renamed from: a */
    public final AbstractC12126b m14221a(String str, WebView webView, String str2, String str3, String str4, EnumC12865qw enumC12865qw, EnumC12863qu enumC12863qu, String str5) {
        return m14217b(str, webView, str2, str3, str4, "Google", enumC12865qw, enumC12863qu, str5);
    }

    /* renamed from: a */
    public final AbstractC12126b m14220a(String str, WebView webView, String str2, String str3, String str4, String str5) {
        synchronized (f49750a) {
            try {
                try {
                    if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42763cT)).booleanValue() && f49751b) {
                        try {
                            return this.f49753c.mo17202a(str, BinderC12129d.m18979a(webView), str2, str3, str4, str5);
                        } catch (RemoteException | NullPointerException e) {
                            C13088za.zze("#007 Could not call remote method.", e);
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
    public final AbstractC12126b m14219a(String str, WebView webView, String str2, String str3, String str4, String str5, EnumC12865qw enumC12865qw, EnumC12863qu enumC12863qu, String str6) {
        synchronized (f49750a) {
            try {
                try {
                    if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42763cT)).booleanValue() && f49751b) {
                        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42766cW)).booleanValue()) {
                            return m14220a(str, webView, str2, str3, str4, str5);
                        }
                        try {
                            return this.f49753c.mo17201a(str, BinderC12129d.m18979a(webView), str2, str3, str4, str5, enumC12865qw.toString(), enumC12863qu.toString(), str6);
                        } catch (RemoteException | NullPointerException e) {
                            C13088za.zze("#007 Could not call remote method.", e);
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
    public final void m14224a(AbstractC12126b abstractC12126b) {
        synchronized (f49750a) {
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42763cT)).booleanValue() && f49751b) {
                try {
                    this.f49753c.mo17200b(abstractC12126b);
                } catch (RemoteException | NullPointerException e) {
                    C13088za.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m14223a(AbstractC12126b abstractC12126b, View view) {
        synchronized (f49750a) {
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42763cT)).booleanValue() && f49751b) {
                try {
                    this.f49753c.mo17203a(abstractC12126b, BinderC12129d.m18979a(view));
                } catch (RemoteException | NullPointerException e) {
                    C13088za.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    /* renamed from: a */
    public final boolean m14225a(Context context) {
        synchronized (f49750a) {
            if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42763cT)).booleanValue()) {
                return false;
            }
            if (f49751b) {
                return true;
            }
            try {
                m14216c(context);
                boolean mo17204a = this.f49753c.mo17204a(BinderC12129d.m18979a(context));
                f49751b = mo17204a;
                return mo17204a;
            } catch (RemoteException | NullPointerException e) {
                C13088za.zze("#007 Could not call remote method.", e);
                return false;
            }
        }
    }

    /* renamed from: b */
    public final String m14218b(Context context) {
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42763cT)).booleanValue()) {
            return null;
        }
        try {
            m14216c(context);
            String valueOf = String.valueOf(this.f49753c.mo17205a());
            return valueOf.length() != 0 ? "a.".concat(valueOf) : new String("a.");
        } catch (RemoteException | NullPointerException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            return null;
        }
    }
}
