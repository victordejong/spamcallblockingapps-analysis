package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import androidx.core.app.C0578k;
import com.google.android.gms.ads.internal.C5625b;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.overlay.AbstractC5657s;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.util.AbstractC5739u0;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.dynamic.BinderC6255b;
import com.google.android.gms.internal.ads.AbstractC6673kq;
import com.google.android.gms.internal.ads.bp0;
import com.google.android.gms.internal.ads.ep0;
import com.google.android.gms.internal.ads.gp0;
import com.google.android.gms.internal.ads.nn0;
import com.google.android.gms.internal.ads.qa1;
import com.google.android.gms.internal.ads.s40;
import com.google.android.gms.internal.ads.so0;
import com.google.android.gms.internal.ads.wn0;
import com.google.android.gms.internal.ads.xo0;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/z20.class */
public final class z20<T extends AbstractC6673kq & nn0 & wn0 & s40 & so0 & xo0 & bp0 & qa1 & ep0 & gp0> implements n20<T> {

    /* renamed from: a */
    private final C5625b f32783a;

    /* renamed from: b */
    private final rn1 f32784b;

    /* renamed from: c */
    private final jo2 f32785c;

    /* renamed from: e */
    private final la0 f32787e;

    /* renamed from: f */
    private final dw1 f32788f;

    /* renamed from: g */
    private AbstractC5657s f32789g = null;

    /* renamed from: d */
    private final ii0 f32786d = new ii0(null);

    public z20(C5625b c5625b, la0 la0Var, dw1 dw1Var, rn1 rn1Var, jo2 jo2Var) {
        this.f32783a = c5625b;
        this.f32787e = la0Var;
        this.f32788f = dw1Var;
        this.f32784b = rn1Var;
        this.f32785c = jo2Var;
    }

    /* renamed from: c */
    public static boolean m8552c(Map<String, String> map) {
        return "1".equals(map.get("custom_close"));
    }

    /* renamed from: d */
    public static int m8551d(Map<String, String> map) {
        String str = map.get("o");
        if (str != null) {
            if ("p".equalsIgnoreCase(str)) {
                return 7;
            }
            if ("l".equalsIgnoreCase(str)) {
                return 6;
            }
            if (!"c".equalsIgnoreCase(str)) {
                return -1;
            }
            return C5667s.m18158f().mo18025h();
        }
        return -1;
    }

    /* renamed from: e */
    static Uri m8550e(Context context, C7016u c7016u, Uri uri, View view, Activity activity) {
        if (c7016u == null) {
            return uri;
        }
        Uri uri2 = uri;
        try {
            if (c7016u.m10446f(uri)) {
                uri2 = c7016u.m10447e(uri, context, view, activity);
            }
        } catch (zzaat e) {
            uri2 = uri;
        } catch (Exception e2) {
            C5667s.m18156h().m12235k(e2, "OpenGmsgHandler.maybeAddClickSignalsToUri");
            uri2 = uri;
        }
        return uri2;
    }

    /* renamed from: f */
    static Uri m8549f(Uri uri) {
        try {
            if (uri.getQueryParameter("aclk_ms") != null) {
                return uri.buildUpon().appendQueryParameter("aclk_upms", String.valueOf(SystemClock.uptimeMillis())).build();
            }
        } catch (UnsupportedOperationException e) {
            String valueOf = String.valueOf(uri.toString());
            ei0.m15466d(valueOf.length() != 0 ? "Error adding click uptime parameter to url: ".concat(valueOf) : new String("Error adding click uptime parameter to url: "), e);
        }
        return uri;
    }

    /* renamed from: h */
    private final boolean m8547h(T t, Context context, String str, String str2) {
        C5667s.m18160d();
        boolean m18066i = C5679c2.m18066i(context);
        C5667s.m18160d();
        AbstractC5739u0 m18075d = C5679c2.m18075d(context);
        rn1 rn1Var = this.f32784b;
        if (rn1Var != null) {
            lw1.m13409G6(context, rn1Var, this.f32785c, this.f32788f, str2, "offline_open");
        }
        T t2 = t;
        boolean z = t2.mo7894o().m13128g() && t2.mo7908g() == null;
        if (m18066i) {
            this.f32788f.m15671f(this.f32786d, str2);
            return false;
        }
        C5667s.m18160d();
        if (C0578k.m33381b(context).m33382a() && m18075d != null && !z) {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25650a6)).booleanValue()) {
                if (t2.mo7894o().m13128g()) {
                    lw1.m13410F6(t2.mo7908g(), null, m18075d, this.f32788f, this.f32784b, this.f32785c, str2, str);
                } else {
                    t.mo7934S(m18075d, this.f32788f, this.f32784b, this.f32785c, str2, str, C5667s.m18158f().mo18025h());
                }
                rn1 rn1Var2 = this.f32784b;
                if (rn1Var2 != null) {
                    lw1.m13409G6(context, rn1Var2, this.f32785c, this.f32788f, str2, "dialog_impression");
                }
                t.mo7877z0();
                return true;
            }
        }
        this.f32788f.m15670g(str2);
        if (this.f32784b == null) {
            return false;
        }
        HashMap hashMap = new HashMap();
        C5667s.m18160d();
        if (!C0578k.m33381b(context).m33382a()) {
            hashMap.put("dialog_not_shown_reason", "notifications_disabled");
        } else if (m18075d == null) {
            hashMap.put("dialog_not_shown_reason", "work_manager_unavailable");
        } else {
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25650a6)).booleanValue()) {
                hashMap.put("dialog_not_shown_reason", "notification_flow_disabled");
            } else if (z) {
                hashMap.put("dialog_not_shown_reason", "fullscreen_no_activity");
            }
        }
        lw1.m13408H6(context, this.f32784b, this.f32785c, this.f32788f, str2, "dialog_not_shown", hashMap);
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0195, code lost:
        if (com.google.android.gms.internal.ads.y20.m8981b(r0, r0, r0, r0) == null) goto L29;
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m8546i(T r7, java.util.Map<java.lang.String, java.lang.String> r8, boolean r9, java.lang.String r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 655
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.z20.m8546i(com.google.android.gms.internal.ads.kq, java.util.Map, boolean, java.lang.String, boolean):void");
    }

    /* renamed from: j */
    private final void m8545j(boolean z) {
        la0 la0Var = this.f32787e;
        if (la0Var != null) {
            la0Var.m13623i(z);
        }
    }

    /* renamed from: k */
    public final void m8544k(int i) {
        if (this.f32784b == null) {
            return;
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25717i6)).booleanValue()) {
            jo2 jo2Var = this.f32785c;
            io2 m14338a = io2.m14338a("cct_action");
            m14338a.m14336c("cct_open_status", C6606ix.m14258a(i));
            jo2Var.mo9502b(m14338a);
            return;
        }
        qn1 m11371d = this.f32784b.m11371d();
        m11371d.m11845d("action", "cct_action");
        m11371d.m11845d("cct_open_status", C6606ix.m14258a(i));
        m11371d.m11844e();
    }

    /* renamed from: b */
    public final void mo8404a(T t, Map<String, String> map) {
        boolean z;
        String str;
        boolean z2;
        T t2 = t;
        String m12915a = ng0.m12915a(map.get("u"), t2.getContext(), true);
        String str2 = map.get("a");
        if (str2 == null) {
            ei0.m15464f("Action missing from an open GMSG.");
            return;
        }
        C5625b c5625b = this.f32783a;
        if (c5625b != null && !c5625b.m18222b()) {
            this.f32783a.m18221c(m12915a);
            return;
        }
        ej2 mo7878z = t2.mo7878z();
        jj2 mo7964B = t2.mo7964B();
        if (mo7878z == null || mo7964B == null) {
            str = "";
            z = false;
        } else {
            z = mo7878z.f22230f0;
            str = mo7964B.f24897b;
        }
        boolean z3 = !((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25642Z6)).booleanValue() || !map.containsKey("sc") || !map.get("sc").equals("0");
        if ("expand".equalsIgnoreCase(str2)) {
            if (t2.mo7932T()) {
                ei0.m15464f("Cannot expand WebView that is already expanded.");
                return;
            }
            m8545j(false);
            t.mo7933S0(m8552c(map), m8551d(map), z3);
        } else if ("webapp".equalsIgnoreCase(str2)) {
            m8545j(false);
            if (m12915a != null) {
                t.mo7893o0(m8552c(map), m8551d(map), m12915a, z3);
            } else {
                t.mo7937Q0(m8552c(map), m8551d(map), map.get("html"), map.get("baseurl"), z3);
            }
        } else if ("chrome_custom_tab".equalsIgnoreCase(str2)) {
            Context context = t2.getContext();
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25606V2)).booleanValue()) {
                z2 = false;
            } else {
                if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25656b3)).booleanValue()) {
                    C5722o1.m17990k("User opt out chrome custom tab.");
                    z2 = false;
                } else {
                    if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25638Z2)).booleanValue()) {
                        z2 = true;
                    } else {
                        String str3 = (String) C7192yr.m8714c().m14263c(C6679kw.f25647a3);
                        z2 = false;
                        if (!str3.isEmpty()) {
                            if (context == null) {
                                z2 = false;
                            } else {
                                String packageName = context.getPackageName();
                                Iterator<String> it = hv2.m14535b(ku2.m13780b(';')).m14533d(str3).iterator();
                                do {
                                    z2 = false;
                                    if (!it.hasNext()) {
                                        break;
                                    }
                                } while (!it.next().equals(packageName));
                                z2 = true;
                            }
                        }
                    }
                }
            }
            boolean m14023a = C6643jx.m14023a(t2.getContext());
            if (z2) {
                if (m14023a) {
                    m8545j(true);
                    if (TextUtils.isEmpty(m12915a)) {
                        ei0.m15464f("Cannot open browser with null or empty url");
                        m8544k(7);
                        return;
                    }
                    Uri m8549f = m8549f(m8550e(t2.getContext(), t2.mo7966A(), Uri.parse(m12915a), t2.mo7960D(), t2.mo7908g()));
                    if (z && this.f32788f != null && m8547h(t, t2.getContext(), m8549f.toString(), str)) {
                        return;
                    }
                    this.f32789g = new v20(this);
                    t.mo7961C0(new zzc(null, m8549f.toString(), null, null, null, null, null, null, BinderC6255b.m16744m2(this.f32789g).asBinder(), true), z3);
                    return;
                }
                m8544k(4);
            }
            map.put("use_first_package", "true");
            map.put("use_running_process", "true");
            m8546i(t, map, z, str, z3);
        } else if ("app".equalsIgnoreCase(str2) && "true".equalsIgnoreCase(map.get("system_browser"))) {
            m8546i(t, map, z, str, z3);
        } else if ("open_app".equalsIgnoreCase(str2)) {
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25585S5)).booleanValue()) {
                return;
            }
            m8545j(true);
            String str4 = map.get("p");
            if (str4 == null) {
                ei0.m15464f("Package name missing from open app action.");
            } else if (z && this.f32788f != null && m8547h(t, t2.getContext(), str4, str)) {
            } else {
                PackageManager packageManager = t2.getContext().getPackageManager();
                if (packageManager == null) {
                    ei0.m15464f("Cannot get package manager from open app action.");
                    return;
                }
                Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str4);
                if (launchIntentForPackage == null) {
                    return;
                }
                t.mo7961C0(new zzc(launchIntentForPackage, this.f32789g), z3);
            }
        } else {
            m8545j(true);
            String str5 = map.get("intent_url");
            Intent intent = null;
            if (!TextUtils.isEmpty(str5)) {
                try {
                    intent = Intent.parseUri(str5, 0);
                } catch (URISyntaxException e) {
                    String valueOf = String.valueOf(str5);
                    ei0.m15466d(valueOf.length() != 0 ? "Error parsing the url: ".concat(valueOf) : new String("Error parsing the url: "), e);
                    intent = null;
                }
            }
            if (intent != null && intent.getData() != null) {
                Uri data = intent.getData();
                if (!Uri.EMPTY.equals(data)) {
                    Uri m8549f2 = m8549f(m8550e(t2.getContext(), t2.mo7966A(), data, t2.mo7960D(), t2.mo7908g()));
                    if (!TextUtils.isEmpty(intent.getType())) {
                        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25593T5)).booleanValue()) {
                            intent.setDataAndType(m8549f2, intent.getType());
                        }
                    }
                    intent.setData(m8549f2);
                }
            }
            boolean z4 = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25685e6)).booleanValue() && "intent_async".equalsIgnoreCase(str2) && map.containsKey("event_id");
            HashMap hashMap = new HashMap();
            if (z4) {
                this.f32789g = new x20(this, z3, t, hashMap, map);
                z3 = false;
            }
            if (intent != null) {
                if (!z || this.f32788f == null || !m8547h(t, t2.getContext(), intent.getData().toString(), str)) {
                    t.mo7961C0(new zzc(intent, this.f32789g), z3);
                    return;
                } else if (!z4) {
                    return;
                } else {
                    hashMap.put(map.get("event_id"), Boolean.TRUE);
                    t.mo7959D0("openIntentAsync", hashMap);
                    return;
                }
            }
            String str6 = m12915a;
            if (!TextUtils.isEmpty(m12915a)) {
                str6 = m8549f(m8550e(t2.getContext(), t2.mo7966A(), Uri.parse(m12915a), t2.mo7960D(), t2.mo7908g())).toString();
            }
            if (!z || this.f32788f == null || !m8547h(t, t2.getContext(), str6, str)) {
                t.mo7961C0(new zzc(map.get("i"), str6, map.get("m"), map.get("p"), map.get("c"), map.get("f"), map.get("e"), this.f32789g), z3);
            } else if (!z4) {
            } else {
                hashMap.put(map.get("event_id"), Boolean.TRUE);
                t.mo7959D0("openIntentAsync", hashMap);
            }
        }
    }
}
