package com.appnext.core;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import com.amazon.device.ads.DtbConstants;
import com.appnext.base.C0472a;
import com.appnext.core.C0540f;
import com.tenor.android.core.network.constant.Protocols;
import java.io.IOException;
import java.util.HashMap;
/* renamed from: com.appnext.core.q */
/* loaded from: classes-dex2jar.jar:com/appnext/core/q.class */
public class C0566q {
    private C0540f click;
    private Context context;

    /* renamed from: el */
    private AbstractC0570a f1849el;

    /* renamed from: da */
    private String f1848da = "";
    private String guid = "";
    private String banner = "";

    /* renamed from: em */
    private C0540f.AbstractC0549a f1850em = new C0540f.AbstractC0549a() { // from class: com.appnext.core.q.3
        @Override // com.appnext.core.C0540f.AbstractC0549a
        public final void error(String str) {
            try {
                C0566q.this.m42336a(C0551g.m42374f("admin.appnext.com", "applink"), C0566q.this.f1849el.mo42125d().getBannerID(), C0566q.this.f1849el.mo42126c().getPlacementID(), C0566q.this.f1849el.mo42126c().getTID(), str, "SetDOpenV1");
            } catch (Throwable th) {
                C0472a.m42577a("UserAction$error", th);
            }
            try {
                if (!Boolean.parseBoolean(C0566q.this.f1849el.mo42124e().m42476y("urlApp_protection"))) {
                    if (str == null) {
                        return;
                    }
                    C0566q.m42337a(C0566q.this, str);
                    return;
                }
                C0566q c0566q = C0566q.this;
                C0566q.m42337a(c0566q, "market://details?id=" + C0566q.this.f1849el.mo42125d().getAdPackage());
            } catch (Throwable th2) {
                C0472a.m42577a("UserAction$error", th2);
            }
        }

        @Override // com.appnext.core.C0540f.AbstractC0549a
        public final void onMarket(String str) {
            AppnextAd mo42125d = C0566q.this.f1849el.mo42125d();
            AbstractC0501Ad mo42126c = C0566q.this.f1849el.mo42126c();
            if (mo42126c == null || mo42125d == null || C0566q.this.context == null) {
                return;
            }
            if (!C0551g.m42381b(C0566q.this.context, mo42125d.getAdPackage())) {
                try {
                    if (str.startsWith("market://details?id=" + mo42125d.getAdPackage()) || str.startsWith(Protocols.HTTP)) {
                        return;
                    }
                    C0566q.this.m42336a(C0551g.m42374f("admin.appnext.com", "applink"), mo42125d.getBannerID(), mo42126c.getPlacementID(), mo42126c.getTID(), str, "SetROpenV1");
                } catch (Throwable th) {
                    C0472a.m42577a("UserAction$onMarket", th);
                }
            } else if (!str.startsWith("market://")) {
                try {
                    C0566q.m42337a(C0566q.this, str);
                } catch (Throwable th2) {
                    C0566q.this.f1849el.report("error_no_market");
                }
            } else {
                try {
                    Intent launchIntentForPackage = C0566q.this.context.getPackageManager().getLaunchIntentForPackage(mo42125d.getAdPackage());
                    launchIntentForPackage.addFlags(268435456);
                    C0566q.this.context.startActivity(launchIntentForPackage);
                } catch (Throwable th3) {
                    C0566q.this.f1849el.report("error_no_market");
                }
            }
        }
    };

    /* renamed from: com.appnext.core.q$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/core/q$a.class */
    public interface AbstractC0570a {
        /* renamed from: c */
        AbstractC0501Ad mo42126c();

        /* renamed from: d */
        AppnextAd mo42125d();

        /* renamed from: e */
        SettingsManager mo42124e();

        void report(String str);
    }

    public C0566q(Context context, AbstractC0570a abstractC0570a) {
        this.context = context;
        this.click = C0540f.m42400f(context);
        this.f1849el = abstractC0570a;
    }

    /* renamed from: a */
    public static /* synthetic */ void m42337a(C0566q c0566q, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        intent.addFlags(268435456);
        c0566q.context.startActivity(intent);
    }

    /* renamed from: a */
    public final void m42340a(final AppnextAd appnextAd, String str, C0540f.AbstractC0549a abstractC0549a) {
        final C0540f c0540f = this.click;
        if (c0540f == null) {
            return;
        }
        C0564o.m42343az().m42344a(new Runnable() { // from class: com.appnext.core.f.6
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    Context context = c0540f.context;
                    C0551g.m42391a(context, appnextAd.getImpressionURL() + "&device=" + C0551g.m42383au() + "&ox=0", null);
                } catch (Throwable th) {
                    C0472a.m42577a("AppnextCK$adVta", th);
                }
            }
        });
    }

    /* renamed from: a */
    public final void m42339a(AppnextAd appnextAd, final String str, String str2, final C0540f.AbstractC0549a abstractC0549a) {
        try {
            if (!m42335aB()) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.core.q.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            C0540f.AbstractC0549a abstractC0549a2 = C0566q.this.f1850em;
                            abstractC0549a2.error(str + "&device=" + C0551g.m42383au());
                            C0540f.AbstractC0549a abstractC0549a3 = abstractC0549a;
                            if (abstractC0549a3 == null) {
                                return;
                            }
                            abstractC0549a3.error(str + "&device=" + C0551g.m42383au());
                        } catch (Throwable th) {
                        }
                    }
                });
            } else if (appnextAd == null) {
            } else {
                if (!TextUtils.isEmpty(this.f1848da) && this.f1848da.contains(appnextAd.getAdPackage())) {
                    C0551g.m42391a(this.context, "https://admin.appnext.com/AdminService.asmx/SetRL?guid=" + this.guid + "&bid=" + this.banner + "&pid=" + str2, null);
                    this.f1850em.onMarket(this.f1848da);
                    if (abstractC0549a != null) {
                        abstractC0549a.onMarket(this.f1848da);
                    }
                    this.f1848da = "";
                    return;
                }
                new StringBuilder("click url ").append(str);
                String str3 = str + "&device=" + C0551g.m42383au();
                String webview = appnextAd.getWebview();
                boolean z = true;
                switch (webview.hashCode()) {
                    case 48:
                        if (webview.equals(DtbConstants.NETWORK_TYPE_UNKNOWN)) {
                            z = true;
                            break;
                        }
                        break;
                    case 49:
                        if (webview.equals("1")) {
                            z = true;
                            break;
                        }
                        break;
                    case 50:
                        if (webview.equals("2")) {
                            z = false;
                            break;
                        }
                        break;
                }
                if (!z) {
                    this.f1850em.onMarket(str3);
                    if (abstractC0549a == null) {
                        return;
                    }
                    abstractC0549a.onMarket(str3);
                } else if (!z) {
                    C0540f c0540f = this.click;
                    if (c0540f == null) {
                        return;
                    }
                    c0540f.m42410a(appnextAd.getAppURL(), appnextAd.getMarketUrl(), str3, appnextAd.getBannerID(), new C0540f.AbstractC0549a() { // from class: com.appnext.core.q.2
                        @Override // com.appnext.core.C0540f.AbstractC0549a
                        public final void error(String str4) {
                            C0566q.this.f1850em.error(str4);
                            C0540f.AbstractC0549a abstractC0549a2 = abstractC0549a;
                            if (abstractC0549a2 != null) {
                                abstractC0549a2.error(str4);
                            }
                        }

                        @Override // com.appnext.core.C0540f.AbstractC0549a
                        public final void onMarket(String str4) {
                            C0566q.this.f1850em.onMarket(str4);
                            C0540f.AbstractC0549a abstractC0549a2 = abstractC0549a;
                            if (abstractC0549a2 != null) {
                                abstractC0549a2.onMarket(str4);
                            }
                        }
                    }, Long.parseLong(this.f1849el.mo42124e().m42476y("resolve_timeout")) * 1000);
                } else {
                    Intent intent = new Intent(this.context, ResultActivity.class);
                    intent.putExtra("url", str3);
                    intent.putExtra("title", appnextAd.getAdTitle());
                    intent.addFlags(268435456);
                    this.context.startActivity(intent);
                    if (abstractC0549a == null) {
                        return;
                    }
                    abstractC0549a.onMarket(str3);
                }
            }
        } catch (Throwable th) {
            C0472a.m42577a("UserAction$doClick", th);
        }
    }

    /* renamed from: a */
    public final void m42336a(final String str, final String str2, final String str3, final String str4, final String str5, final String str6) {
        final C0540f c0540f = this.click;
        if (c0540f == null) {
            return;
        }
        C0564o.m42343az().m42344a(new Runnable() { // from class: com.appnext.core.f.7
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    HashMap hashMap = new HashMap();
                    hashMap.put("guid", str);
                    hashMap.put("bannerId", str2);
                    hashMap.put("placementId", str3);
                    hashMap.put("vid", str4);
                    hashMap.put("url", str5);
                    Context context = c0540f.context;
                    C0551g.m42391a(context, "https://admin.appnext.com/AdminService.asmx/" + str6, hashMap);
                } catch (Throwable th) {
                    C0472a.m42577a("AppnextCK$serverNotify", th);
                }
            }
        });
    }

    /* renamed from: aB */
    public final boolean m42335aB() {
        try {
            if (this.context.checkPermission("android.permission.ACCESS_NETWORK_STATE", Process.myPid(), Process.myUid()) != 0) {
                C0551g.m42391a(this.context, "http://www.appnext.com/myid.html", null);
                return true;
            }
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                return true;
            }
            throw new IOException();
        } catch (Throwable th) {
            C0472a.m42577a("UserAction$checkConnection", th);
            return false;
        }
    }

    /* renamed from: c */
    public final void m42333c(AppnextAd appnextAd, C0540f.AbstractC0549a abstractC0549a) {
        this.click.m42412a(appnextAd.getMarketUrl(), abstractC0549a);
    }

    /* renamed from: d */
    public final void m42331d(AppnextAd appnextAd) {
        try {
            C0540f c0540f = this.click;
            if (c0540f == null) {
                return;
            }
            c0540f.m42403d(appnextAd);
        } catch (Throwable th) {
            C0472a.m42577a("UserAction$adImpression", th);
        }
    }

    public final void destroy() {
        this.context = null;
        if (this.click != null) {
            this.click = null;
        }
    }
}
