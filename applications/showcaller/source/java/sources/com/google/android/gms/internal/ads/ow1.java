package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ow1.class */
public final class ow1 implements gb0 {
    /* renamed from: f */
    private static zzfgk m12487f(String str) {
        return "native".equals(str) ? zzfgk.NATIVE : "javascript".equals(str) ? zzfgk.JAVASCRIPT : zzfgk.NONE;
    }

    /* renamed from: g */
    private static zzfgj m12486g(String str) {
        boolean z;
        int hashCode = str.hashCode();
        if (hashCode == -1104128070) {
            if (str.equals("beginToRender")) {
                z = false;
            }
            z = true;
        } else if (hashCode != 1318088141) {
            if (hashCode == 1988248512 && str.equals("onePixel")) {
                z = true;
            }
            z = true;
        } else {
            if (str.equals("definedByJavascript")) {
                z = true;
            }
            z = true;
        }
        return z ? !z ? !z ? zzfgj.UNSPECIFIED : zzfgj.ONE_PIXEL : zzfgj.DEFINED_BY_JAVASCRIPT : zzfgj.BEGIN_TO_RENDER;
    }

    /* renamed from: h */
    private static zzfgh m12485h(String str) {
        boolean z;
        int hashCode = str.hashCode();
        if (hashCode == -382745961) {
            if (str.equals("htmlDisplay")) {
                z = false;
            }
            z = true;
        } else if (hashCode != 112202875) {
            if (hashCode == 714893483 && str.equals("nativeDisplay")) {
                z = true;
            }
            z = true;
        } else {
            if (str.equals("video")) {
                z = true;
            }
            z = true;
        }
        if (z) {
            if (z) {
                return zzfgh.NATIVE_DISPLAY;
            }
            if (z) {
                return zzfgh.VIDEO;
            }
            return null;
        }
        return zzfgh.HTML_DISPLAY;
    }

    @Override // com.google.android.gms.internal.ads.gb0
    /* renamed from: M */
    public final void mo12113M(AbstractC6253a abstractC6253a) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25810u3)).booleanValue() || !ip2.m14325b()) {
            return;
        }
        Object m16745J0 = BinderC6255b.m16745J0(abstractC6253a);
        if (!(m16745J0 instanceof kp2)) {
            return;
        }
        ((kp2) m16745J0).mo12832c();
    }

    @Override // com.google.android.gms.internal.ads.gb0
    /* renamed from: U */
    public final boolean mo12112U(Context context) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25810u3)).booleanValue()) {
            ei0.m15464f("Omid flag is disabled");
            return false;
        } else if (ip2.m14325b()) {
            return true;
        } else {
            ip2.m14326a(context);
            return ip2.m14325b();
        }
    }

    @Override // com.google.android.gms.internal.ads.gb0
    /* renamed from: a */
    public final String mo12111a(Context context) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25810u3)).booleanValue()) {
            return null;
        }
        return "a.1.3.3-google_20200416";
    }

    @Override // com.google.android.gms.internal.ads.gb0
    /* renamed from: b */
    public final AbstractC6253a mo12110b(String str, WebView webView, String str2, String str3, String str4, zzbzm zzbzmVar, zzbzl zzbzlVar, String str5) {
        AbstractC6253a abstractC6253a = null;
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25810u3)).booleanValue()) {
            if (!ip2.m14325b()) {
                abstractC6253a = null;
            } else {
                op2 m12549a = op2.m12549a("Google", str);
                zzfgk m12487f = m12487f("javascript");
                zzfgh m12485h = m12485h(zzbzlVar.toString());
                zzfgk zzfgkVar = zzfgk.NONE;
                if (m12487f == zzfgkVar) {
                    ei0.m15464f("Omid html session error; Unable to parse impression owner: javascript");
                    abstractC6253a = null;
                } else if (m12485h == null) {
                    String valueOf = String.valueOf(zzbzlVar);
                    valueOf.length();
                    ei0.m15464f("Omid html session error; Unable to parse creative type: ".concat(valueOf));
                    abstractC6253a = null;
                } else {
                    zzfgk m12487f2 = m12487f(str4);
                    if (m12485h == zzfgh.VIDEO && m12487f2 == zzfgkVar) {
                        String valueOf2 = String.valueOf(str4);
                        ei0.m15464f(valueOf2.length() != 0 ? "Omid html session error; Video events owner unknown for video creative: ".concat(valueOf2) : new String("Omid html session error; Video events owner unknown for video creative: "));
                        abstractC6253a = null;
                    } else {
                        abstractC6253a = BinderC6255b.m16744m2(kp2.m13835e(lp2.m13459a(m12485h, m12486g(zzbzmVar.toString()), m12487f, m12487f2, true), mp2.m13124a(m12549a, webView, str5, "")));
                    }
                }
            }
        }
        return abstractC6253a;
    }

    @Override // com.google.android.gms.internal.ads.gb0
    /* renamed from: c */
    public final AbstractC6253a mo12109c(String str, WebView webView, String str2, String str3, String str4, String str5, zzbzm zzbzmVar, zzbzl zzbzlVar, String str6) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25810u3)).booleanValue() || !ip2.m14325b()) {
            return null;
        }
        op2 m12549a = op2.m12549a(str5, str);
        zzfgk m12487f = m12487f("javascript");
        zzfgk m12487f2 = m12487f(str4);
        zzfgh m12485h = m12485h(zzbzlVar.toString());
        zzfgk zzfgkVar = zzfgk.NONE;
        if (m12487f == zzfgkVar) {
            ei0.m15464f("Omid js session error; Unable to parse impression owner: javascript");
            return null;
        } else if (m12485h == null) {
            String valueOf = String.valueOf(zzbzlVar);
            valueOf.length();
            ei0.m15464f("Omid js session error; Unable to parse creative type: ".concat(valueOf));
            return null;
        } else if (m12485h != zzfgh.VIDEO || m12487f2 != zzfgkVar) {
            return BinderC6255b.m16744m2(kp2.m13835e(lp2.m13459a(m12485h, m12486g(zzbzmVar.toString()), m12487f, m12487f2, true), mp2.m13123b(m12549a, webView, str6, "")));
        } else {
            String valueOf2 = String.valueOf(str4);
            ei0.m15464f(valueOf2.length() != 0 ? "Omid js session error; Video events owner unknown for video creative: ".concat(valueOf2) : new String("Omid js session error; Video events owner unknown for video creative: "));
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.gb0
    /* renamed from: d */
    public final void mo12108d(AbstractC6253a abstractC6253a, View view) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25810u3)).booleanValue() || !ip2.m14325b()) {
            return;
        }
        Object m16745J0 = BinderC6255b.m16745J0(abstractC6253a);
        if (!(m16745J0 instanceof kp2)) {
            return;
        }
        ((kp2) m16745J0).mo12831d(view, zzfgi.NOT_VISIBLE, "Ad overlay");
    }

    @Override // com.google.android.gms.internal.ads.gb0
    /* renamed from: e */
    public final void mo12107e(AbstractC6253a abstractC6253a, View view) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25810u3)).booleanValue() || !ip2.m14325b()) {
            return;
        }
        Object m16745J0 = BinderC6255b.m16745J0(abstractC6253a);
        if (!(m16745J0 instanceof kp2)) {
            return;
        }
        ((kp2) m16745J0).mo12833b(view);
    }

    @Override // com.google.android.gms.internal.ads.gb0
    public final void zzf(AbstractC6253a abstractC6253a) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25810u3)).booleanValue() || !ip2.m14325b()) {
            return;
        }
        Object m16745J0 = BinderC6255b.m16745J0(abstractC6253a);
        if (!(m16745J0 instanceof kp2)) {
            return;
        }
        ((kp2) m16745J0).mo12834a();
    }
}
