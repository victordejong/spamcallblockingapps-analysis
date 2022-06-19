package com.appnext.core;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.amazon.device.ads.DTBAdViewSupportClient;
import com.amazon.device.ads.DtbConstants;
import com.appnext.base.C0472a;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.appnext.core.f */
/* loaded from: classes-dex2jar.jar:com/appnext/core/f.class */
public class C0540f {

    /* renamed from: dm */
    private static C0540f f1781dm;
    private Context context;

    /* renamed from: df */
    private WebView f1782df;

    /* renamed from: dg */
    private WebView f1783dg;

    /* renamed from: dh */
    private AbstractC0549a f1784dh;

    /* renamed from: di */
    private Runnable f1785di;

    /* renamed from: dj */
    private List f1786dj;

    /* renamed from: dk */
    private final ArrayList<C0550b> f1787dk = new ArrayList<>();

    /* renamed from: dl */
    private int f1788dl;
    private Handler handler;

    /* renamed from: com.appnext.core.f$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/core/f$a.class */
    public interface AbstractC0549a {
        void error(String str);

        void onMarket(String str);
    }

    /* renamed from: com.appnext.core.f$b */
    /* loaded from: classes-dex2jar.jar:com/appnext/core/f$b.class */
    public final class C0550b {

        /* renamed from: du */
        public String f1806du;

        /* renamed from: dv */
        public String f1807dv;

        /* renamed from: dw */
        public AbstractC0549a f1808dw;

        /* renamed from: dx */
        public String f1809dx;

        /* renamed from: dy */
        public long f1810dy;

        /* renamed from: v */
        public String f1811v;

        public C0550b(String str, String str2, String str3, String str4, AbstractC0549a abstractC0549a, long j) {
            C0540f.this = r5;
            this.f1806du = str;
            this.f1807dv = str2;
            this.f1811v = str3;
            this.f1808dw = abstractC0549a;
            this.f1809dx = str4;
            this.f1810dy = j;
        }
    }

    private C0540f(Context context) {
        try {
            this.context = context.getApplicationContext();
            this.handler = new Handler(Looper.getMainLooper());
            this.f1788dl = 0;
            this.f1784dh = new AbstractC0549a() { // from class: com.appnext.core.f.1
                @Override // com.appnext.core.C0540f.AbstractC0549a
                public final void error(String str) {
                    C0540f.this.f1788dl = 0;
                    if (C0540f.this.f1787dk.size() == 0) {
                        return;
                    }
                    AbstractC0549a abstractC0549a = ((C0550b) C0540f.this.f1787dk.get(0)).f1808dw;
                    if (abstractC0549a != null) {
                        abstractC0549a.error(str);
                    }
                    C0540f.this.m42409as();
                }

                @Override // com.appnext.core.C0540f.AbstractC0549a
                public final void onMarket(String str) {
                    try {
                        C0540f.this.f1788dl = 0;
                        if (C0540f.this.f1787dk.size() == 0) {
                            return;
                        }
                        AbstractC0549a abstractC0549a = ((C0550b) C0540f.this.f1787dk.get(0)).f1808dw;
                        if (abstractC0549a != null) {
                            abstractC0549a.onMarket(str);
                        }
                        String str2 = "";
                        try {
                            if (C0540f.this.f1787dk != null) {
                                str2 = "";
                                if (!C0540f.this.f1787dk.isEmpty()) {
                                    str2 = "https://admin.appnext.com/tools/navtac.html?bid=" + ((C0550b) C0540f.this.f1787dk.get(0)).f1809dx + "&guid=" + C0551g.m42374f("admin.appnext.com", "applink") + "&url=" + URLEncoder.encode(str, StringConstant.UTF8);
                                }
                            }
                            if (C0540f.this.f1783dg == null) {
                                C0540f.this.f1783dg = new WebView(C0540f.this.context);
                                C0540f.this.f1783dg.getSettings().setJavaScriptEnabled(true);
                                C0540f.this.f1783dg.getSettings().setDomStorageEnabled(true);
                                C0540f.this.f1783dg.getSettings().setMixedContentMode(0);
                                C0540f.this.f1783dg.setWebViewClient(new WebViewClient() { // from class: com.appnext.core.f.1.1
                                    @Override // android.webkit.WebViewClient
                                    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
                                        if (Build.VERSION.SDK_INT < 26 || renderProcessGoneDetail.didCrash()) {
                                            return false;
                                        }
                                        if (C0540f.this.f1783dg == null) {
                                            return true;
                                        }
                                        C0540f.this.f1783dg.destroy();
                                        C0540f.this.f1783dg = null;
                                        return true;
                                    }

                                    @Override // android.webkit.WebViewClient
                                    public final boolean shouldOverrideUrlLoading(WebView webView, String str3) {
                                        if (str3 == null) {
                                            return false;
                                        }
                                        try {
                                            if (str3.contains("about:blank")) {
                                                return false;
                                            }
                                            webView.loadUrl(str3);
                                            return true;
                                        } catch (Throwable th) {
                                            C0472a.m42577a("AppnextCK$AppnextCK", th);
                                            return false;
                                        }
                                    }
                                });
                            }
                            C0540f.this.f1783dg.loadUrl("about:blank");
                            C0540f.this.f1783dg.loadUrl(str2);
                            new StringBuilder("store url: ").append(str2);
                            C0540f.this.m42408at();
                            C0540f.this.m42409as();
                        } catch (UnsupportedEncodingException e) {
                            C0472a.m42577a("AppnextCK$AppnextCK", e);
                            C0540f.this.m42409as();
                        }
                    } catch (Throwable th) {
                        C0472a.m42577a("AppnextCK$AppnextCK", th);
                    }
                }
            };
            this.f1785di = new Runnable() { // from class: com.appnext.core.f.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (C0540f.this.f1784dh != null && C0540f.this.f1782df != null) {
                        C0540f.this.f1784dh.error(C0540f.this.f1782df.getUrl());
                        C0540f.this.f1782df.stopLoading();
                    }
                    C0540f.this.m42409as();
                }
            };
        } catch (Throwable th) {
            C0472a.m42577a("AppnextCK$AppnextCK", th);
        }
    }

    /* renamed from: a */
    private static List m42419a(Context context, Intent intent) {
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            arrayList.add(new ComponentName(activityInfo.packageName, activityInfo.name));
        }
        return arrayList;
    }

    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* renamed from: a */
    private void m42417a(final C0550b c0550b) {
        try {
            new StringBuilder("ClickMarketUrl - ").append(c0550b.f1807dv);
            if (!TextUtils.isEmpty(c0550b.f1807dv)) {
                openMarket(c0550b.f1807dv);
                C0564o.m42343az().m42344a(new Runnable() { // from class: com.appnext.core.f.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            C0551g.m42391a(C0540f.this.context, c0550b.f1806du, null);
                        } catch (Throwable th) {
                        }
                    }
                });
                return;
            }
            m42408at();
            if (this.f1782df == null) {
                WebView webView = new WebView(this.context);
                this.f1782df = webView;
                webView.getSettings().setJavaScriptEnabled(true);
                this.f1782df.getSettings().setDomStorageEnabled(true);
                this.f1782df.getSettings().setMixedContentMode(0);
                this.f1782df.setWebViewClient(new WebViewClient() { // from class: com.appnext.core.f.4
                    @Override // android.webkit.WebViewClient
                    public final boolean onRenderProcessGone(WebView webView2, RenderProcessGoneDetail renderProcessGoneDetail) {
                        if (Build.VERSION.SDK_INT < 26 || renderProcessGoneDetail.didCrash()) {
                            return false;
                        }
                        if (C0540f.this.f1782df == null) {
                            return true;
                        }
                        C0540f.this.f1782df.destroy();
                        C0540f.this.f1782df = null;
                        return true;
                    }

                    @Override // android.webkit.WebViewClient
                    public final boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                        String str2;
                        if (str == null) {
                            return false;
                        }
                        new StringBuilder("redirect url: ").append(str);
                        String str3 = str;
                        if (str.startsWith(DTBAdViewSupportClient.GOOGLE_PLAY_STORE_LINK)) {
                            str3 = str.replace(DTBAdViewSupportClient.GOOGLE_PLAY_STORE_LINK, "market://");
                        }
                        if (str3.contains("about:blank")) {
                            return false;
                        }
                        if (str3.startsWith(DtbConstants.HTTP) || str3.startsWith(DtbConstants.HTTPS)) {
                            Intent m42418a = C0540f.this.m42418a(C0540f.m42396t(str3).setComponent(null));
                            if (m42418a == null) {
                                webView2.loadUrl(str3);
                                return true;
                            }
                            C0540f.this.m42408at();
                            if (C0540f.this.f1784dh != null) {
                                C0540f.this.f1784dh.onMarket(str3);
                            }
                            m42418a.addFlags(268435456);
                            C0540f.this.context.startActivity(m42418a);
                            return true;
                        } else if (!str3.startsWith("intent://")) {
                            Intent intent = new Intent("android.intent.action.VIEW");
                            intent.setData(Uri.parse(str3));
                            try {
                                List<ResolveInfo> queryIntentActivities = C0540f.this.context.getPackageManager().queryIntentActivities(intent, 0);
                                if (queryIntentActivities == null || queryIntentActivities.size() <= 0) {
                                    webView2.loadUrl(str3);
                                    return false;
                                }
                                C0540f.this.m42408at();
                                C0540f.this.openMarket(str3);
                                if (C0540f.this.f1784dh == null) {
                                    return true;
                                }
                                C0540f.this.f1784dh.onMarket(str3);
                                return true;
                            } catch (Throwable th) {
                                return false;
                            }
                        } else {
                            try {
                                Intent parseUri = Intent.parseUri(str3, 1);
                                if (C0540f.this.context.getPackageManager().resolveActivity(parseUri, 65536) != null) {
                                    C0540f.this.m42408at();
                                    if (C0540f.this.f1784dh == null) {
                                        return true;
                                    }
                                    C0540f.this.f1784dh.onMarket(parseUri.getData().toString());
                                    return true;
                                }
                                if (parseUri.getExtras() != null && parseUri.getExtras().containsKey("browser_fallback_url") && !parseUri.getExtras().getString("browser_fallback_url").equals("")) {
                                    str2 = parseUri.getExtras().getString("browser_fallback_url");
                                } else if (!parseUri.getExtras().containsKey("market_referrer") || parseUri.getExtras().getString("market_referrer").equals("")) {
                                    C0540f.this.m42408at();
                                    if (C0540f.this.f1784dh == null) {
                                        return true;
                                    }
                                    C0540f.this.f1784dh.error(str3);
                                    return true;
                                } else {
                                    str2 = "market://details?id=" + parseUri.getPackage() + "&referrer=" + parseUri.getExtras().getString("market_referrer");
                                }
                                C0540f.this.m42408at();
                                if (C0540f.this.f1784dh == null) {
                                    return true;
                                }
                                C0540f.this.f1784dh.onMarket(str2);
                                return true;
                            } catch (Throwable th2) {
                                return false;
                            }
                        }
                    }
                });
            }
            this.f1782df.stopLoading();
            this.f1782df.loadUrl("about:blank");
            this.f1786dj = m42419a(this.context, m42396t(c0550b.f1811v).setComponent(null));
            this.f1782df.loadUrl(c0550b.f1811v);
            new StringBuilder("appurl: ").append(c0550b.f1811v);
            this.handler.postDelayed(this.f1785di, c0550b.f1811v.endsWith("&ox=0") ? (char) 15000 : c0550b.f1810dy);
        } catch (Throwable th) {
            C0472a.m42577a("AppnextCK$load1", th);
            AbstractC0549a abstractC0549a = this.f1784dh;
            if (abstractC0549a != null) {
                abstractC0549a.error(c0550b.f1811v);
            }
            m42409as();
        }
    }

    /* renamed from: as */
    public void m42409as() {
        try {
            this.f1788dl = 0;
            if (this.f1787dk.size() == 0) {
                return;
            }
            new StringBuilder("--ck-- out ").append(this.f1787dk.get(0).f1811v);
            this.f1787dk.get(0).f1808dw = null;
            this.f1787dk.remove(0);
            new StringBuilder("--ck-- size ").append(this.f1787dk.size());
            m42411a(null, null, null, null, null);
        } catch (Throwable th) {
            C0472a.m42577a("AppnextCK$loadNext", th);
        }
    }

    /* renamed from: at */
    public void m42408at() {
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    /* renamed from: f */
    public static C0540f m42400f(Context context) {
        if (f1781dm == null) {
            synchronized (C0540f.class) {
                try {
                    if (f1781dm == null) {
                        f1781dm = new C0540f(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1781dm;
    }

    public void openMarket(String str) {
        try {
            if ((str.startsWith("market://") || str.startsWith("https://play.google.com/store")) && m42397s("com.android.vending")) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                Iterator<ResolveInfo> it = this.context.getPackageManager().queryIntentActivities(intent, 0).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    ResolveInfo next = it.next();
                    if (next.activityInfo.applicationInfo.packageName.equals("com.android.vending")) {
                        ActivityInfo activityInfo = next.activityInfo;
                        ComponentName componentName = new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name);
                        intent.addFlags(268435456);
                        intent.addFlags(2097152);
                        intent.addFlags(131072);
                        intent.addFlags(67108864);
                        intent.setComponent(componentName);
                        this.context.startActivity(intent);
                        break;
                    }
                }
            } else {
                Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
                intent2.setFlags(268435456);
                this.context.startActivity(intent2);
            }
            AbstractC0549a abstractC0549a = this.f1784dh;
            if (abstractC0549a == null) {
                return;
            }
            abstractC0549a.onMarket(str);
        } catch (Throwable th) {
            C0472a.m42577a("AppnextCK$openMarket", th);
            AbstractC0549a abstractC0549a2 = this.f1784dh;
            if (abstractC0549a2 == null) {
                return;
            }
            abstractC0549a2.error(str);
        }
    }

    /* renamed from: s */
    private boolean m42397s(String str) {
        try {
            this.context.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    /* renamed from: t */
    public static Intent m42396t(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        return intent;
    }

    /* renamed from: a */
    public final Intent m42418a(Intent intent) {
        List<ComponentName> m42419a = m42419a(this.context, intent);
        new HashSet();
        for (ComponentName componentName : m42419a) {
            if (!this.f1786dj.contains(componentName)) {
                Intent intent2 = new Intent();
                intent2.setComponent(componentName);
                return intent2;
            }
        }
        return null;
    }

    /* renamed from: a */
    public final void m42412a(String str, AbstractC0549a abstractC0549a) {
        if (!TextUtils.isEmpty(str)) {
            openMarket(str);
        } else if (abstractC0549a == null) {
        } else {
            abstractC0549a.error(str);
        }
    }

    /* renamed from: a */
    public final void m42411a(String str, String str2, String str3, String str4, AbstractC0549a abstractC0549a) {
        m42410a(str, str2, str3, str4, abstractC0549a, 16000L);
    }

    /* renamed from: a */
    public final void m42410a(String str, String str2, String str3, String str4, AbstractC0549a abstractC0549a, long j) {
        try {
            if (this.context == null) {
                return;
            }
            if (str3 != null) {
                Iterator<C0550b> it = this.f1787dk.iterator();
                while (it.hasNext()) {
                    C0550b next = it.next();
                    if (!TextUtils.isEmpty(next.f1811v) && next.f1811v.equals(str3)) {
                        return;
                    }
                }
                if (str3.endsWith("&ox=0")) {
                    this.f1787dk.add(new C0550b(str, str2, str3, str4, abstractC0549a, j));
                } else {
                    this.f1788dl = 0;
                    if (this.f1787dk.size() > 0 && !this.f1787dk.get(0).f1811v.endsWith("&ox=0")) {
                        new StringBuilder("--ck-- out ").append(this.f1787dk.get(0).f1811v);
                        this.f1787dk.get(0).f1808dw = null;
                        this.f1787dk.remove(0);
                        new StringBuilder("--ck-- size ").append(this.f1787dk.size());
                    }
                    this.f1787dk.add(0, new C0550b(str, str2, str3, str4, abstractC0549a, j));
                }
                new StringBuilder("--ck-- in ").append(str3);
            }
            if (this.f1787dk.size() <= 0 || this.f1788dl == 1) {
                StringBuilder sb = new StringBuilder("vta waiting -  ");
                sb.append(str4);
                sb.append(" - ");
                sb.append(str3);
                return;
            }
            this.f1788dl = 1;
            StringBuilder sb2 = new StringBuilder("vta load -  ");
            sb2.append(this.f1787dk.get(0).f1809dx);
            sb2.append(" - ");
            sb2.append(this.f1787dk.get(0).f1811v);
            m42417a(this.f1787dk.get(0));
        } catch (Throwable th) {
            C0472a.m42577a("AppnextCK$load", th);
        }
    }

    /* renamed from: d */
    public final void m42403d(final AppnextAd appnextAd) {
        C0564o.m42343az().m42344a(new Runnable() { // from class: com.appnext.core.f.5
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    C0551g.m42391a(C0540f.this.context, appnextAd.getImpressionURL(), null);
                } catch (Throwable th) {
                    C0472a.m42577a("AppnextCK$adImpression", th);
                }
            }
        });
    }
}
