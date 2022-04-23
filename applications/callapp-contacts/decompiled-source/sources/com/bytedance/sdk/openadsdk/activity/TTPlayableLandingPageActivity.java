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
import com.a.a.a.a.a.c;
import com.appsflyer.internal.referrer.Payload;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.b.d;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.t;
import com.bytedance.sdk.openadsdk.core.w;
import com.bytedance.sdk.openadsdk.core.widget.webview.SSWebView;
import com.bytedance.sdk.openadsdk.core.z;
import com.bytedance.sdk.openadsdk.d.e;
import com.bytedance.sdk.openadsdk.multipro.b;
import com.bytedance.sdk.openadsdk.preload.falconx.a.a;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.ah;
import com.bytedance.sdk.openadsdk.utils.n;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.x;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.http2.Http2Connection;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity.class */
public class TTPlayableLandingPageActivity extends Activity implements d, ah.a {

    /* renamed from: a  reason: collision with root package name */
    RelativeLayout f8488a;

    /* renamed from: b  reason: collision with root package name */
    ah f8489b;

    /* renamed from: c  reason: collision with root package name */
    private SSWebView f8490c;

    /* renamed from: d  reason: collision with root package name */
    private SSWebView f8491d;
    private Context g;
    private int h;
    private ProgressBar i;
    private String j;
    private String k;
    private w l;
    private w m;
    private int n;
    private String o;
    private String p;
    private String q;
    private i r;
    private boolean s;
    private boolean t;
    private c u;
    private int w;
    private String x;
    private a y;
    private boolean e = true;
    private boolean f = true;
    private AtomicBoolean v = new AtomicBoolean(false);
    private int z = 0;
    private int A = 0;

    private void a() {
        this.f8490c = (SSWebView) findViewById(x.e(this, "tt_browser_webview"));
        this.f8491d = (SSWebView) findViewById(x.e(this, "tt_browser_webview_loading"));
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(x.e(this, "tt_playable_ad_close_layout"));
        this.f8488a = relativeLayout;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTPlayableLandingPageActivity.this.a("playable_close");
                    TTPlayableLandingPageActivity.this.finish();
                }
            });
        }
        this.i = (ProgressBar) findViewById(x.e(this, "tt_browser_progress"));
    }

    private void a(Bundle bundle) {
        Intent intent = getIntent();
        this.h = intent.getIntExtra("sdk_version", 1);
        this.j = intent.getStringExtra("adid");
        this.k = intent.getStringExtra("log_extra");
        this.n = intent.getIntExtra(Payload.SOURCE, -1);
        this.s = intent.getBooleanExtra("ad_pending_download", false);
        this.o = intent.getStringExtra("url");
        this.x = intent.getStringExtra("gecko_id");
        this.p = intent.getStringExtra("web_title");
        this.q = intent.getStringExtra("event_tag");
        if (b.b()) {
            String stringExtra = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
            if (stringExtra != null) {
                try {
                    this.r = com.bytedance.sdk.openadsdk.core.b.a(new JSONObject(stringExtra));
                } catch (Exception e) {
                    q.c("TTPlayableLandingPage", "TTPlayableLandingPageActivity - onCreate MultiGlobalInfo : ", e);
                }
            }
        } else {
            this.r = t.a().c();
            t.a().g();
        }
        if (bundle != null) {
            try {
                this.h = bundle.getInt("sdk_version", 1);
                this.j = bundle.getString("adid");
                this.k = bundle.getString("log_extra");
                this.n = bundle.getInt(Payload.SOURCE, -1);
                this.s = bundle.getBoolean("ad_pending_download", false);
                this.o = bundle.getString("url");
                this.p = bundle.getString("web_title");
                this.q = bundle.getString("event_tag");
                String string = bundle.getString("material_meta", null);
                if (!TextUtils.isEmpty(string)) {
                    this.r = com.bytedance.sdk.openadsdk.core.b.a(new JSONObject(string));
                }
            } catch (Throwable th) {
            }
        }
        if (this.r == null) {
            q.e("TTPlayableLandingPage", "material is null, no data to display");
            finish();
        }
    }

    private void a(SSWebView sSWebView) {
        if (sSWebView != null) {
            com.bytedance.sdk.openadsdk.core.widget.webview.a.a(this.g).a(false).b(false).a(sSWebView);
            sSWebView.getSettings().setUserAgentString(n.a(sSWebView, this.h));
            if (Build.VERSION.SDK_INT >= 21) {
                sSWebView.getSettings().setMixedContentMode(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        e.b(this, this.r, this.q, str, (JSONObject) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        SSWebView sSWebView;
        if (!this.v.getAndSet(true) && (sSWebView = this.f8490c) != null && this.f8491d != null) {
            ag.a((View) sSWebView, 0);
            ag.a((View) this.f8491d, 8);
            int i = com.bytedance.sdk.openadsdk.core.n.h().q(String.valueOf(af.d(this.r.S()))).r;
            if (i >= 0) {
                this.f8489b.sendEmptyMessageDelayed(1, i * 1000);
            } else {
                ag.a((View) this.f8488a, 0);
            }
        }
    }

    private boolean c() {
        if (this.f8491d == null) {
            return false;
        }
        String d2 = d();
        if (TextUtils.isEmpty(d2)) {
            return false;
        }
        this.f8491d.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.webview.c(this.g, this.m, this.j, null) { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.4
            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                if (TTPlayableLandingPageActivity.this.f) {
                    TTPlayableLandingPageActivity.this.a("loading_h5_success");
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                super.onReceivedError(webView, i, str, str2);
                TTPlayableLandingPageActivity.this.f = false;
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                TTPlayableLandingPageActivity.this.f = false;
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                TTPlayableLandingPageActivity.this.f = false;
            }
        });
        this.f8491d.loadUrl(d2);
        return true;
    }

    private String d() {
        String i = com.bytedance.sdk.openadsdk.core.n.h().i();
        String str = i;
        if (!TextUtils.isEmpty(i)) {
            i iVar = this.r;
            str = i;
            if (iVar != null) {
                if (iVar.Q() == null) {
                    str = i;
                } else {
                    String b2 = this.r.Q().b();
                    int d2 = this.r.Q().d();
                    int e = this.r.Q().e();
                    String a2 = this.r.E().a();
                    String P = this.r.P();
                    String c2 = this.r.Q().c();
                    String a3 = this.r.Q().a();
                    String b3 = this.r.Q().b();
                    StringBuffer stringBuffer = new StringBuffer(i);
                    stringBuffer.append("?appname=");
                    stringBuffer.append(b2);
                    stringBuffer.append("&stars=");
                    stringBuffer.append(d2);
                    stringBuffer.append("&comments=");
                    stringBuffer.append(e);
                    stringBuffer.append("&icon=");
                    stringBuffer.append(a2);
                    stringBuffer.append("&downloading=false&id=");
                    stringBuffer.append(P);
                    stringBuffer.append("&pkg_name=");
                    stringBuffer.append(c2);
                    stringBuffer.append("&download_url=");
                    stringBuffer.append(a3);
                    stringBuffer.append("&name=");
                    stringBuffer.append(b3);
                    str = stringBuffer.toString();
                }
            }
        }
        return str;
    }

    private void e() {
        c cVar;
        if (!this.t && this.s && (cVar = this.u) != null) {
            cVar.e();
        }
    }

    static /* synthetic */ int f(TTPlayableLandingPageActivity tTPlayableLandingPageActivity) {
        int i = tTPlayableLandingPageActivity.z;
        tTPlayableLandingPageActivity.z = i + 1;
        return i;
    }

    private void f() {
        w wVar = new w(this);
        this.l = wVar;
        wVar.b(this.f8490c).a(this.r).a(this.j).b(this.k).b(this.n).a(this).a(this.f8490c).c(af.f(this.r));
        w wVar2 = new w(this);
        this.m = wVar2;
        wVar2.b(this.f8491d).a(this.r).a(this.j).b(this.k).a(this).b(this.n).c(false).a(this.f8491d).c(af.f(this.r));
    }

    static /* synthetic */ int h(TTPlayableLandingPageActivity tTPlayableLandingPageActivity) {
        int i = tTPlayableLandingPageActivity.A;
        tTPlayableLandingPageActivity.A = i + 1;
        return i;
    }

    @Override // com.bytedance.sdk.openadsdk.utils.ah.a
    public void a(Message message) {
        if (message.what == 1) {
            ag.a((View) this.f8488a, 0);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.b.d
    public void a(boolean z) {
        c cVar;
        this.s = true;
        this.t = z;
        if (!z) {
            try {
                Toast.makeText(this.g, x.a(com.bytedance.sdk.openadsdk.core.n.a(), "tt_toast_later_download"), 0).show();
            } catch (Throwable th) {
            }
        }
        if (this.t && (cVar = this.u) != null) {
            cVar.e();
        }
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
            com.bytedance.sdk.openadsdk.core.n.a(this);
        } catch (Throwable th) {
        }
        a(bundle);
        setContentView(x.f(this, "tt_activity_ttlandingpage_playable"));
        this.y = com.bytedance.sdk.openadsdk.e.a.a().b();
        a();
        this.g = this;
        i iVar = this.r;
        if (iVar != null) {
            this.w = iVar.T();
            f();
            this.f8490c.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.webview.c(this.g, this.l, this.j, null) { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.1
                @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str) {
                    super.onPageFinished(webView, str);
                    try {
                        if (TTPlayableLandingPageActivity.this.i != null && !TTPlayableLandingPageActivity.this.isFinishing()) {
                            TTPlayableLandingPageActivity.this.i.setVisibility(8);
                        }
                        if (TTPlayableLandingPageActivity.this.e) {
                            TTPlayableLandingPageActivity.this.b();
                            TTPlayableLandingPageActivity.this.a("py_loading_success");
                        }
                    } catch (Throwable th2) {
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
                public void onReceivedError(WebView webView, int i, String str, String str2) {
                    super.onReceivedError(webView, i, str, str2);
                    TTPlayableLandingPageActivity.this.e = false;
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
                public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                    super.onReceivedError(webView, webResourceRequest, webResourceError);
                    TTPlayableLandingPageActivity.this.e = false;
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
                public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                    if (!(TTPlayableLandingPageActivity.this.o == null || webResourceRequest == null || webResourceRequest.getUrl() == null || !TTPlayableLandingPageActivity.this.o.equals(webResourceRequest.getUrl().toString()))) {
                        TTPlayableLandingPageActivity.this.e = false;
                    }
                    super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
                public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                    try {
                        if (TextUtils.isEmpty(TTPlayableLandingPageActivity.this.x)) {
                            return super.shouldInterceptRequest(webView, str);
                        }
                        TTPlayableLandingPageActivity.f(TTPlayableLandingPageActivity.this);
                        WebResourceResponse a2 = com.bytedance.sdk.openadsdk.e.a.a().a(TTPlayableLandingPageActivity.this.y, TTPlayableLandingPageActivity.this.x, str);
                        if (a2 == null) {
                            return super.shouldInterceptRequest(webView, str);
                        }
                        TTPlayableLandingPageActivity.h(TTPlayableLandingPageActivity.this);
                        return a2;
                    } catch (Throwable th2) {
                        Log.e("TTPlayableLandingPage", "shouldInterceptRequest url error", th2);
                        return super.shouldInterceptRequest(webView, str);
                    }
                }
            });
            a(this.f8490c);
            a(this.f8491d);
            c();
            this.f8490c.loadUrl(this.o);
            this.f8490c.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.webview.b(this.l, null) { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.2
                @Override // com.bytedance.sdk.openadsdk.core.widget.webview.b, android.webkit.WebChromeClient
                public void onProgressChanged(WebView webView, int i) {
                    super.onProgressChanged(webView, i);
                    if (TTPlayableLandingPageActivity.this.i != null && !TTPlayableLandingPageActivity.this.isFinishing()) {
                        if (i != 100 || !TTPlayableLandingPageActivity.this.i.isShown()) {
                            TTPlayableLandingPageActivity.this.i.setProgress(i);
                            return;
                        }
                        TTPlayableLandingPageActivity.this.i.setVisibility(8);
                        TTPlayableLandingPageActivity.this.b();
                    }
                }
            });
            this.f8489b = new ah(Looper.getMainLooper(), this);
            if (this.r.D() == 4) {
                this.u = com.a.a.a.a.a.d.a(this.g, this.r, this.q);
            }
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        ViewGroup viewGroup;
        super.onDestroy();
        try {
            if (!(getWindow() == null || (viewGroup = (ViewGroup) getWindow().getDecorView()) == null)) {
                viewGroup.removeAllViews();
            }
        } catch (Throwable th) {
        }
        z.a(this.g, this.f8490c);
        z.a(this.f8490c);
        this.f8490c = null;
        w wVar = this.l;
        if (wVar != null) {
            wVar.h();
        }
        w wVar2 = this.m;
        if (wVar2 != null) {
            wVar2.h();
        }
        e();
        if (!TextUtils.isEmpty(this.x)) {
            e.a.a(this.A, this.z, this.r);
        }
        com.bytedance.sdk.openadsdk.e.a.a().a(this.y);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        t.a().b(true);
        w wVar = this.l;
        if (wVar != null) {
            wVar.g();
        }
        w wVar2 = this.m;
        if (wVar2 != null) {
            wVar2.g();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        w wVar = this.l;
        if (wVar != null) {
            wVar.f();
        }
        w wVar2 = this.m;
        if (wVar2 != null) {
            wVar2.f();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        try {
            i iVar = this.r;
            bundle2.putString("material_meta", iVar != null ? iVar.ag().toString() : null);
            bundle2.putInt("sdk_version", this.h);
            bundle2.putString("adid", this.j);
            bundle2.putString("log_extra", this.k);
            bundle2.putInt(Payload.SOURCE, this.n);
            bundle2.putBoolean("ad_pending_download", this.s);
            bundle2.putString("url", this.o);
            bundle2.putString("web_title", this.p);
            bundle2.putString("event_tag", this.q);
        } catch (Throwable th) {
        }
        super.onSaveInstanceState(bundle2);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }
}
