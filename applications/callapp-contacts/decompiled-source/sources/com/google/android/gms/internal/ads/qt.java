package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qt.class */
public final class qt {

    /* renamed from: a  reason: collision with root package name */
    static final Object f28344a = new Object();

    /* renamed from: b  reason: collision with root package name */
    static boolean f28345b = false;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f28346d = false;

    /* renamed from: c  reason: collision with root package name */
    cut f28347c;

    private final b b(String str, WebView webView, String str2, String str3, String str4, String str5, qw qwVar, qu quVar, String str6) {
        synchronized (f28344a) {
            try {
                try {
                    if (((Boolean) ekb.e().a(aq.cT)).booleanValue() && f28345b) {
                        if (!((Boolean) ekb.e().a(aq.cV)).booleanValue()) {
                            return a(str, webView, str2, str3, str4, str5);
                        }
                        try {
                            return this.f28347c.b(str, d.a(webView), str2, str3, str4, str5, qwVar.toString(), quVar.toString(), str6);
                        } catch (RemoteException | NullPointerException e) {
                            za.zze("#007 Could not call remote method.", e);
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

    private final void c(Context context) {
        synchronized (f28344a) {
            if (((Boolean) ekb.e().a(aq.cT)).booleanValue() && !f28346d) {
                try {
                    f28346d = true;
                    this.f28347c = (cut) yz.a(context, "com.google.android.gms.ads.omid.DynamiteOmid", qv.f28348a);
                } catch (zzbap e) {
                    za.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final b a(String str, WebView webView, String str2, String str3, String str4) {
        return a(str, webView, str2, str3, str4, "Google");
    }

    public final b a(String str, WebView webView, String str2, String str3, String str4, qw qwVar, qu quVar, String str5) {
        return b(str, webView, str2, str3, str4, "Google", qwVar, quVar, str5);
    }

    public final b a(String str, WebView webView, String str2, String str3, String str4, String str5) {
        synchronized (f28344a) {
            try {
                try {
                    if (((Boolean) ekb.e().a(aq.cT)).booleanValue() && f28345b) {
                        try {
                            return this.f28347c.a(str, d.a(webView), str2, str3, str4, str5);
                        } catch (RemoteException | NullPointerException e) {
                            za.zze("#007 Could not call remote method.", e);
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

    public final b a(String str, WebView webView, String str2, String str3, String str4, String str5, qw qwVar, qu quVar, String str6) {
        synchronized (f28344a) {
            try {
                try {
                    if (((Boolean) ekb.e().a(aq.cT)).booleanValue() && f28345b) {
                        if (!((Boolean) ekb.e().a(aq.cW)).booleanValue()) {
                            return a(str, webView, str2, str3, str4, str5);
                        }
                        try {
                            return this.f28347c.a(str, d.a(webView), str2, str3, str4, str5, qwVar.toString(), quVar.toString(), str6);
                        } catch (RemoteException | NullPointerException e) {
                            za.zze("#007 Could not call remote method.", e);
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

    public final void a(b bVar) {
        synchronized (f28344a) {
            if (((Boolean) ekb.e().a(aq.cT)).booleanValue() && f28345b) {
                try {
                    this.f28347c.b(bVar);
                } catch (RemoteException | NullPointerException e) {
                    za.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final void a(b bVar, View view) {
        synchronized (f28344a) {
            if (((Boolean) ekb.e().a(aq.cT)).booleanValue() && f28345b) {
                try {
                    this.f28347c.a(bVar, d.a(view));
                } catch (RemoteException | NullPointerException e) {
                    za.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final boolean a(Context context) {
        synchronized (f28344a) {
            if (!((Boolean) ekb.e().a(aq.cT)).booleanValue()) {
                return false;
            }
            if (f28345b) {
                return true;
            }
            try {
                c(context);
                boolean a2 = this.f28347c.a(d.a(context));
                f28345b = a2;
                return a2;
            } catch (RemoteException | NullPointerException e) {
                za.zze("#007 Could not call remote method.", e);
                return false;
            }
        }
    }

    public final String b(Context context) {
        if (!((Boolean) ekb.e().a(aq.cT)).booleanValue()) {
            return null;
        }
        try {
            c(context);
            String valueOf = String.valueOf(this.f28347c.a());
            return valueOf.length() != 0 ? "a.".concat(valueOf) : new String("a.");
        } catch (RemoteException | NullPointerException e) {
            za.zze("#007 Could not call remote method.", e);
            return null;
        }
    }
}
