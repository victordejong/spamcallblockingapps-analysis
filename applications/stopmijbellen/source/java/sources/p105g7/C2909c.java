package p105g7;

import android.os.Handler;
import android.text.TextUtils;
import android.view.WindowManager;
import android.webkit.WebView;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
import p008a7.C0035b;
import p008a7.C0041h;
import p008a7.C0042i;
import p032c7.C0850c;
import p082e7.C2604a;
import p094f7.C2767b;
/* renamed from: g7.c */
/* loaded from: classes-dex2jar.jar:g7/c.class */
public class C2909c extends AbstractC2907a {

    /* renamed from: f */
    public WebView f9807f;

    /* renamed from: g */
    public Long f9808g = null;

    /* renamed from: h */
    public Map<String, C0041h> f9809h;

    /* renamed from: i */
    public final String f9810i;

    /* renamed from: g7.c$a */
    /* loaded from: classes-dex2jar.jar:g7/c$a.class */
    public class RunnableC2910a implements Runnable {

        /* renamed from: a */
        public WebView f9811a;

        public RunnableC2910a(C2909c c2909c) {
            this.f9811a = c2909c.f9807f;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f9811a.destroy();
        }
    }

    public C2909c(Map<String, C0041h> map, String str) {
        this.f9809h = map;
        this.f9810i = str;
    }

    @Override // p105g7.AbstractC2907a
    /* renamed from: a */
    public void mo2858a() {
        WebView webView = new WebView(C0850c.f3137b.f3138a);
        this.f9807f = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f9802a = new C2767b(this.f9807f);
        WebView webView2 = this.f9807f;
        String str = this.f9810i;
        if (webView2 != null && !TextUtils.isEmpty(str)) {
            webView2.loadUrl("javascript: " + str);
        }
        for (String str2 : this.f9809h.keySet()) {
            String externalForm = this.f9809h.get(str2).f85b.toExternalForm();
            WebView webView3 = this.f9807f;
            if (externalForm != null && !TextUtils.isEmpty(str2)) {
                String replace = "(function() {this.omidVerificationProperties = this.omidVerificationProperties || {};this.omidVerificationProperties.injectionId = '%INJECTION_ID%';var script=document.createElement('script');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");document.body.appendChild(script);})();".replace("%SCRIPT_SRC%", externalForm).replace("%INJECTION_ID%", str2);
                if (webView3 != null && !TextUtils.isEmpty(replace)) {
                    webView3.loadUrl("javascript: " + replace);
                }
            }
        }
        this.f9808g = Long.valueOf(System.nanoTime());
    }

    @Override // p105g7.AbstractC2907a
    /* renamed from: c */
    public void mo2857c(C0042i c0042i, C0035b c0035b) {
        JSONObject jSONObject = new JSONObject();
        Map unmodifiableMap = Collections.unmodifiableMap(c0035b.f57d);
        for (String str : unmodifiableMap.keySet()) {
            C0041h c0041h = (C0041h) unmodifiableMap.get(str);
            WindowManager windowManager = C2604a.f9034a;
            try {
                jSONObject.put(str, c0041h);
            } catch (JSONException e) {
            }
        }
        m2860d(c0042i, c0035b, jSONObject);
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    @Override // p105g7.AbstractC2907a
    /* renamed from: e */
    public void mo2856e() {
        this.f9802a.clear();
        new Handler().postDelayed(new RunnableC2910a(this), Math.max(4000 - (this.f9808g == null ? (char) 4000 : TimeUnit.MILLISECONDS.convert(System.nanoTime() - this.f9808g.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.f9807f = null;
    }
}
