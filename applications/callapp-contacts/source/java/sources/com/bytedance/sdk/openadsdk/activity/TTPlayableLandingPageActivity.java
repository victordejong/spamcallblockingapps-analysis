package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.appsflyer.internal.referrer.Payload;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.C4493b;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.C4651t;
import com.bytedance.sdk.openadsdk.core.C4754w;
import com.bytedance.sdk.openadsdk.core.C4804z;
import com.bytedance.sdk.openadsdk.core.p151b.AbstractC4498d;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.widget.webview.C4785a;
import com.bytedance.sdk.openadsdk.core.widget.webview.C4797b;
import com.bytedance.sdk.openadsdk.core.widget.webview.C4798c;
import com.bytedance.sdk.openadsdk.core.widget.webview.SSWebView;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.p165e.C4863a;
import com.bytedance.sdk.openadsdk.preload.falconx.p204a.C5300a;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5472n;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import com.bytedance.sdk.openadsdk.utils.HandlerC5446ah;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
import com.p094a.p095a.p096a.p097a.p098a.C3235d;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.http2.Http2Connection;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity.class */
public class TTPlayableLandingPageActivity extends Activity implements AbstractC4498d, HandlerC5446ah.AbstractC5447a {

    /* renamed from: a */
    RelativeLayout f15825a;

    /* renamed from: b */
    HandlerC5446ah f15826b;

    /* renamed from: c */
    private SSWebView f15827c;

    /* renamed from: d */
    private SSWebView f15828d;

    /* renamed from: g */
    private Context f15831g;

    /* renamed from: h */
    private int f15832h;

    /* renamed from: i */
    private ProgressBar f15833i;

    /* renamed from: j */
    private String f15834j;

    /* renamed from: k */
    private String f15835k;

    /* renamed from: l */
    private C4754w f15836l;

    /* renamed from: m */
    private C4754w f15837m;

    /* renamed from: n */
    private int f15838n;

    /* renamed from: o */
    private String f15839o;

    /* renamed from: p */
    private String f15840p;

    /* renamed from: q */
    private String f15841q;

    /* renamed from: r */
    private C4557i f15842r;

    /* renamed from: s */
    private boolean f15843s;

    /* renamed from: t */
    private boolean f15844t;

    /* renamed from: u */
    private AbstractC3234c f15845u;

    /* renamed from: w */
    private int f15847w;

    /* renamed from: x */
    private String f15848x;

    /* renamed from: y */
    private C5300a f15849y;

    /* renamed from: e */
    private boolean f15829e = true;

    /* renamed from: f */
    private boolean f15830f = true;

    /* renamed from: v */
    private AtomicBoolean f15846v = new AtomicBoolean(false);

    /* renamed from: z */
    private int f15850z = 0;

    /* renamed from: A */
    private int f15824A = 0;

    /* renamed from: a */
    private void m35865a() {
        this.f15827c = (SSWebView) findViewById(C5486x.m32066e(this, "tt_browser_webview"));
        this.f15828d = (SSWebView) findViewById(C5486x.m32066e(this, "tt_browser_webview_loading"));
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(C5486x.m32066e(this, "tt_playable_ad_close_layout"));
        this.f15825a = relativeLayout;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTPlayableLandingPageActivity.this.m35859a("playable_close");
                    TTPlayableLandingPageActivity.this.finish();
                }
            });
        }
        this.f15833i = (ProgressBar) findViewById(C5486x.m32066e(this, "tt_browser_progress"));
    }

    /* renamed from: a */
    private void m35864a(Bundle bundle) {
        Intent intent = getIntent();
        this.f15832h = intent.getIntExtra("sdk_version", 1);
        this.f15834j = intent.getStringExtra("adid");
        this.f15835k = intent.getStringExtra("log_extra");
        this.f15838n = intent.getIntExtra(Payload.SOURCE, -1);
        this.f15843s = intent.getBooleanExtra("ad_pending_download", false);
        this.f15839o = intent.getStringExtra("url");
        this.f15848x = intent.getStringExtra("gecko_id");
        this.f15840p = intent.getStringExtra("web_title");
        this.f15841q = intent.getStringExtra("event_tag");
        if (C5094b.m33091b()) {
            String stringExtra = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
            if (stringExtra != null) {
                try {
                    this.f15842r = C4493b.m35502a(new JSONObject(stringExtra));
                } catch (Exception e) {
                    C5478q.m32108c("TTPlayableLandingPage", "TTPlayableLandingPageActivity - onCreate MultiGlobalInfo : ", e);
                }
            }
        } else {
            this.f15842r = C4651t.m34621a().m34613c();
            C4651t.m34621a().m34609g();
        }
        if (bundle != null) {
            try {
                this.f15832h = bundle.getInt("sdk_version", 1);
                this.f15834j = bundle.getString("adid");
                this.f15835k = bundle.getString("log_extra");
                this.f15838n = bundle.getInt(Payload.SOURCE, -1);
                this.f15843s = bundle.getBoolean("ad_pending_download", false);
                this.f15839o = bundle.getString("url");
                this.f15840p = bundle.getString("web_title");
                this.f15841q = bundle.getString("event_tag");
                String string = bundle.getString("material_meta", null);
                if (!TextUtils.isEmpty(string)) {
                    this.f15842r = C4493b.m35502a(new JSONObject(string));
                }
            } catch (Throwable th) {
            }
        }
        if (this.f15842r == null) {
            C5478q.m32106e("TTPlayableLandingPage", "material is null, no data to display");
            finish();
        }
    }

    /* renamed from: a */
    private void m35860a(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        C4785a.m33991a(this.f15831g).m33988a(false).m33986b(false).m33989a(sSWebView);
        sSWebView.getSettings().setUserAgentString(C5472n.m32126a(sSWebView, this.f15832h));
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        sSWebView.getSettings().setMixedContentMode(0);
    }

    /* renamed from: a */
    public void m35859a(String str) {
        C4811e.m33867b(this, this.f15842r, this.f15841q, str, (JSONObject) null);
    }

    /* renamed from: b */
    public void m35858b() {
        SSWebView sSWebView;
        if (this.f15846v.getAndSet(true) || (sSWebView = this.f15827c) == null || this.f15828d == null) {
            return;
        }
        C5443ag.m32228a((View) sSWebView, 0);
        C5443ag.m32228a((View) this.f15828d, 8);
        int i = C4600n.m34805h().m34866q(String.valueOf(C5438af.m32278d(this.f15842r.m35228S()))).f16712r;
        if (i >= 0) {
            this.f15826b.sendEmptyMessageDelayed(1, i * 1000);
        } else {
            C5443ag.m32228a((View) this.f15825a, 0);
        }
    }

    /* renamed from: c */
    private boolean m35855c() {
        if (this.f15828d == null) {
            return false;
        }
        String m35853d = m35853d();
        if (TextUtils.isEmpty(m35853d)) {
            return false;
        }
        this.f15828d.setWebViewClient(new C4798c(this.f15831g, this.f15837m, this.f15834j, null) { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.4
            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                if (TTPlayableLandingPageActivity.this.f15830f) {
                    TTPlayableLandingPageActivity.this.m35859a("loading_h5_success");
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                super.onReceivedError(webView, i, str, str2);
                TTPlayableLandingPageActivity.this.f15830f = false;
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                TTPlayableLandingPageActivity.this.f15830f = false;
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                TTPlayableLandingPageActivity.this.f15830f = false;
            }
        });
        this.f15828d.loadUrl(m35853d);
        return true;
    }

    /* renamed from: d */
    private String m35853d() {
        String m34883i = C4600n.m34805h().m34883i();
        String str = m34883i;
        if (!TextUtils.isEmpty(m34883i)) {
            C4557i c4557i = this.f15842r;
            str = m34883i;
            if (c4557i != null) {
                if (c4557i.m35230Q() == null) {
                    str = m34883i;
                } else {
                    String m35335b = this.f15842r.m35230Q().m35335b();
                    int m35329d = this.f15842r.m35230Q().m35329d();
                    int m35328e = this.f15842r.m35230Q().m35328e();
                    String m35254a = this.f15842r.m35242E().m35254a();
                    String m35231P = this.f15842r.m35231P();
                    String m35332c = this.f15842r.m35230Q().m35332c();
                    String m35338a = this.f15842r.m35230Q().m35338a();
                    String m35335b2 = this.f15842r.m35230Q().m35335b();
                    StringBuffer stringBuffer = new StringBuffer(m34883i);
                    stringBuffer.append("?appname=");
                    stringBuffer.append(m35335b);
                    stringBuffer.append("&stars=");
                    stringBuffer.append(m35329d);
                    stringBuffer.append("&comments=");
                    stringBuffer.append(m35328e);
                    stringBuffer.append("&icon=");
                    stringBuffer.append(m35254a);
                    stringBuffer.append("&downloading=false&id=");
                    stringBuffer.append(m35231P);
                    stringBuffer.append("&pkg_name=");
                    stringBuffer.append(m35332c);
                    stringBuffer.append("&download_url=");
                    stringBuffer.append(m35338a);
                    stringBuffer.append("&name=");
                    stringBuffer.append(m35335b2);
                    str = stringBuffer.toString();
                }
            }
        }
        return str;
    }

    /* renamed from: e */
    private void m35851e() {
        AbstractC3234c abstractC3234c;
        if (this.f15844t || !this.f15843s || (abstractC3234c = this.f15845u) == null) {
            return;
        }
        abstractC3234c.mo39091e();
    }

    /* renamed from: f */
    static /* synthetic */ int m35848f(TTPlayableLandingPageActivity tTPlayableLandingPageActivity) {
        int i = tTPlayableLandingPageActivity.f15850z;
        tTPlayableLandingPageActivity.f15850z = i + 1;
        return i;
    }

    /* renamed from: f */
    private void m35849f() {
        C4754w c4754w = new C4754w(this);
        this.f15836l = c4754w;
        c4754w.m34128b(this.f15827c).m34158a(this.f15842r).m34141a(this.f15834j).m34127b(this.f15835k).m34131b(this.f15838n).m34159a(this).m34149a(this.f15827c).m34121c(C5438af.m32270f(this.f15842r));
        C4754w c4754w2 = new C4754w(this);
        this.f15837m = c4754w2;
        c4754w2.m34128b(this.f15828d).m34158a(this.f15842r).m34141a(this.f15834j).m34127b(this.f15835k).m34159a(this).m34131b(this.f15838n).m34118c(false).m34149a(this.f15828d).m34121c(C5438af.m32270f(this.f15842r));
    }

    /* renamed from: h */
    static /* synthetic */ int m35846h(TTPlayableLandingPageActivity tTPlayableLandingPageActivity) {
        int i = tTPlayableLandingPageActivity.f15824A;
        tTPlayableLandingPageActivity.f15824A = i + 1;
        return i;
    }

    @Override // com.bytedance.sdk.openadsdk.utils.HandlerC5446ah.AbstractC5447a
    /* renamed from: a */
    public void mo32205a(Message message) {
        if (message.what == 1) {
            C5443ag.m32228a((View) this.f15825a, 0);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.p151b.AbstractC4498d
    /* renamed from: a */
    public void mo35469a(boolean z) {
        AbstractC3234c abstractC3234c;
        this.f15843s = true;
        this.f15844t = z;
        if (!z) {
            try {
                Toast.makeText(this.f15831g, C5486x.m32071a(C4600n.m34815a(), "tt_toast_later_download"), 0).show();
            } catch (Throwable th) {
            }
        }
        if (!this.f15844t || (abstractC3234c = this.f15845u) == null) {
            return;
        }
        abstractC3234c.mo39091e();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            requestWindowFeature(1);
            getWindow().addFlags(1024);
            getWindow().addFlags(Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE);
            C4600n.m34814a(this);
        } catch (Throwable th) {
        }
        m35864a(bundle);
        setContentView(C5486x.m32065f(this, "tt_activity_ttlandingpage_playable"));
        this.f15849y = C4863a.m33717a().m33711b();
        m35865a();
        this.f15831g = this;
        C4557i c4557i = this.f15842r;
        if (c4557i == null) {
            return;
        }
        this.f15847w = c4557i.m35227T();
        m35849f();
        this.f15827c.setWebViewClient(new C4798c(this.f15831g, this.f15836l, this.f15834j, null) { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.1
            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                try {
                    if (TTPlayableLandingPageActivity.this.f15833i != null && !TTPlayableLandingPageActivity.this.isFinishing()) {
                        TTPlayableLandingPageActivity.this.f15833i.setVisibility(8);
                    }
                    if (!TTPlayableLandingPageActivity.this.f15829e) {
                        return;
                    }
                    TTPlayableLandingPageActivity.this.m35858b();
                    TTPlayableLandingPageActivity.this.m35859a("py_loading_success");
                } catch (Throwable th2) {
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                super.onReceivedError(webView, i, str, str2);
                TTPlayableLandingPageActivity.this.f15829e = false;
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                TTPlayableLandingPageActivity.this.f15829e = false;
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                if (TTPlayableLandingPageActivity.this.f15839o != null && webResourceRequest != null && webResourceRequest.getUrl() != null && TTPlayableLandingPageActivity.this.f15839o.equals(webResourceRequest.getUrl().toString())) {
                    TTPlayableLandingPageActivity.this.f15829e = false;
                }
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                try {
                    if (TextUtils.isEmpty(TTPlayableLandingPageActivity.this.f15848x)) {
                        return super.shouldInterceptRequest(webView, str);
                    }
                    TTPlayableLandingPageActivity.m35848f(TTPlayableLandingPageActivity.this);
                    WebResourceResponse m33715a = C4863a.m33717a().m33715a(TTPlayableLandingPageActivity.this.f15849y, TTPlayableLandingPageActivity.this.f15848x, str);
                    if (m33715a == null) {
                        return super.shouldInterceptRequest(webView, str);
                    }
                    TTPlayableLandingPageActivity.m35846h(TTPlayableLandingPageActivity.this);
                    return m33715a;
                } catch (Throwable th2) {
                    Log.e("TTPlayableLandingPage", "shouldInterceptRequest url error", th2);
                    return super.shouldInterceptRequest(webView, str);
                }
            }
        });
        m35860a(this.f15827c);
        m35860a(this.f15828d);
        m35855c();
        this.f15827c.loadUrl(this.f15839o);
        this.f15827c.setWebChromeClient(new C4797b(this.f15836l, null) { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.2
            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4797b, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                super.onProgressChanged(webView, i);
                if (TTPlayableLandingPageActivity.this.f15833i == null || TTPlayableLandingPageActivity.this.isFinishing()) {
                    return;
                }
                if (i != 100 || !TTPlayableLandingPageActivity.this.f15833i.isShown()) {
                    TTPlayableLandingPageActivity.this.f15833i.setProgress(i);
                    return;
                }
                TTPlayableLandingPageActivity.this.f15833i.setVisibility(8);
                TTPlayableLandingPageActivity.this.m35858b();
            }
        });
        this.f15826b = new HandlerC5446ah(Looper.getMainLooper(), this);
        if (this.f15842r.m35243D() != 4) {
            return;
        }
        this.f15845u = C3235d.m39089a(this.f15831g, this.f15842r, this.f15841q);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        ViewGroup viewGroup;
        super.onDestroy();
        try {
            if (getWindow() != null && (viewGroup = (ViewGroup) getWindow().getDecorView()) != null) {
                viewGroup.removeAllViews();
            }
        } catch (Throwable th) {
        }
        C4804z.m33900a(this.f15831g, this.f15827c);
        C4804z.m33899a(this.f15827c);
        this.f15827c = null;
        C4754w c4754w = this.f15836l;
        if (c4754w != null) {
            c4754w.m34105h();
        }
        C4754w c4754w2 = this.f15837m;
        if (c4754w2 != null) {
            c4754w2.m34105h();
        }
        m35851e();
        if (!TextUtils.isEmpty(this.f15848x)) {
            C4811e.C4812a.m33859a(this.f15824A, this.f15850z, this.f15842r);
        }
        C4863a.m33717a().m33716a(this.f15849y);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        C4651t.m34621a().m34614b(true);
        C4754w c4754w = this.f15836l;
        if (c4754w != null) {
            c4754w.m34108g();
        }
        C4754w c4754w2 = this.f15837m;
        if (c4754w2 != null) {
            c4754w2.m34108g();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        C4754w c4754w = this.f15836l;
        if (c4754w != null) {
            c4754w.m34111f();
        }
        C4754w c4754w2 = this.f15837m;
        if (c4754w2 != null) {
            c4754w2.m34111f();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        try {
            C4557i c4557i = this.f15842r;
            bundle2.putString("material_meta", c4557i != null ? c4557i.m35196ag().toString() : null);
            bundle2.putInt("sdk_version", this.f15832h);
            bundle2.putString("adid", this.f15834j);
            bundle2.putString("log_extra", this.f15835k);
            bundle2.putInt(Payload.SOURCE, this.f15838n);
            bundle2.putBoolean("ad_pending_download", this.f15843s);
            bundle2.putString("url", this.f15839o);
            bundle2.putString("web_title", this.f15840p);
            bundle2.putString("event_tag", this.f15841q);
        } catch (Throwable th) {
        }
        super.onSaveInstanceState(bundle2);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }
}
