package com.appnext.core.result;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.ConsoleMessage;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.amazon.device.ads.DtbConstants;
import com.appnext.base.C0472a;
import com.appnext.core.AbstractC0501Ad;
import com.appnext.core.AppnextAd;
import com.appnext.core.C0540f;
import com.appnext.core.C0551g;
import com.appnext.core.C0554h;
import com.appnext.core.C0560k;
import com.appnext.core.C0564o;
import com.appnext.core.C0566q;
import com.appnext.core.SettingsManager;
import com.appnext.core.webview.AppnextWebView;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.network.constant.Protocols;
import java.net.URL;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/appnext/core/result/ResultPageActivity.class */
public class ResultPageActivity extends Activity {

    /* renamed from: aA */
    private boolean f1887aA;

    /* renamed from: ay */
    private String f1888ay;

    /* renamed from: cA */
    private String f1889cA;

    /* renamed from: fg */
    private AppnextAd f1890fg;

    /* renamed from: fh */
    private String f1891fh;

    /* renamed from: fi */
    private AbstractC0599a f1892fi;

    /* renamed from: fj */
    private AbstractC0601c f1893fj;

    /* renamed from: j */
    private AppnextAd f1894j;
    private String placementID;
    private C0566q userAction;
    private WebView webView;

    /* renamed from: com.appnext.core.result.ResultPageActivity$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/core/result/ResultPageActivity$a.class */
    public final class C0594a extends WebViewClient {
        public C0594a() {
            ResultPageActivity.this = r4;
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            try {
                C0564o.m42343az().m42344a(new Runnable() { // from class: com.appnext.core.result.ResultPageActivity.a.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        final String m42380b = C0551g.m42380b((Context) ResultPageActivity.this, false);
                        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.core.result.ResultPageActivity.a.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                try {
                                    ResultPageActivity resultPageActivity = ResultPageActivity.this;
                                    resultPageActivity.loadJS("Appnext.setParams(" + C0602d.m42267aX().m42266aY().getConfigParams().put("did", m42380b).toString() + ");");
                                } catch (Throwable th) {
                                }
                                ResultPageActivity resultPageActivity2 = ResultPageActivity.this;
                                StringBuilder sb = new StringBuilder("Appnext.load(");
                                ResultPageActivity resultPageActivity3 = ResultPageActivity.this;
                                sb.append(resultPageActivity3.m42276f(resultPageActivity3.f1890fg).getAdJSON());
                                sb.append(",");
                                sb.append(ResultPageActivity.this.f1888ay);
                                sb.append(",");
                                sb.append(ResultPageActivity.this.f1889cA);
                                sb.append(");");
                                resultPageActivity2.loadJS(sb.toString());
                            }
                        });
                    }
                });
            } catch (Throwable th) {
                C0472a.m42577a("WebInterface$onPageFinished", th);
            }
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (str == null) {
                return false;
            }
            if (!str.startsWith(Protocols.HTTP)) {
                return super.shouldOverrideUrlLoading(webView, str);
            }
            webView.loadUrl(str);
            return true;
        }
    }

    /* renamed from: com.appnext.core.result.ResultPageActivity$b */
    /* loaded from: classes-dex2jar.jar:com/appnext/core/result/ResultPageActivity$b.class */
    public final class C0597b {
        public C0597b() {
            ResultPageActivity.this = r4;
        }

        @JavascriptInterface
        public final void adClicked(String str, int i) {
            try {
                ResultPageActivity resultPageActivity = ResultPageActivity.this;
                resultPageActivity.f1894j = (AppnextAd) resultPageActivity.parseAd(str);
                if (ResultPageActivity.this.userAction == null) {
                    return;
                }
                C0566q c0566q = ResultPageActivity.this.userAction;
                AppnextAd appnextAd = ResultPageActivity.this.f1894j;
                StringBuilder sb = new StringBuilder();
                ResultPageActivity resultPageActivity2 = ResultPageActivity.this;
                sb.append(resultPageActivity2.m42276f(resultPageActivity2.f1894j).getAppURL());
                sb.append("&tem_id=");
                sb.append(ResultPageActivity.this.f1891fh);
                sb.append("1");
                c0566q.m42339a(appnextAd, sb.toString(), ResultPageActivity.this.placementID, new C0540f.AbstractC0549a() { // from class: com.appnext.core.result.ResultPageActivity.b.1
                    @Override // com.appnext.core.C0540f.AbstractC0549a
                    public final void error(String str2) {
                    }

                    @Override // com.appnext.core.C0540f.AbstractC0549a
                    public final void onMarket(String str2) {
                        if (ResultPageActivity.this.f1887aA) {
                            ResultPageActivity.this.finish();
                        }
                    }
                });
            } catch (Throwable th) {
                C0472a.m42577a("WebInterface$adClicked", th);
            }
        }

        @JavascriptInterface
        public final void impression(String str) {
            try {
                ResultPageActivity.this.userAction.m42331d((AppnextAd) ResultPageActivity.this.parseAd(str));
            } catch (Throwable th) {
                C0472a.m42577a("WebInterface$impression", th);
            }
        }

        @JavascriptInterface
        public final void openLink(String str) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse(str));
                intent.addFlags(268435456);
                ResultPageActivity.this.startActivity(intent);
            } catch (Throwable th) {
                C0472a.m42577a("WebInterface$openLink", th);
            }
        }

        @JavascriptInterface
        public final void postView(String str) {
            try {
                AppnextAd appnextAd = (AppnextAd) ResultPageActivity.this.parseAd(str);
                C0566q c0566q = ResultPageActivity.this.userAction;
                c0566q.m42340a(appnextAd, ResultPageActivity.this.m42276f(appnextAd).getImpressionURL() + "&tem_id=" + ResultPageActivity.this.f1891fh + "1", null);
            } catch (Throwable th) {
                C0472a.m42577a("WebInterface$postView", th);
            }
        }
    }

    /* renamed from: c */
    public static /* synthetic */ String m42279c(ResultPageActivity resultPageActivity) {
        AbstractC0599a abstractC0599a = resultPageActivity.f1892fi;
        return (abstractC0599a == null || abstractC0599a.getFallbackScript() == null) ? new C0600b().mo42250B() : resultPageActivity.f1892fi.getFallbackScript();
    }

    /* renamed from: f */
    public CustomAd m42276f(AppnextAd appnextAd) {
        return new CustomAd(this, appnextAd);
    }

    private WebViewClient getWebViewClient() {
        try {
            AbstractC0599a abstractC0599a = this.f1892fi;
            return (abstractC0599a == null || abstractC0599a.getWebViewClient() == null) ? new C0594a() : this.f1892fi.getWebViewClient();
        } catch (Throwable th) {
            return new C0594a();
        }
    }

    public final void loadJS(String str) {
        try {
            new StringBuilder("loading js ").append(str);
            WebView webView = this.webView;
            if (webView == null) {
                return;
            }
            webView.loadUrl("javascript:(function() { try { " + str + " } catch(err){ Appnext.jsError(err.message); }})()");
        } catch (Throwable th) {
            C0472a.m42577a("ResultPageActivity$loadJS", th);
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        String str;
        requestWindowFeature(1);
        super.onCreate(bundle);
        try {
            AbstractC0601c m42266aY = C0602d.m42267aX().m42266aY();
            this.f1893fj = m42266aY;
            this.placementID = m42266aY.getPlacementId();
            this.f1891fh = this.f1893fj.mo42224t();
            this.f1887aA = getIntent().getExtras().getBoolean("shouldClose");
            this.f1890fg = this.f1893fj.getSelectedAd();
            this.f1889cA = this.f1893fj.mo42223u();
            this.f1888ay = this.f1893fj.mo42222v();
            this.userAction = new C0566q(this, new C0566q.AbstractC0570a() { // from class: com.appnext.core.result.ResultPageActivity.1
                @Override // com.appnext.core.C0566q.AbstractC0570a
                /* renamed from: c */
                public final AbstractC0501Ad mo42126c() {
                    return ResultPageActivity.this.f1893fj.mo42220x();
                }

                @Override // com.appnext.core.C0566q.AbstractC0570a
                /* renamed from: d */
                public final AppnextAd mo42125d() {
                    return ResultPageActivity.this.f1894j;
                }

                @Override // com.appnext.core.C0566q.AbstractC0570a
                /* renamed from: e */
                public final SettingsManager mo42124e() {
                    return ResultPageActivity.this.f1893fj.mo42221w();
                }

                @Override // com.appnext.core.C0566q.AbstractC0570a
                public final void report(String str2) {
                }
            });
            this.f1892fi = this.f1893fj.mo42219y();
            try {
                RelativeLayout relativeLayout = new RelativeLayout(this);
                setContentView(relativeLayout);
                relativeLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                WebView webView = new WebView(getApplicationContext());
                this.webView = webView;
                relativeLayout.addView(webView);
                this.webView.getLayoutParams().height = -1;
                this.webView.getLayoutParams().width = -1;
                this.webView.getSettings().setJavaScriptEnabled(true);
                this.webView.getSettings().setAppCacheEnabled(true);
                this.webView.getSettings().setDomStorageEnabled(true);
                this.webView.getSettings().setDatabaseEnabled(true);
                this.webView.getSettings().setMixedContentMode(0);
                this.webView.getSettings().setMediaPlaybackRequiresUserGesture(false);
                this.webView.setWebChromeClient(new WebChromeClient() { // from class: com.appnext.core.result.ResultPageActivity.2
                    @Override // android.webkit.WebChromeClient
                    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                        StringBuilder sb = new StringBuilder("[");
                        sb.append(consoleMessage.messageLevel().name());
                        sb.append(":CONSOLE(");
                        sb.append(consoleMessage.lineNumber());
                        sb.append(")] \"");
                        sb.append(consoleMessage.message());
                        sb.append("\", source: ");
                        sb.append(consoleMessage.sourceId());
                        sb.append(" (");
                        sb.append(consoleMessage.lineNumber());
                        sb.append(")");
                        return true;
                    }
                });
                this.webView.setWebViewClient(getWebViewClient());
                AbstractC0599a abstractC0599a = this.f1892fi;
                if (abstractC0599a != null) {
                    abstractC0599a.getJSurl();
                    str = this.f1892fi.getJSurl();
                } else {
                    str = "https://cdn.appnext.com/tools/sdk/banner/2.4.3/result.min.js";
                }
                final String str2 = str;
                AppnextWebView.m42253t(this).m42258a(str, new AppnextWebView.AbstractC0607c() { // from class: com.appnext.core.result.ResultPageActivity.3
                    @Override // com.appnext.core.webview.AppnextWebView.AbstractC0607c
                    /* renamed from: d */
                    public final void mo42251d(String str3) {
                        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.core.result.ResultPageActivity.3.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                try {
                                    C05913 c05913 = C05913.this;
                                    ResultPageActivity resultPageActivity = ResultPageActivity.this;
                                    resultPageActivity.m42270p(str2, AppnextWebView.m42253t(resultPageActivity).m42264I(str2));
                                } catch (Throwable th) {
                                    C0472a.m42577a("ResultPageActivity$loaded", th);
                                }
                            }
                        });
                    }

                    @Override // com.appnext.core.webview.AppnextWebView.AbstractC0607c
                    public final void error(String str3) {
                        new StringBuilder("error loading script ").append(str3);
                        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.core.result.ResultPageActivity.3.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                C05913 c05913 = C05913.this;
                                ResultPageActivity resultPageActivity = ResultPageActivity.this;
                                resultPageActivity.m42270p(str2, ResultPageActivity.m42279c(resultPageActivity));
                            }
                        });
                    }
                });
                WebView webView2 = this.webView;
                AbstractC0599a abstractC0599a2 = this.f1892fi;
                webView2.addJavascriptInterface((abstractC0599a2 == null || abstractC0599a2.m42269z() == null) ? new C0597b() : this.f1892fi.m42269z(), "Appnext");
            } catch (Throwable th) {
            }
        } catch (Throwable th2) {
            C0472a.m42577a("ResultPageActivity$onCreate", th2);
            finish();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            WebView webView = this.webView;
            if (webView != null) {
                webView.destroy();
                this.webView = null;
            }
        } catch (Throwable th) {
            C0472a.m42577a("ResultPageActivity$onDestroy", th);
        }
        try {
            this.userAction.destroy();
        } catch (Throwable th2) {
            C0472a.m42577a("ResultPageActivity$onDestroy", th2);
        }
    }

    /* renamed from: p */
    public final void m42270p(String str, String str2) {
        try {
            URL url = new URL(str);
            this.webView.loadDataWithBaseURL(url.getProtocol() + "://" + url.getHost(), "<html><body><script>" + str2 + "</script></body></html>", null, StringConstant.UTF8, null);
        } catch (Throwable th) {
            C0472a.m42577a("ResultPageActivity$loadWebview", th);
        }
    }

    public C0554h parseAd(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            AppnextAd appnextAd = (AppnextAd) C0560k.m42355a(AppnextAd.class, jSONObject);
            if (appnextAd != null) {
                m42276f(appnextAd).setAdJSON(jSONObject.toString());
                if (TextUtils.isEmpty(appnextAd.getStoreRating())) {
                    m42276f(appnextAd).setStoreRating(DtbConstants.NETWORK_TYPE_UNKNOWN);
                }
            }
            return appnextAd;
        } catch (Throwable th) {
            C0472a.m42577a("ResultPageActivity$parseAd", th);
            return null;
        }
    }
}
