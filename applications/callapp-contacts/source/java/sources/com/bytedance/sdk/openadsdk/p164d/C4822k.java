package com.bytedance.sdk.openadsdk.p164d;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.video.p159b.C4671a;
import com.bytedance.sdk.openadsdk.utils.C5474p;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.d.k */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/k.class */
public class C4822k {

    /* renamed from: e */
    private String f17695e;

    /* renamed from: f */
    private String f17696f;

    /* renamed from: g */
    private final Context f17697g;

    /* renamed from: h */
    private final C4557i f17698h;

    /* renamed from: r */
    private WebView f17708r;

    /* renamed from: u */
    private C4833q f17711u;

    /* renamed from: a */
    private int f17691a = 1;

    /* renamed from: b */
    private boolean f17692b = false;

    /* renamed from: c */
    private AtomicBoolean f17693c = new AtomicBoolean(false);

    /* renamed from: d */
    private int f17694d = -1;

    /* renamed from: i */
    private String f17699i = "landingpage";

    /* renamed from: j */
    private long f17700j = 0;

    /* renamed from: k */
    private long f17701k = 0;

    /* renamed from: l */
    private long f17702l = 0;

    /* renamed from: m */
    private long f17703m = 0;

    /* renamed from: n */
    private long f17704n = 0;

    /* renamed from: o */
    private boolean f17705o = false;

    /* renamed from: p */
    private boolean f17706p = false;

    /* renamed from: q */
    private AtomicInteger f17707q = new AtomicInteger(0);

    /* renamed from: s */
    private boolean f17709s = false;

    /* renamed from: t */
    private String f17710t = "";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.d.k$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/k$a.class */
    public class C4824a {
        private C4824a() {
            C4822k.this = r4;
        }

        @JavascriptInterface
        public String getUrl() {
            return C4822k.this.f17710t;
        }

        @JavascriptInterface
        public void readPercent(String str) {
            int i = 0;
            try {
                int intValue = Float.valueOf(str).intValue();
                if (intValue > 100) {
                    i = 100;
                } else if (intValue >= 0) {
                    i = intValue;
                }
            } catch (Throwable th) {
            }
            C4822k.this.f17707q.set(i);
        }
    }

    public C4822k(Context context, C4557i c4557i, WebView webView) {
        this.f17697g = context;
        this.f17698h = c4557i;
        this.f17708r = webView;
        if (Build.VERSION.SDK_INT >= 19) {
            this.f17708r.addJavascriptInterface(new C4824a(), "JS_LANDING_PAGE_LOG_OBJ");
        }
    }

    /* renamed from: a */
    private void m33817a(String str, JSONObject jSONObject) {
        m33816a(str, jSONObject, -1L);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00df -> B:36:0x0067). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00ec -> B:29:0x008c). Please submit an issue!!! */
    /* renamed from: a */
    private void m33816a(String str, JSONObject jSONObject, long j) {
        if (this.f17709s && this.f17698h != null && !TextUtils.isEmpty(str)) {
            JSONObject jSONObject2 = null;
            if (jSONObject != null) {
                try {
                    jSONObject.put("is_playable", this.f17698h.m35137w() ? 1 : 0);
                    jSONObject.put("usecache", C4671a.m34591a().m34590a(this.f17698h) ? 1 : 0);
                } catch (JSONException e) {
                }
                try {
                    jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put("ad_extra_data", jSONObject.toString());
                        if (j > 0) {
                            jSONObject2.put(VastIconXmlManager.DURATION, j);
                        }
                    } catch (JSONException e2) {
                    }
                } catch (JSONException e3) {
                    jSONObject2 = null;
                }
            }
            C5478q.m32112b("LandingPageLog", "sendEvent: " + String.valueOf(this.f17699i) + ", " + String.valueOf(str) + ", ext=" + String.valueOf(jSONObject2));
            C4811e.m33867b(this.f17697g, this.f17698h, this.f17699i, str, jSONObject2);
        }
    }

    /* renamed from: a */
    public C4822k m33815a(boolean z) {
        this.f17709s = z;
        return this;
    }

    /* renamed from: a */
    public C4833q m33826a() {
        return this.f17711u;
    }

    /* renamed from: a */
    public void m33825a(WebView webView, int i) {
        C5478q.m32112b("LandingPageLog", "onWebProgress: ".concat(String.valueOf(i)));
        if (this.f17702l == 0 && i > 0) {
            this.f17702l = System.currentTimeMillis();
        } else if (this.f17703m != 0 || i != 100) {
        } else {
            this.f17703m = System.currentTimeMillis();
        }
    }

    /* renamed from: a */
    public void m33824a(WebView webView, int i, String str, String str2, String str3) {
        C5478q.m32112b("LandingPageLog", "onWebError: " + i + ", " + String.valueOf(str) + ", " + String.valueOf(str2));
        C4833q c4833q = this.f17711u;
        if (c4833q != null) {
            c4833q.m33748g();
        }
        if (!(str3 != null && str3.startsWith("image"))) {
            this.f17691a = 3;
        }
        this.f17694d = i;
        this.f17695e = str;
        this.f17696f = str2;
    }

    /* renamed from: a */
    public void m33823a(WebView webView, WebResourceRequest webResourceRequest) {
        if (webResourceRequest == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString())) {
        }
    }

    /* renamed from: a */
    public void m33822a(WebView webView, String str) {
        C5478q.m32112b("LandingPageLog", "onWebFinished: " + String.valueOf(str));
        C4833q c4833q = this.f17711u;
        if (c4833q != null) {
            c4833q.m33750f();
        }
        boolean z = true;
        if (webView != null && !this.f17705o && this.f17709s) {
            this.f17705o = true;
            C5474p.m32123a(webView, "javascript:\nfunction sendScroll(){\n   var totalH = document.body.scrollHeight || document.documentElement.scrollHeight;\n   var clientH = window.innerHeight || document.documentElement.clientHeight;\n   var scrollH = document.body.scrollTop || document.documentElement.scrollTop;\n   var validH = scrollH + clientH;\n   var result = (validH/totalH*100).toFixed(2);\n   console.log('LandingPageLogscroll status: (' + scrollH + '+' + clientH + ')/' + totalH + '=' + result);\n   window.JS_LANDING_PAGE_LOG_OBJ.readPercent(result);\n}\nsendScroll();\nwindow.addEventListener('scroll', function(e){\n    sendScroll();\n});");
        }
        if (this.f17693c.get()) {
            return;
        }
        if (this.f17691a != 3) {
            this.f17691a = 2;
        }
        this.f17693c.set(true);
        this.f17700j = System.currentTimeMillis();
        if (this.f17691a != 2) {
            z = false;
        }
        if (!z) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("error_code", this.f17694d);
                jSONObject.put("error_msg", this.f17695e);
                jSONObject.put("error_url", this.f17696f);
                jSONObject.putOpt("render_type", "h5");
                jSONObject.putOpt("render_type_2", 0);
            } catch (Exception e) {
            }
            m33817a("load_fail", jSONObject);
            return;
        }
        long j = this.f17703m;
        long j2 = this.f17702l;
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("error_code", this.f17694d);
            jSONObject2.put("error_msg", this.f17695e);
            jSONObject2.put("error_url", this.f17696f);
            jSONObject2.putOpt("render_type", "h5");
            jSONObject2.putOpt("render_type_2", 0);
        } catch (Exception e2) {
        }
        m33816a("load_finish", jSONObject2, j - j2);
    }

    /* renamed from: a */
    public void m33821a(WebView webView, String str, Bitmap bitmap) {
        C5478q.m32112b("LandingPageLog", "onWebStarted: " + String.valueOf(str));
        C4833q c4833q = this.f17711u;
        if (c4833q != null) {
            c4833q.m33752e();
        }
        if (!this.f17692b) {
            this.f17692b = true;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("render_type", "h5");
                jSONObject.putOpt("render_type_2", 0);
            } catch (Exception e) {
            }
            m33817a("load_start", jSONObject);
        }
    }

    /* renamed from: a */
    public void m33819a(C4833q c4833q) {
        this.f17711u = c4833q;
    }

    /* renamed from: a */
    public void m33818a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f17699i = str;
    }

    /* renamed from: b */
    public void m33814b() {
        C5478q.m32112b("LandingPageLog", "onResume");
        if (this.f17704n == 0) {
            this.f17704n = System.currentTimeMillis();
        }
        this.f17700j = System.currentTimeMillis();
    }

    /* renamed from: c */
    public void m33812c() {
        C5478q.m32112b("LandingPageLog", "onStop");
        if (!(this.f17691a == 2)) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        this.f17701k = currentTimeMillis;
        long j = this.f17700j;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("load_status", this.f17691a);
            jSONObject.put("max_scroll_percent", this.f17707q.get());
            jSONObject.putOpt("render_type", "h5");
            jSONObject.putOpt("render_type_2", 0);
        } catch (JSONException e) {
        }
        m33816a("stay_page", jSONObject, currentTimeMillis - j);
    }

    /* renamed from: d */
    public void m33811d() {
        C5478q.m32112b("LandingPageLog", "onDestroy");
        this.f17708r = null;
        if (!this.f17693c.get()) {
            C4811e.m33882a(this.f17697g, this.f17698h, this.f17699i, System.currentTimeMillis() - this.f17704n);
        }
    }
}
