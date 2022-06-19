package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fb0.class */
public final class fb0 implements gb0 {

    /* renamed from: a */
    private static final Object f22770a = new Object();

    /* renamed from: b */
    static boolean f22771b = false;

    /* renamed from: c */
    static boolean f22772c = false;

    /* renamed from: d */
    fp2 f22773d;

    @Override // com.google.android.gms.internal.ads.gb0
    /* renamed from: M */
    public final void mo12113M(AbstractC6253a abstractC6253a) {
        synchronized (f22770a) {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25810u3)).booleanValue() && f22771b) {
                try {
                    this.f22773d.mo15122V(abstractC6253a);
                } catch (RemoteException | NullPointerException e) {
                    ei0.m15461i("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.gb0
    /* renamed from: U */
    public final boolean mo12112U(Context context) {
        synchronized (f22770a) {
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25810u3)).booleanValue()) {
                return false;
            }
            if (f22771b) {
                return true;
            }
            try {
                m15285f(context);
                boolean mo15124E = this.f22773d.mo15124E(BinderC6255b.m16744m2(context));
                f22771b = mo15124E;
                return mo15124E;
            } catch (RemoteException | NullPointerException e) {
                ei0.m15461i("#007 Could not call remote method.", e);
                return false;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.gb0
    /* renamed from: a */
    public final String mo12111a(Context context) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25810u3)).booleanValue()) {
            return null;
        }
        try {
            m15285f(context);
            String valueOf = String.valueOf(this.f22773d.mo15119f());
            return valueOf.length() != 0 ? "a.".concat(valueOf) : new String("a.");
        } catch (RemoteException | NullPointerException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.gb0
    /* renamed from: b */
    public final AbstractC6253a mo12110b(String str, WebView webView, String str2, String str3, String str4, zzbzm zzbzmVar, zzbzl zzbzlVar, String str5) {
        AbstractC6253a abstractC6253a;
        synchronized (f22770a) {
            try {
                try {
                    if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25810u3)).booleanValue() && f22771b) {
                        try {
                            abstractC6253a = this.f22773d.mo15123P0(str, BinderC6255b.m16744m2(webView), "", "javascript", str4, "Google", zzbzmVar.toString(), zzbzlVar.toString(), str5);
                        } catch (RemoteException | NullPointerException e) {
                            ei0.m15461i("#007 Could not call remote method.", e);
                            abstractC6253a = null;
                        }
                        return abstractC6253a;
                    }
                    abstractC6253a = null;
                    return abstractC6253a;
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.gb0
    /* renamed from: c */
    public final AbstractC6253a mo12109c(String str, WebView webView, String str2, String str3, String str4, String str5, zzbzm zzbzmVar, zzbzl zzbzlVar, String str6) {
        synchronized (f22770a) {
            try {
                try {
                    if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25810u3)).booleanValue() && f22771b) {
                        try {
                            return this.f22773d.mo15118z1(str, BinderC6255b.m16744m2(webView), "", "javascript", str4, str5, zzbzmVar.toString(), zzbzlVar.toString(), str6);
                        } catch (RemoteException | NullPointerException e) {
                            ei0.m15461i("#007 Could not call remote method.", e);
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
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.gb0
    /* renamed from: d */
    public final void mo12108d(AbstractC6253a abstractC6253a, View view) {
        synchronized (f22770a) {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25810u3)).booleanValue() && f22771b) {
                try {
                    this.f22773d.mo15121W2(abstractC6253a, BinderC6255b.m16744m2(view));
                } catch (RemoteException | NullPointerException e) {
                    ei0.m15461i("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.gb0
    /* renamed from: e */
    public final void mo12107e(AbstractC6253a abstractC6253a, View view) {
        synchronized (f22770a) {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25810u3)).booleanValue() && f22771b) {
                try {
                    this.f22773d.mo15120d5(abstractC6253a, BinderC6255b.m16744m2(view));
                } catch (RemoteException | NullPointerException e) {
                    ei0.m15461i("#007 Could not call remote method.", e);
                }
            }
        }
    }

    /* renamed from: f */
    final void m15285f(Context context) {
        synchronized (f22770a) {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25810u3)).booleanValue() && !f22772c) {
                try {
                    f22772c = true;
                    this.f22773d = (fp2) hi0.m14638a(context, "com.google.android.gms.ads.omid.DynamiteOmid", eb0.f22054a);
                } catch (zzcgw e) {
                    ei0.m15461i("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.gb0
    public final void zzf(AbstractC6253a abstractC6253a) {
        synchronized (f22770a) {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25810u3)).booleanValue() && f22771b) {
                try {
                    this.f22773d.zzf(abstractC6253a);
                } catch (RemoteException | NullPointerException e) {
                    ei0.m15461i("#007 Could not call remote method.", e);
                }
            }
        }
    }
}
