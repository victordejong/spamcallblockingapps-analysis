package com.bytedance.sdk.openadsdk.d;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.utils.p;
import com.bytedance.sdk.openadsdk.utils.q;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/k.class */
public class k {
    private String e;
    private String f;
    private final Context g;
    private final i h;
    private WebView r;
    private q u;

    /* renamed from: a  reason: collision with root package name */
    private int f9418a = 1;

    /* renamed from: b  reason: collision with root package name */
    private boolean f9419b = false;

    /* renamed from: c  reason: collision with root package name */
    private AtomicBoolean f9420c = new AtomicBoolean(false);

    /* renamed from: d  reason: collision with root package name */
    private int f9421d = -1;
    private String i = "landingpage";
    private long j = 0;
    private long k = 0;
    private long l = 0;
    private long m = 0;
    private long n = 0;
    private boolean o = false;
    private boolean p = false;
    private AtomicInteger q = new AtomicInteger(0);
    private boolean s = false;
    private String t = "";

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/k$a.class */
    class a {
        private a() {
        }

        @JavascriptInterface
        public String getUrl() {
            return k.this.t;
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
            k.this.q.set(i);
        }
    }

    public k(Context context, i iVar, WebView webView) {
        this.g = context;
        this.h = iVar;
        this.r = webView;
        if (Build.VERSION.SDK_INT >= 19) {
            this.r.addJavascriptInterface(new a(), "JS_LANDING_PAGE_LOG_OBJ");
        }
    }

    private void a(String str, JSONObject jSONObject) {
        a(str, jSONObject, -1L);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00df -> B:36:0x0067). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00ec -> B:29:0x008c). Please submit an issue!!! */
    private void a(String str, JSONObject jSONObject, long j) {
        if (this.s && this.h != null && !TextUtils.isEmpty(str)) {
            JSONObject jSONObject2 = null;
            if (jSONObject != null) {
                try {
                    int i = 1;
                    jSONObject.put("is_playable", this.h.w() ? 1 : 0);
                    if (!com.bytedance.sdk.openadsdk.core.video.b.a.a().a(this.h)) {
                        i = 0;
                    }
                    jSONObject.put("usecache", i);
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
            q.b("LandingPageLog", "sendEvent: " + String.valueOf(this.i) + ", " + String.valueOf(str) + ", ext=" + String.valueOf(jSONObject2));
            e.b(this.g, this.h, this.i, str, jSONObject2);
        }
    }

    public k a(boolean z) {
        this.s = z;
        return this;
    }

    public q a() {
        return this.u;
    }

    public void a(WebView webView, int i) {
        q.b("LandingPageLog", "onWebProgress: ".concat(String.valueOf(i)));
        if (this.l == 0 && i > 0) {
            this.l = System.currentTimeMillis();
        } else if (this.m == 0 && i == 100) {
            this.m = System.currentTimeMillis();
        }
    }

    public void a(WebView webView, int i, String str, String str2, String str3) {
        q.b("LandingPageLog", "onWebError: " + i + ", " + String.valueOf(str) + ", " + String.valueOf(str2));
        q qVar = this.u;
        if (qVar != null) {
            qVar.g();
        }
        if (!(str3 != null && str3.startsWith("image"))) {
            this.f9418a = 3;
        }
        this.f9421d = i;
        this.e = str;
        this.f = str2;
    }

    public void a(WebView webView, WebResourceRequest webResourceRequest) {
        if (webResourceRequest == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString())) {
        }
    }

    public void a(WebView webView, String str) {
        q.b("LandingPageLog", "onWebFinished: " + String.valueOf(str));
        q qVar = this.u;
        if (qVar != null) {
            qVar.f();
        }
        boolean z = true;
        if (webView != null && !this.o && this.s) {
            this.o = true;
            p.a(webView, "javascript:\nfunction sendScroll(){\n   var totalH = document.body.scrollHeight || document.documentElement.scrollHeight;\n   var clientH = window.innerHeight || document.documentElement.clientHeight;\n   var scrollH = document.body.scrollTop || document.documentElement.scrollTop;\n   var validH = scrollH + clientH;\n   var result = (validH/totalH*100).toFixed(2);\n   console.log('LandingPageLogscroll status: (' + scrollH + '+' + clientH + ')/' + totalH + '=' + result);\n   window.JS_LANDING_PAGE_LOG_OBJ.readPercent(result);\n}\nsendScroll();\nwindow.addEventListener('scroll', function(e){\n    sendScroll();\n});");
        }
        if (!this.f9420c.get()) {
            if (this.f9418a != 3) {
                this.f9418a = 2;
            }
            this.f9420c.set(true);
            this.j = System.currentTimeMillis();
            if (this.f9418a != 2) {
                z = false;
            }
            if (z) {
                long j = this.m;
                long j2 = this.l;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("error_code", this.f9421d);
                    jSONObject.put("error_msg", this.e);
                    jSONObject.put("error_url", this.f);
                    jSONObject.putOpt("render_type", "h5");
                    jSONObject.putOpt("render_type_2", 0);
                } catch (Exception e) {
                }
                a("load_finish", jSONObject, j - j2);
                return;
            }
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("error_code", this.f9421d);
                jSONObject2.put("error_msg", this.e);
                jSONObject2.put("error_url", this.f);
                jSONObject2.putOpt("render_type", "h5");
                jSONObject2.putOpt("render_type_2", 0);
            } catch (Exception e2) {
            }
            a("load_fail", jSONObject2);
        }
    }

    public void a(WebView webView, String str, Bitmap bitmap) {
        q.b("LandingPageLog", "onWebStarted: " + String.valueOf(str));
        q qVar = this.u;
        if (qVar != null) {
            qVar.e();
        }
        if (!this.f9419b) {
            this.f9419b = true;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("render_type", "h5");
                jSONObject.putOpt("render_type_2", 0);
            } catch (Exception e) {
            }
            a("load_start", jSONObject);
        }
    }

    public void a(q qVar) {
        this.u = qVar;
    }

    public void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.i = str;
        }
    }

    public void b() {
        q.b("LandingPageLog", "onResume");
        if (this.n == 0) {
            this.n = System.currentTimeMillis();
        }
        this.j = System.currentTimeMillis();
    }

    public void c() {
        q.b("LandingPageLog", "onStop");
        if (this.f9418a == 2) {
            long currentTimeMillis = System.currentTimeMillis();
            this.k = currentTimeMillis;
            long j = this.j;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("load_status", this.f9418a);
                jSONObject.put("max_scroll_percent", this.q.get());
                jSONObject.putOpt("render_type", "h5");
                jSONObject.putOpt("render_type_2", 0);
            } catch (JSONException e) {
            }
            a("stay_page", jSONObject, currentTimeMillis - j);
        }
    }

    public void d() {
        q.b("LandingPageLog", "onDestroy");
        this.r = null;
        if (!this.f9420c.get()) {
            e.a(this.g, this.h, this.i, System.currentTimeMillis() - this.n);
        }
    }
}
