package com.adbert.p015b;

import android.annotation.SuppressLint;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Vibrator;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.DownloadListener;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import com.adbert.p009a.C1398f;
import com.adbert.p009a.C1402g;
import com.adbert.p009a.C1406h;
import com.adbert.p009a.C1407i;
import com.adbert.p009a.p011b.C1377b;
import com.adbert.p009a.p012c.EnumC1382b;
import com.adbert.p009a.p012c.EnumC1384d;
import com.adbert.p009a.p012c.EnumC1388h;
import com.adbert.p009a.p012c.EnumC1389i;
import com.adbert.p009a.p013d.C1391a;
import com.aotter.net.volley.toolbox.JsonRequest;
import com.criteo.sync.sdk.customtabs.CustomTabsHelper;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import java.net.HttpCookie;
@SuppressLint({"SetJavaScriptEnabled"})
/* renamed from: com.adbert.b.a */
/* loaded from: classes-dex2jar.jar:com/adbert/b/a.class */
public class C1412a extends RelativeLayout {

    /* renamed from: a */
    public Context f675a;

    /* renamed from: b */
    public C1391a f676b;

    /* renamed from: c */
    public C1406h f677c;

    /* renamed from: d */
    public AbstractC1418b f678d;

    /* renamed from: e */
    public C1377b f679e;

    /* renamed from: f */
    public C1444f f680f;

    /* renamed from: g */
    public C1407i f681g;

    /* renamed from: com.adbert.b.a$a */
    /* loaded from: classes-dex2jar.jar:com/adbert/b/a$a.class */
    public class C1416a {
        public C1416a() {
        }

        @JavascriptInterface
        public void actionReturn() {
            C1412a aVar = C1412a.this;
            C1377b bVar = aVar.f679e;
            if (bVar != null) {
                C1398f.m37154b(aVar.f675a, bVar, EnumC1389i.url.toString());
            }
        }

        @JavascriptInterface
        public void closeSensor() {
            C1407i iVar = C1412a.this.f681g;
            if (iVar != null) {
                iVar.m37113b();
                C1412a.this.f681g = null;
            }
        }

        @JavascriptInterface
        public void distance(String str) {
            C1412a.this.m37098a(EnumC1388h.DISTANCE, str);
        }

        @JavascriptInterface
        public void light(String str) {
            C1412a.this.m37098a(EnumC1388h.LIGHT, str);
        }

        @JavascriptInterface
        public void openAlbum(String str) {
            AbstractC1418b bVar = C1412a.this.f678d;
            if (bVar != null) {
                bVar.mo37089a(false, str);
            }
        }

        @JavascriptInterface
        public void openBrowser(String str) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(268435456);
            intent.setPackage(CustomTabsHelper.STABLE_PACKAGE);
            try {
                C1412a.this.f675a.startActivity(intent);
            } catch (ActivityNotFoundException e) {
                intent.setPackage(null);
                C1412a.this.f675a.startActivity(intent);
            } catch (Exception e2) {
                C1402g.m37141a(e2);
            }
        }

        @JavascriptInterface
        public void openCamera(String str) {
            AbstractC1418b bVar = C1412a.this.f678d;
            if (bVar != null) {
                bVar.mo37089a(true, str);
            }
        }

        @JavascriptInterface
        public void shake(String str) {
            C1412a.this.m37098a(EnumC1388h.SHAKE, str);
        }

        @JavascriptInterface
        public void shareReturn() {
            C1412a aVar = C1412a.this;
            C1377b bVar = aVar.f679e;
            if (bVar != null) {
                C1398f.m37158a(aVar.f675a, bVar, EnumC1389i.url.toString());
            }
        }

        @JavascriptInterface
        public void validReturn() {
            C1412a aVar = C1412a.this;
            C1377b bVar = aVar.f679e;
            if (bVar == null) {
                return;
            }
            if (bVar.f407b != EnumC1382b.banner) {
                C1398f.m37159a(aVar.f675a, bVar, (Runnable) null);
            } else if (!bVar.f419n) {
                bVar.f419n = true;
                C1398f.m37159a(aVar.f675a, bVar, new Runnable() { // from class: com.adbert.b.a.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        C1412a.this.f679e.f419n = false;
                    }
                });
            }
        }

        @JavascriptInterface
        public void vibrate(int i) {
            if (C1402g.m37145a(C1412a.this.f675a, "android.permission.VIBRATE")) {
                ((Vibrator) C1412a.this.f675a.getSystemService("vibrator")).vibrate(i);
            }
        }
    }

    /* renamed from: com.adbert.b.a$b */
    /* loaded from: classes-dex2jar.jar:com/adbert/b/a$b.class */
    public interface AbstractC1418b {
        /* renamed from: a */
        void mo37089a(boolean z, String str);
    }

    /* renamed from: com.adbert.b.a$c */
    /* loaded from: classes-dex2jar.jar:com/adbert/b/a$c.class */
    public final class C1419c extends WebViewClient {
        public C1419c() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            C1391a aVar = C1412a.this.f676b;
            if (aVar != null) {
                aVar.onPageFinished();
            }
            CookieSyncManager.getInstance().sync();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            sslErrorHandler.proceed();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (str.compareTo("about:blank") == 0) {
                return true;
            }
            if (str.endsWith(".mp4")) {
                webView.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                return true;
            } else if (str.startsWith(PhoneNumberUtil.RFC3966_PREFIX)) {
                Intent intent = new Intent("android.intent.action.DIAL", Uri.parse(str));
                intent.addFlags(268435456);
                C1412a.this.f675a.startActivity(intent);
                return true;
            } else if (!str.startsWith("mailto:")) {
                return false;
            } else {
                Intent intent2 = new Intent("android.intent.action.SEND");
                intent2.setType("text/plain");
                intent2.putExtra("android.intent.extra.EMAIL", str);
                intent2.putExtra("android.intent.extra.SUBJECT", "Subject");
                intent2.putExtra("android.intent.extra.TEXT", "");
                intent2.addFlags(268435456);
                C1412a.this.f675a.startActivity(intent2);
                return true;
            }
        }
    }

    public C1412a(Context context, C1377b bVar, C1391a aVar) {
        super(context);
        this.f675a = context;
        this.f679e = bVar;
        this.f676b = aVar;
        this.f677c = new C1406h(context);
    }

    /* renamed from: a */
    private void m37099a(Context context, String str) {
        CookieSyncManager.createInstance(context);
        CookieManager instance = CookieManager.getInstance();
        instance.setAcceptCookie(true);
        for (HttpCookie httpCookie : C1402g.f654b.getCookieStore().getCookies()) {
            instance.setCookie(str, httpCookie.getName() + "=" + httpCookie.getValue());
            CookieSyncManager.getInstance().sync();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m37098a(EnumC1388h hVar, final String str) {
        this.f681g = new C1407i(this.f675a, hVar, new C1407i.AbstractC1408a() { // from class: com.adbert.b.a.3
            @Override // com.adbert.p009a.C1407i.AbstractC1408a
            /* renamed from: a */
            public void mo37092a() {
                try {
                    C1444f fVar = C1412a.this.f680f;
                    fVar.loadUrl("javascript:" + str);
                } catch (Exception e) {
                    C1402g.m37141a(e);
                }
            }

            @Override // com.adbert.p009a.C1407i.AbstractC1408a
            /* renamed from: a */
            public void mo37091a(int i) {
                try {
                    C1444f fVar = C1412a.this.f680f;
                    fVar.loadUrl("javascript:" + str + "('" + i + "');");
                } catch (Exception e) {
                    C1402g.m37141a(e);
                }
            }

            @Override // com.adbert.p009a.C1407i.AbstractC1408a
            /* renamed from: a */
            public void mo37090a(String str2) {
            }
        });
    }

    private void setDelete(int i) {
        C1425c cVar = new C1425c(getContext(), i);
        addView(cVar);
        int i2 = (int) (i * 1.4d);
        cVar.getLayoutParams().width = i2;
        cVar.getLayoutParams().height = i2;
        cVar.setOnClickListener(new View.OnClickListener() { // from class: com.adbert.b.a.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C1412a.this.f676b.closeWeb();
            }
        });
    }

    /* renamed from: a */
    public C1412a m37097a(AbstractC1418b bVar) {
        this.f678d = bVar;
        return this;
    }

    /* renamed from: a */
    public C1412a m37095a(String str, boolean z, int i, boolean... zArr) {
        m37099a(this.f675a, str);
        this.f680f = new C1444f(this.f675a);
        addView(this.f680f);
        if (z) {
            this.f680f.setBackgroundColor(0);
            this.f680f.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        } else {
            setBackgroundColor(EnumC1384d.cpmBg.m37188a());
            this.f680f.getLayoutParams().width = this.f677c.m37120a(0.9d);
            ViewGroup.LayoutParams layoutParams = this.f680f.getLayoutParams();
            C1406h hVar = this.f677c;
            layoutParams.height = hVar.m37119a(hVar.m37120a(0.9d), 2, 3);
            ((RelativeLayout.LayoutParams) this.f680f.getLayoutParams()).addRule(13);
            this.f676b.setLogo(this, true);
        }
        this.f680f.setDownloadListener(new DownloadListener() { // from class: com.adbert.b.a.1
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String str2, String str3, String str4, String str5, long j) {
                C1412a.this.f675a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str2)));
            }
        });
        WebSettings settings = this.f680f.getSettings();
        if (zArr.length == 0 && z) {
            settings.setSupportZoom(true);
            settings.setBuiltInZoomControls(true);
        }
        settings.setJavaScriptEnabled(true);
        this.f680f.addJavascriptInterface(new C1416a(), "Android");
        settings.setDefaultTextEncodingName(JsonRequest.PROTOCOL_CHARSET);
        settings.setGeolocationEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setCacheMode(2);
        this.f680f.setWebViewClient(new C1419c());
        this.f680f.setWebChromeClient(new WebChromeClient());
        if (Build.VERSION.SDK_INT >= 17) {
            settings.setMediaPlaybackRequiresUserGesture(false);
        }
        this.f680f.loadUrl(str);
        this.f680f.setInitialScale(1);
        if (i > 0) {
            setDelete(i);
        }
        return this;
    }

    /* renamed from: a */
    public void m37100a() {
        C1407i iVar = this.f681g;
        if (iVar != null) {
            iVar.m37113b();
        }
    }

    /* renamed from: b */
    public void m37094b() {
        C1407i iVar = this.f681g;
        if (iVar != null) {
            iVar.m37116a();
        }
    }

    /* renamed from: c */
    public void m37093c() {
        C1407i iVar = this.f681g;
        if (iVar != null) {
            iVar.m37113b();
        }
    }

    public WebView getWebView() {
        return this.f680f;
    }
}
