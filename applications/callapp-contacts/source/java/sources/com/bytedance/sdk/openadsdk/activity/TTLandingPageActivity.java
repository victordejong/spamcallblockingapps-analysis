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
import com.appsflyer.internal.referrer.Payload;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.AbstractC4635o;
import com.bytedance.sdk.openadsdk.core.C4493b;
import com.bytedance.sdk.openadsdk.core.C4570g;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.C4651t;
import com.bytedance.sdk.openadsdk.core.C4754w;
import com.bytedance.sdk.openadsdk.core.C4804z;
import com.bytedance.sdk.openadsdk.core.p151b.C4494a;
import com.bytedance.sdk.openadsdk.core.p154e.C4545a;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.p154e.C4559j;
import com.bytedance.sdk.openadsdk.core.widget.webview.C4785a;
import com.bytedance.sdk.openadsdk.core.widget.webview.C4797b;
import com.bytedance.sdk.openadsdk.core.widget.webview.C4798c;
import com.bytedance.sdk.openadsdk.core.widget.webview.SSWebView;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.p164d.C4805a;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.p164d.C4822k;
import com.bytedance.sdk.openadsdk.p165e.C4863a;
import com.bytedance.sdk.openadsdk.p166f.AbstractC4869d;
import com.bytedance.sdk.openadsdk.preload.falconx.p204a.C5300a;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5472n;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
import com.p094a.p095a.p096a.p097a.p098a.C3235d;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/activity/TTLandingPageActivity.class */
public class TTLandingPageActivity extends Activity implements AbstractC4869d {

    /* renamed from: b */
    private static final String f15788b = "TTLandingPageActivity";

    /* renamed from: a */
    C4822k f15791a;

    /* renamed from: c */
    private SSWebView f15792c;

    /* renamed from: d */
    private ImageView f15793d;

    /* renamed from: e */
    private ImageView f15794e;

    /* renamed from: f */
    private TextView f15795f;

    /* renamed from: g */
    private Context f15796g;

    /* renamed from: h */
    private int f15797h;

    /* renamed from: i */
    private ViewStub f15798i;

    /* renamed from: j */
    private ViewStub f15799j;

    /* renamed from: k */
    private ViewStub f15800k;

    /* renamed from: l */
    private Button f15801l;

    /* renamed from: m */
    private ProgressBar f15802m;

    /* renamed from: n */
    private String f15803n;

    /* renamed from: o */
    private String f15804o;

    /* renamed from: p */
    private C4754w f15805p;

    /* renamed from: q */
    private int f15806q;

    /* renamed from: r */
    private String f15807r;

    /* renamed from: s */
    private C4557i f15808s;

    /* renamed from: t */
    private AbstractC3234c f15809t;

    /* renamed from: u */
    private String f15810u;

    /* renamed from: x */
    private String f15813x;

    /* renamed from: y */
    private C5300a f15814y;

    /* renamed from: v */
    private AtomicBoolean f15811v = new AtomicBoolean(true);

    /* renamed from: w */
    private JSONArray f15812w = null;

    /* renamed from: z */
    private int f15815z = 0;

    /* renamed from: A */
    private int f15789A = 0;

    /* renamed from: B */
    private String f15790B = "ダウンロード";

    /* renamed from: a */
    public void m35887a(int i) {
        if (this.f15794e == null || !m35873f()) {
            return;
        }
        C5443ag.m32228a((View) this.f15794e, i);
    }

    /* renamed from: a */
    private void m35884a(final String str) {
        Button button;
        if (!TextUtils.isEmpty(str) && (button = this.f15801l) != null) {
            button.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.4
                @Override // java.lang.Runnable
                public void run() {
                    if (TTLandingPageActivity.this.f15801l == null || TTLandingPageActivity.this.isFinishing()) {
                        return;
                    }
                    TTLandingPageActivity.this.f15801l.setText(str);
                }
            });
        }
    }

    /* renamed from: a */
    private void m35883a(boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isBackIntercept", z);
            this.f15805p.mo33701a("temai_back_event", jSONObject);
        } catch (Exception e) {
        }
    }

    /* renamed from: b */
    private JSONArray m35880b(String str) {
        int i;
        JSONArray jSONArray = this.f15812w;
        if (jSONArray == null || jSONArray.length() <= 0) {
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
        return this.f15812w;
    }

    /* renamed from: b */
    private void m35882b() {
        C4557i c4557i = this.f15808s;
        if (c4557i == null || c4557i.m35243D() != 4) {
            return;
        }
        ViewStub viewStub = this.f15800k;
        if (viewStub != null) {
            viewStub.setVisibility(0);
        }
        Button button = (Button) findViewById(C5486x.m32066e(this, "tt_browser_download_btn"));
        this.f15801l = button;
        if (button == null) {
            return;
        }
        m35884a(m35879c());
        if (this.f15809t == null) {
            this.f15809t = C3235d.m39089a(this, this.f15808s, TextUtils.isEmpty(this.f15807r) ? C5438af.m32311a(this.f15806q) : this.f15807r);
        }
        C4494a c4494a = new C4494a(this, this.f15808s, this.f15807r, this.f15806q);
        c4494a.m35490a(false);
        this.f15801l.setOnClickListener(c4494a);
        this.f15801l.setOnTouchListener(c4494a);
        c4494a.m35486c(true);
        c4494a.m35480a(this.f15809t);
    }

    /* renamed from: c */
    static /* synthetic */ int m35878c(TTLandingPageActivity tTLandingPageActivity) {
        int i = tTLandingPageActivity.f15815z;
        tTLandingPageActivity.f15815z = i + 1;
        return i;
    }

    /* renamed from: c */
    private String m35879c() {
        C4557i c4557i = this.f15808s;
        if (c4557i != null && !TextUtils.isEmpty(c4557i.m35232O())) {
            this.f15790B = this.f15808s.m35232O();
        }
        return this.f15790B;
    }

    /* renamed from: d */
    private void m35877d() {
        ViewStub viewStub;
        this.f15792c = (SSWebView) findViewById(C5486x.m32066e(this, "tt_browser_webview"));
        this.f15800k = (ViewStub) findViewById(C5486x.m32066e(this, "tt_browser_download_btn_stub"));
        this.f15798i = (ViewStub) findViewById(C5486x.m32066e(this, "tt_browser_titlebar_view_stub"));
        this.f15799j = (ViewStub) findViewById(C5486x.m32066e(this, "tt_browser_titlebar_dark_view_stub"));
        int m34996l = C4570g.m35020b().m34996l();
        if (m34996l == 0) {
            ViewStub viewStub2 = this.f15798i;
            if (viewStub2 != null) {
                viewStub2.setVisibility(0);
            }
        } else if (m34996l == 1 && (viewStub = this.f15799j) != null) {
            viewStub.setVisibility(0);
        }
        ImageView imageView = (ImageView) findViewById(C5486x.m32066e(this, "tt_titlebar_back"));
        this.f15793d = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (TTLandingPageActivity.this.f15792c != null) {
                        if (TTLandingPageActivity.this.f15792c.canGoBack()) {
                            TTLandingPageActivity.this.f15792c.goBack();
                        } else if (TTLandingPageActivity.this.m35873f()) {
                            TTLandingPageActivity.this.onBackPressed();
                        } else {
                            TTLandingPageActivity.this.finish();
                        }
                    }
                }
            });
        }
        ImageView imageView2 = (ImageView) findViewById(C5486x.m32066e(this, "tt_titlebar_close"));
        this.f15794e = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTLandingPageActivity.this.finish();
                }
            });
        }
        this.f15795f = (TextView) findViewById(C5486x.m32066e(this, "tt_titlebar_title"));
        this.f15802m = (ProgressBar) findViewById(C5486x.m32066e(this, "tt_browser_progress"));
    }

    /* renamed from: e */
    static /* synthetic */ int m35874e(TTLandingPageActivity tTLandingPageActivity) {
        int i = tTLandingPageActivity.f15789A;
        tTLandingPageActivity.f15789A = i + 1;
        return i;
    }

    /* renamed from: e */
    private void m35875e() {
        C4754w c4754w = new C4754w(this);
        this.f15805p = c4754w;
        c4754w.m34128b(this.f15792c).m34141a(this.f15803n).m34127b(this.f15804o).m34158a(this.f15808s).m34131b(this.f15806q).m34162a(this.f15808s.m35135y()).m34121c(C5438af.m32270f(this.f15808s)).m34149a(this.f15792c).m34147a(this);
    }

    /* renamed from: f */
    public boolean m35873f() {
        return !TextUtils.isEmpty(this.f15810u) && this.f15810u.contains("__luban_sdk");
    }

    /* renamed from: g */
    private void m35871g() {
        if (this.f15808s == null) {
            return;
        }
        JSONArray m35880b = m35880b(this.f15810u);
        int m32278d = C5438af.m32278d(this.f15804o);
        int m32284c = C5438af.m32284c(this.f15804o);
        AbstractC4635o<C4805a> m34807f = C4600n.m34807f();
        if (m35880b == null || m34807f == null || m32278d <= 0 || m32284c <= 0) {
            return;
        }
        C4559j c4559j = new C4559j();
        c4559j.f16592d = m35880b;
        AdSlot m35151n = this.f15808s.m35151n();
        if (m35151n == null) {
            return;
        }
        m35151n.setAdCount(6);
        m34807f.mo34679a(m35151n, c4559j, m32284c, new AbstractC4635o.AbstractC4636a() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.7
            @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
            /* renamed from: a */
            public void mo34084a(int i, String str) {
                TTLandingPageActivity.this.m35887a(0);
            }

            @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
            /* renamed from: a */
            public void mo34083a(C4545a c4545a) {
                if (c4545a != null) {
                    try {
                        TTLandingPageActivity.this.f15811v.set(false);
                        TTLandingPageActivity.this.f15805p.m34125b(new JSONObject(c4545a.m35340c()));
                    } catch (Exception e) {
                        TTLandingPageActivity.this.m35887a(0);
                    }
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.p166f.AbstractC4869d
    /* renamed from: a */
    public void mo33693a(boolean z, JSONArray jSONArray) {
        if (!z || jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        this.f15812w = jSONArray;
        m35871g();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (!m35873f() || this.f15811v.getAndSet(true)) {
            super.onBackPressed();
            return;
        }
        m35883a(true);
        m35887a(0);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m35882b();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            C4600n.m34814a(this);
        } catch (Throwable th) {
        }
        setContentView(C5486x.m32065f(this, "tt_activity_ttlandingpage"));
        m35877d();
        this.f15814y = C4863a.m33717a().m33711b();
        this.f15796g = this;
        C4785a.m33991a(this).m33988a(false).m33986b(false).m33989a(this.f15792c);
        Intent intent = getIntent();
        this.f15797h = intent.getIntExtra("sdk_version", 1);
        this.f15803n = intent.getStringExtra("adid");
        this.f15804o = intent.getStringExtra("log_extra");
        this.f15806q = intent.getIntExtra(Payload.SOURCE, -1);
        String stringExtra = intent.getStringExtra("url");
        this.f15810u = stringExtra;
        m35887a(4);
        String stringExtra2 = intent.getStringExtra("web_title");
        intent.getStringExtra("icon_url");
        this.f15807r = intent.getStringExtra("event_tag");
        this.f15813x = intent.getStringExtra("gecko_id");
        if (C5094b.m33091b()) {
            String stringExtra3 = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
            if (stringExtra3 != null) {
                try {
                    this.f15808s = C4493b.m35502a(new JSONObject(stringExtra3));
                } catch (Exception e) {
                    C5478q.m32108c(f15788b, "TTLandingPageActivity - onCreate MultiGlobalInfo : ", e);
                }
            }
        } else {
            this.f15808s = C4651t.m34621a().m34613c();
            C4651t.m34621a().m34609g();
        }
        C4557i c4557i = this.f15808s;
        if (c4557i == null) {
            finish();
            return;
        }
        this.f15791a = new C4822k(this, c4557i, this.f15792c).m33815a(true);
        m35875e();
        this.f15792c.setWebViewClient(new C4798c(this.f15796g, this.f15805p, this.f15803n, this.f15791a) { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.1
            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                try {
                    if (TTLandingPageActivity.this.f15802m == null || TTLandingPageActivity.this.isFinishing()) {
                        return;
                    }
                    TTLandingPageActivity.this.f15802m.setVisibility(8);
                } catch (Throwable th2) {
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                try {
                    if (TextUtils.isEmpty(TTLandingPageActivity.this.f15813x)) {
                        return super.shouldInterceptRequest(webView, str);
                    }
                    TTLandingPageActivity.m35878c(TTLandingPageActivity.this);
                    WebResourceResponse m33715a = C4863a.m33717a().m33715a(TTLandingPageActivity.this.f15814y, TTLandingPageActivity.this.f15813x, str);
                    if (m33715a == null) {
                        return super.shouldInterceptRequest(webView, str);
                    }
                    TTLandingPageActivity.m35874e(TTLandingPageActivity.this);
                    String unused = TTLandingPageActivity.f15788b;
                    return m33715a;
                } catch (Throwable th2) {
                    Log.e(TTLandingPageActivity.f15788b, "shouldInterceptRequest url error", th2);
                    return super.shouldInterceptRequest(webView, str);
                }
            }
        });
        this.f15792c.getSettings().setUserAgentString(C5472n.m32126a(this.f15792c, this.f15797h));
        if (Build.VERSION.SDK_INT >= 21) {
            this.f15792c.getSettings().setMixedContentMode(0);
        }
        C4811e.m33884a(this.f15796g, this.f15808s);
        this.f15792c.loadUrl(stringExtra);
        this.f15792c.setWebChromeClient(new C4797b(this.f15805p, this.f15791a) { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.2
            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4797b, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                super.onProgressChanged(webView, i);
                if (TTLandingPageActivity.this.f15802m == null || TTLandingPageActivity.this.isFinishing()) {
                    return;
                }
                if (i != 100 || !TTLandingPageActivity.this.f15802m.isShown()) {
                    TTLandingPageActivity.this.f15802m.setProgress(i);
                } else {
                    TTLandingPageActivity.this.f15802m.setVisibility(8);
                }
            }
        });
        this.f15792c.setDownloadListener(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.3
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
                if (TTLandingPageActivity.this.f15809t != null) {
                    TTLandingPageActivity.this.f15809t.mo39091e();
                }
            }
        });
        TextView textView = this.f15795f;
        if (textView != null) {
            String str = stringExtra2;
            if (TextUtils.isEmpty(stringExtra2)) {
                str = C5486x.m32071a(this, "tt_web_title_default");
            }
            textView.setText(str);
        }
        m35882b();
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
        C4804z.m33900a(this.f15796g, this.f15792c);
        C4804z.m33899a(this.f15792c);
        this.f15792c = null;
        C4754w c4754w = this.f15805p;
        if (c4754w != null) {
            c4754w.m34105h();
        }
        C4822k c4822k = this.f15791a;
        if (c4822k != null) {
            c4822k.m33811d();
        }
        if (!TextUtils.isEmpty(this.f15813x)) {
            C4811e.C4812a.m33859a(this.f15789A, this.f15815z, this.f15808s);
        }
        C4863a.m33717a().m33716a(this.f15814y);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        C4651t.m34621a().m34614b(true);
        C4754w c4754w = this.f15805p;
        if (c4754w != null) {
            c4754w.m34108g();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        C4754w c4754w = this.f15805p;
        if (c4754w != null) {
            c4754w.m34111f();
        }
        C4822k c4822k = this.f15791a;
        if (c4822k != null) {
            c4822k.m33814b();
        }
        m35871g();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        C4822k c4822k = this.f15791a;
        if (c4822k != null) {
            c4822k.m33812c();
        }
    }
}
