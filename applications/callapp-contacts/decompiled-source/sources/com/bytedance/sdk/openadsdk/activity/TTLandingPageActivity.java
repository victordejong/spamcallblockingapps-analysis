package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.webkit.DownloadListener;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.a.a.a.a.a.c;
import com.appsflyer.internal.referrer.Payload;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.e.j;
import com.bytedance.sdk.openadsdk.core.g;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.t;
import com.bytedance.sdk.openadsdk.core.w;
import com.bytedance.sdk.openadsdk.core.widget.webview.SSWebView;
import com.bytedance.sdk.openadsdk.core.z;
import com.bytedance.sdk.openadsdk.d.e;
import com.bytedance.sdk.openadsdk.d.k;
import com.bytedance.sdk.openadsdk.f.d;
import com.bytedance.sdk.openadsdk.multipro.b;
import com.bytedance.sdk.openadsdk.preload.falconx.a.a;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.x;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/activity/TTLandingPageActivity.class */
public class TTLandingPageActivity extends Activity implements d {

    /* renamed from: b  reason: collision with root package name */
    private static final String f8476b = "TTLandingPageActivity";

    /* renamed from: a  reason: collision with root package name */
    k f8477a;

    /* renamed from: c  reason: collision with root package name */
    private SSWebView f8478c;

    /* renamed from: d  reason: collision with root package name */
    private ImageView f8479d;
    private ImageView e;
    private TextView f;
    private Context g;
    private int h;
    private ViewStub i;
    private ViewStub j;
    private ViewStub k;
    private Button l;
    private ProgressBar m;
    private String n;
    private String o;
    private w p;
    private int q;
    private String r;
    private i s;
    private c t;
    private String u;
    private String x;
    private a y;
    private AtomicBoolean v = new AtomicBoolean(true);
    private JSONArray w = null;
    private int z = 0;
    private int A = 0;
    private String B = "ダウンロード";

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        if (this.e != null && f()) {
            ag.a((View) this.e, i);
        }
    }

    private void a(final String str) {
        Button button;
        if (!TextUtils.isEmpty(str) && (button = this.l) != null) {
            button.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.4
                @Override // java.lang.Runnable
                public void run() {
                    if (TTLandingPageActivity.this.l != null && !TTLandingPageActivity.this.isFinishing()) {
                        TTLandingPageActivity.this.l.setText(str);
                    }
                }
            });
        }
    }

    private void a(boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isBackIntercept", z);
            this.p.a("temai_back_event", jSONObject);
        } catch (Exception e) {
        }
    }

    private JSONArray b(String str) {
        int i;
        JSONArray jSONArray = this.w;
        if (jSONArray != null && jSONArray.length() > 0) {
            return this.w;
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int indexOf = str.indexOf("?id=");
        int indexOf2 = str.indexOf("&");
        if (indexOf == -1 || indexOf2 == -1 || (i = indexOf + 4) >= indexOf2) {
            return null;
        }
        String substring = str.substring(i, indexOf2);
        if (TextUtils.isEmpty(substring)) {
            return null;
        }
        JSONArray jSONArray2 = new JSONArray();
        jSONArray2.put(substring);
        return jSONArray2;
    }

    private void b() {
        i iVar = this.s;
        if (iVar != null && iVar.D() == 4) {
            ViewStub viewStub = this.k;
            if (viewStub != null) {
                viewStub.setVisibility(0);
            }
            Button button = (Button) findViewById(x.e(this, "tt_browser_download_btn"));
            this.l = button;
            if (button != null) {
                a(c());
                if (this.t == null) {
                    this.t = com.a.a.a.a.a.d.a(this, this.s, TextUtils.isEmpty(this.r) ? af.a(this.q) : this.r);
                }
                com.bytedance.sdk.openadsdk.core.b.a aVar = new com.bytedance.sdk.openadsdk.core.b.a(this, this.s, this.r, this.q);
                aVar.a(false);
                this.l.setOnClickListener(aVar);
                this.l.setOnTouchListener(aVar);
                aVar.c(true);
                aVar.a(this.t);
            }
        }
    }

    static /* synthetic */ int c(TTLandingPageActivity tTLandingPageActivity) {
        int i = tTLandingPageActivity.z;
        tTLandingPageActivity.z = i + 1;
        return i;
    }

    private String c() {
        i iVar = this.s;
        if (iVar != null && !TextUtils.isEmpty(iVar.O())) {
            this.B = this.s.O();
        }
        return this.B;
    }

    private void d() {
        ViewStub viewStub;
        this.f8478c = (SSWebView) findViewById(x.e(this, "tt_browser_webview"));
        this.k = (ViewStub) findViewById(x.e(this, "tt_browser_download_btn_stub"));
        this.i = (ViewStub) findViewById(x.e(this, "tt_browser_titlebar_view_stub"));
        this.j = (ViewStub) findViewById(x.e(this, "tt_browser_titlebar_dark_view_stub"));
        int l = g.b().l();
        if (l == 0) {
            ViewStub viewStub2 = this.i;
            if (viewStub2 != null) {
                viewStub2.setVisibility(0);
            }
        } else if (l == 1 && (viewStub = this.j) != null) {
            viewStub.setVisibility(0);
        }
        ImageView imageView = (ImageView) findViewById(x.e(this, "tt_titlebar_back"));
        this.f8479d = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (TTLandingPageActivity.this.f8478c == null) {
                        return;
                    }
                    if (TTLandingPageActivity.this.f8478c.canGoBack()) {
                        TTLandingPageActivity.this.f8478c.goBack();
                    } else if (TTLandingPageActivity.this.f()) {
                        TTLandingPageActivity.this.onBackPressed();
                    } else {
                        TTLandingPageActivity.this.finish();
                    }
                }
            });
        }
        ImageView imageView2 = (ImageView) findViewById(x.e(this, "tt_titlebar_close"));
        this.e = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTLandingPageActivity.this.finish();
                }
            });
        }
        this.f = (TextView) findViewById(x.e(this, "tt_titlebar_title"));
        this.m = (ProgressBar) findViewById(x.e(this, "tt_browser_progress"));
    }

    static /* synthetic */ int e(TTLandingPageActivity tTLandingPageActivity) {
        int i = tTLandingPageActivity.A;
        tTLandingPageActivity.A = i + 1;
        return i;
    }

    private void e() {
        w wVar = new w(this);
        this.p = wVar;
        wVar.b(this.f8478c).a(this.n).b(this.o).a(this.s).b(this.q).a(this.s.y()).c(af.f(this.s)).a(this.f8478c).a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f() {
        return !TextUtils.isEmpty(this.u) && this.u.contains("__luban_sdk");
    }

    private void g() {
        if (this.s != null) {
            JSONArray b2 = b(this.u);
            int d2 = af.d(this.o);
            int c2 = af.c(this.o);
            o<com.bytedance.sdk.openadsdk.d.a> f = n.f();
            if (b2 != null && f != null && d2 > 0 && c2 > 0) {
                j jVar = new j();
                jVar.f8908d = b2;
                AdSlot n = this.s.n();
                if (n != null) {
                    n.setAdCount(6);
                    f.a(n, jVar, c2, new o.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.7
                        @Override // com.bytedance.sdk.openadsdk.core.o.a
                        public void a(int i, String str) {
                            TTLandingPageActivity.this.a(0);
                        }

                        @Override // com.bytedance.sdk.openadsdk.core.o.a
                        public void a(com.bytedance.sdk.openadsdk.core.e.a aVar) {
                            if (aVar != null) {
                                try {
                                    TTLandingPageActivity.this.v.set(false);
                                    TTLandingPageActivity.this.p.b(new JSONObject(aVar.c()));
                                } catch (Exception e) {
                                    TTLandingPageActivity.this.a(0);
                                }
                            }
                        }
                    });
                }
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d
    public void a(boolean z, JSONArray jSONArray) {
        if (z && jSONArray != null && jSONArray.length() > 0) {
            this.w = jSONArray;
            g();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (!f() || this.v.getAndSet(true)) {
            super.onBackPressed();
            return;
        }
        a(true);
        a(0);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        b();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            n.a(this);
        } catch (Throwable th) {
        }
        setContentView(x.f(this, "tt_activity_ttlandingpage"));
        d();
        this.y = com.bytedance.sdk.openadsdk.e.a.a().b();
        this.g = this;
        com.bytedance.sdk.openadsdk.core.widget.webview.a.a(this).a(false).b(false).a(this.f8478c);
        Intent intent = getIntent();
        this.h = intent.getIntExtra("sdk_version", 1);
        this.n = intent.getStringExtra("adid");
        this.o = intent.getStringExtra("log_extra");
        this.q = intent.getIntExtra(Payload.SOURCE, -1);
        String stringExtra = intent.getStringExtra("url");
        this.u = stringExtra;
        a(4);
        String stringExtra2 = intent.getStringExtra("web_title");
        intent.getStringExtra("icon_url");
        this.r = intent.getStringExtra("event_tag");
        this.x = intent.getStringExtra("gecko_id");
        if (b.b()) {
            String stringExtra3 = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
            if (stringExtra3 != null) {
                try {
                    this.s = com.bytedance.sdk.openadsdk.core.b.a(new JSONObject(stringExtra3));
                } catch (Exception e) {
                    q.c(f8476b, "TTLandingPageActivity - onCreate MultiGlobalInfo : ", e);
                }
            }
        } else {
            this.s = t.a().c();
            t.a().g();
        }
        i iVar = this.s;
        if (iVar == null) {
            finish();
            return;
        }
        this.f8477a = new k(this, iVar, this.f8478c).a(true);
        e();
        this.f8478c.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.webview.c(this.g, this.p, this.n, this.f8477a) { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.1
            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                try {
                    if (TTLandingPageActivity.this.m != null && !TTLandingPageActivity.this.isFinishing()) {
                        TTLandingPageActivity.this.m.setVisibility(8);
                    }
                } catch (Throwable th2) {
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                try {
                    if (TextUtils.isEmpty(TTLandingPageActivity.this.x)) {
                        return super.shouldInterceptRequest(webView, str);
                    }
                    TTLandingPageActivity.c(TTLandingPageActivity.this);
                    WebResourceResponse a2 = com.bytedance.sdk.openadsdk.e.a.a().a(TTLandingPageActivity.this.y, TTLandingPageActivity.this.x, str);
                    if (a2 == null) {
                        return super.shouldInterceptRequest(webView, str);
                    }
                    TTLandingPageActivity.e(TTLandingPageActivity.this);
                    String unused = TTLandingPageActivity.f8476b;
                    return a2;
                } catch (Throwable th2) {
                    Log.e(TTLandingPageActivity.f8476b, "shouldInterceptRequest url error", th2);
                    return super.shouldInterceptRequest(webView, str);
                }
            }
        });
        this.f8478c.getSettings().setUserAgentString(com.bytedance.sdk.openadsdk.utils.n.a(this.f8478c, this.h));
        if (Build.VERSION.SDK_INT >= 21) {
            this.f8478c.getSettings().setMixedContentMode(0);
        }
        e.a(this.g, this.s);
        this.f8478c.loadUrl(stringExtra);
        this.f8478c.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.webview.b(this.p, this.f8477a) { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.2
            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.b, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                super.onProgressChanged(webView, i);
                if (TTLandingPageActivity.this.m != null && !TTLandingPageActivity.this.isFinishing()) {
                    if (i != 100 || !TTLandingPageActivity.this.m.isShown()) {
                        TTLandingPageActivity.this.m.setProgress(i);
                    } else {
                        TTLandingPageActivity.this.m.setVisibility(8);
                    }
                }
            }
        });
        this.f8478c.setDownloadListener(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.3
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
                if (TTLandingPageActivity.this.t != null) {
                    TTLandingPageActivity.this.t.e();
                }
            }
        });
        TextView textView = this.f;
        if (textView != null) {
            String str = stringExtra2;
            if (TextUtils.isEmpty(stringExtra2)) {
                str = x.a(this, "tt_web_title_default");
            }
            textView.setText(str);
        }
        b();
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
        z.a(this.g, this.f8478c);
        z.a(this.f8478c);
        this.f8478c = null;
        w wVar = this.p;
        if (wVar != null) {
            wVar.h();
        }
        k kVar = this.f8477a;
        if (kVar != null) {
            kVar.d();
        }
        if (!TextUtils.isEmpty(this.x)) {
            e.a.a(this.A, this.z, this.s);
        }
        com.bytedance.sdk.openadsdk.e.a.a().a(this.y);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        t.a().b(true);
        w wVar = this.p;
        if (wVar != null) {
            wVar.g();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        w wVar = this.p;
        if (wVar != null) {
            wVar.f();
        }
        k kVar = this.f8477a;
        if (kVar != null) {
            kVar.b();
        }
        g();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        k kVar = this.f8477a;
        if (kVar != null) {
            kVar.c();
        }
    }
}
