package com.appnext.core.webview;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.appnext.base.C0472a;
import com.appnext.core.C0551g;
import com.appnext.core.C0564o;
import com.appnext.core.adswatched.C0524a;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.network.constant.Protocols;
import java.io.IOException;
import java.net.HttpRetryException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
/* loaded from: classes-dex2jar.jar:com/appnext/core/webview/AppnextWebView.class */
public class AppnextWebView {

    /* renamed from: fr */
    private static AppnextWebView f1904fr;

    /* renamed from: aM */
    private Context f1905aM;

    /* renamed from: av */
    private WebAppInterface f1906av;

    /* renamed from: fs */
    private final HashMap<String, C0606b> f1907fs = new HashMap<>();

    /* renamed from: ft */
    private HashMap<String, WebView> f1908ft;

    /* loaded from: classes-dex2jar.jar:com/appnext/core/webview/AppnextWebView$WebInterface.class */
    public class WebInterface extends WebAppInterface {
        private String auid;

        /* renamed from: bk */
        private String f1914bk;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WebInterface(Context context, String str, String str2) {
            super(context);
            AppnextWebView.this = r4;
            this.f1914bk = "";
            this.auid = "";
            this.f1914bk = str;
            this.auid = str2;
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void destroy(String str) {
            super.destroy(str);
            if (AppnextWebView.f1904fr.f1906av != null) {
                AppnextWebView.f1904fr.f1906av.destroy(str);
            }
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public String filterAds(String str) {
            super.filterAds(str);
            String str2 = str;
            if (AppnextWebView.f1904fr.f1906av != null) {
                str2 = AppnextWebView.f1904fr.f1906av.filterAds(str);
            }
            return str2;
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void gotoAppWall() {
            super.gotoAppWall();
            if (AppnextWebView.f1904fr.f1906av != null) {
                AppnextWebView.f1904fr.f1906av.gotoAppWall();
            }
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void jsError(String str) {
            super.jsError(str);
            if (AppnextWebView.f1904fr.f1906av != null) {
                AppnextWebView.f1904fr.f1906av.jsError(str);
            }
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public String loadAds() {
            super.loadAds();
            return AppnextWebView.f1904fr.f1906av != null ? AppnextWebView.f1904fr.f1906av.loadAds() : "";
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void logSTP(String str, String str2) {
            super.logSTP(str, str2);
            if (AppnextWebView.f1904fr.f1906av != null) {
                AppnextWebView.f1904fr.f1906av.logSTP(str, str2);
            }
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void notifyImpression(String str) {
            super.notifyImpression(str);
            AppnextWebView.m42260a(AppnextWebView.this, this.f1914bk, this.auid, str);
            if (AppnextWebView.f1904fr.f1906av != null) {
                AppnextWebView.f1904fr.f1906av.notifyImpression(str);
            }
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void openLink(String str) {
            super.openLink(str);
            if (AppnextWebView.f1904fr.f1906av != null) {
                AppnextWebView.f1904fr.f1906av.openLink(str);
            }
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void openResultPage(String str) {
            super.openResultPage(str);
            if (AppnextWebView.f1904fr.f1906av != null) {
                AppnextWebView.f1904fr.f1906av.openResultPage(str);
            }
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void openStore(String str) {
            super.openStore(str);
            if (AppnextWebView.f1904fr.f1906av != null) {
                AppnextWebView.f1904fr.f1906av.openStore(str);
            }
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void play() {
            super.play();
            if (AppnextWebView.f1904fr.f1906av != null) {
                AppnextWebView.f1904fr.f1906av.play();
            }
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void postView(String str) {
            super.postView(str);
            AppnextWebView.m42260a(AppnextWebView.this, this.f1914bk, this.auid, str);
            if (AppnextWebView.f1904fr.f1906av != null) {
                AppnextWebView.f1904fr.f1906av.postView(str);
            }
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void videoPlayed() {
            super.videoPlayed();
            if (AppnextWebView.f1904fr.f1906av != null) {
                AppnextWebView.f1904fr.f1906av.videoPlayed();
            }
        }
    }

    /* renamed from: com.appnext.core.webview.AppnextWebView$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/core/webview/AppnextWebView$a.class */
    public final class AsyncTaskC0605a extends AsyncTask<String, Void, String> {

        /* renamed from: fw */
        public C0606b f1917fw;

        public AsyncTaskC0605a(C0606b c0606b) {
            AppnextWebView.this = r4;
            this.f1917fw = c0606b;
        }

        /* renamed from: b */
        public final String doInBackground(String... strArr) {
            try {
                C0606b c0606b = (C0606b) AppnextWebView.this.f1907fs.get(strArr[0]);
                c0606b.f1920fx = C0551g.m42390a(AppnextWebView.this.f1905aM, strArr[0], (HashMap<String, String>) null, 10000);
                AppnextWebView.this.f1907fs.put(strArr[0], c0606b);
                return strArr[0];
            } catch (HttpRetryException e) {
                C0472a.m42577a("AppnextWebView$doInBackground", e);
                return "error: " + e.getReason();
            } catch (IOException e2) {
                C0472a.m42577a("AppnextWebView$doInBackground", e2);
                return "error: network problem";
            } catch (Throwable th) {
                C0472a.m42577a("AppnextWebView$doInBackground", th);
                return "error: unknown error";
            }
        }

        @Override // android.os.AsyncTask
        public final /* synthetic */ void onPostExecute(String str) {
            String str2 = str;
            super.onPostExecute(str2);
            try {
                if (str2.startsWith("error:")) {
                    this.f1917fw.f1921m = 0;
                    HashMap hashMap = AppnextWebView.this.f1907fs;
                    C0606b c0606b = this.f1917fw;
                    hashMap.put(c0606b.f1922v, c0606b);
                    AppnextWebView.m42261a(AppnextWebView.this, this.f1917fw, str2.substring(7));
                    return;
                }
                this.f1917fw.f1921m = 2;
                HashMap hashMap2 = AppnextWebView.this.f1907fs;
                C0606b c0606b2 = this.f1917fw;
                hashMap2.put(c0606b2.f1922v, c0606b2);
                AppnextWebView.m42255b(AppnextWebView.this, this.f1917fw, str2);
            } catch (Throwable th) {
                C0472a.m42577a("AppnextWebView$download", th);
            }
        }
    }

    /* renamed from: com.appnext.core.webview.AppnextWebView$b */
    /* loaded from: classes-dex2jar.jar:com/appnext/core/webview/AppnextWebView$b.class */
    public final class C0606b {

        /* renamed from: ec */
        public ArrayList<AbstractC0607c> f1918ec;

        /* renamed from: fx */
        public String f1920fx;

        /* renamed from: m */
        public int f1921m;

        /* renamed from: v */
        public String f1922v;

        private C0606b() {
            AppnextWebView.this = r5;
            this.f1921m = 0;
            this.f1920fx = "";
            this.f1918ec = new ArrayList<>();
        }
    }

    /* renamed from: com.appnext.core.webview.AppnextWebView$c */
    /* loaded from: classes-dex2jar.jar:com/appnext/core/webview/AppnextWebView$c.class */
    public interface AbstractC0607c {
        /* renamed from: d */
        void mo42251d(String str);

        void error(String str);
    }

    private AppnextWebView(Context context) {
        this.f1905aM = context;
    }

    /* renamed from: a */
    public static /* synthetic */ void m42261a(AppnextWebView appnextWebView, C0606b c0606b, String str) {
        new StringBuilder("webview error: ").append(str);
        synchronized (appnextWebView.f1907fs) {
            Iterator<AbstractC0607c> it = c0606b.f1918ec.iterator();
            while (it.hasNext()) {
                it.next().error(str);
            }
            c0606b.f1918ec.clear();
            appnextWebView.f1907fs.remove(c0606b.f1922v);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m42260a(AppnextWebView appnextWebView, final String str, final String str2, final String str3) {
        C0564o.m42343az().m42344a(new Runnable() { // from class: com.appnext.core.webview.AppnextWebView.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    String m42372g = C0551g.m42372g(str3, C22021b.f61237c);
                    if (TextUtils.isEmpty(str) || TextUtils.isEmpty(m42372g) || TextUtils.isEmpty(str2)) {
                        return;
                    }
                    C0524a.m42455o(AppnextWebView.this.f1906av.context).m42457k(m42372g, str2);
                } catch (Throwable th) {
                }
            }
        });
    }

    /* renamed from: b */
    public static /* synthetic */ void m42255b(AppnextWebView appnextWebView, C0606b c0606b, String str) {
        new StringBuilder("downloaded ").append(str);
        synchronized (appnextWebView.f1907fs) {
            Iterator<AbstractC0607c> it = c0606b.f1918ec.iterator();
            while (it.hasNext()) {
                it.next().mo42251d(str);
            }
            c0606b.f1918ec.clear();
        }
    }

    /* renamed from: t */
    public static AppnextWebView m42253t(Context context) {
        if (f1904fr == null) {
            AppnextWebView appnextWebView = new AppnextWebView(context);
            f1904fr = appnextWebView;
            appnextWebView.f1908ft = new HashMap<>();
        }
        return f1904fr;
    }

    /* renamed from: H */
    public final WebView m42265H(String str) {
        WebView webView = this.f1908ft.get(str);
        if (webView != null && webView.getParent() != null) {
            ((ViewGroup) webView.getParent()).removeView(webView);
        }
        return webView;
    }

    /* renamed from: I */
    public final String m42264I(String str) {
        C0606b c0606b = this.f1907fs.get(str);
        if (c0606b == null || c0606b.f1921m != 2) {
            return null;
        }
        return c0606b.f1920fx;
    }

    /* renamed from: a */
    public final WebView m42263a(Context context, String str, String str2, String str3, WebAppInterface webAppInterface, AbstractC0608a abstractC0608a, String str4) {
        String str5;
        try {
            f1904fr.f1906av = webAppInterface;
            WebView webView = this.f1908ft.get(str4);
            if (webView != null && webView.getParent() != null) {
                ((ViewGroup) webView.getParent()).removeView(webView);
            }
            URL url = new URL(str3);
            String str6 = url.getProtocol() + "://" + url.getHost();
            WebView webView2 = new WebView(context.getApplicationContext());
            webView2.getSettings().setJavaScriptEnabled(true);
            webView2.getSettings().setAppCacheEnabled(true);
            webView2.getSettings().setDomStorageEnabled(true);
            webView2.getSettings().setDatabaseEnabled(true);
            webView2.getSettings().setMixedContentMode(0);
            webView2.getSettings().setMediaPlaybackRequiresUserGesture(false);
            webView2.setWebChromeClient(new WebChromeClient());
            webView2.setWebViewClient(new WebViewClient() { // from class: com.appnext.core.webview.AppnextWebView.1
                @Override // android.webkit.WebViewClient
                public final boolean shouldOverrideUrlLoading(WebView webView3, String str7) {
                    if (str7 == null) {
                        return false;
                    }
                    if (!str7.startsWith(Protocols.HTTP)) {
                        return super.shouldOverrideUrlLoading(webView3, str7);
                    }
                    webView3.loadUrl(str7);
                    return true;
                }
            });
            if (this.f1907fs.containsKey(str3) && this.f1907fs.get(str3).f1921m == 2 && !this.f1907fs.get(str3).f1920fx.equals("")) {
                str5 = "<script>" + this.f1907fs.get(str3).f1920fx + "</script>";
            } else if (abstractC0608a != null) {
                str5 = "<script>" + abstractC0608a.mo42250B() + "</script>";
            } else {
                str5 = "<script src='" + str3 + "'></script>";
            }
            webView2.loadDataWithBaseURL(str6, "<html><body>" + str5 + "</body></html>", null, StringConstant.UTF8, null);
            this.f1908ft.put(str4, webView2);
            webView2.addJavascriptInterface(new WebInterface(context, str, str2), "Appnext");
            return webView2;
        } catch (Throwable th) {
            C0472a.m42577a("AppnextWebView$loadWebview", th);
            return null;
        }
    }

    /* renamed from: a */
    public final void m42259a(WebAppInterface webAppInterface) {
        if (this.f1906av == webAppInterface) {
            this.f1906av = null;
        }
    }

    /* renamed from: a */
    public final void m42258a(String str, AbstractC0607c abstractC0607c) {
        C0606b c0606b;
        int i;
        synchronized (this) {
            try {
                if (this.f1907fs.containsKey(str)) {
                    c0606b = this.f1907fs.get(str);
                } else {
                    c0606b = new C0606b();
                    c0606b.f1922v = str;
                }
                i = c0606b.f1921m;
            } finally {
            }
            if (i != 2) {
                if (i == 0) {
                    c0606b.f1921m = 1;
                    new AsyncTaskC0605a(c0606b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str, null);
                }
                if (abstractC0607c != null) {
                    c0606b.f1918ec.add(abstractC0607c);
                }
                this.f1907fs.put(str, c0606b);
            } else if (abstractC0607c != null) {
                abstractC0607c.mo42251d(str);
            }
        }
    }
}
