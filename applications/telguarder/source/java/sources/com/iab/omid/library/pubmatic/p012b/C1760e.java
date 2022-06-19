package com.iab.omid.library.pubmatic.p012b;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import com.iab.omid.library.pubmatic.adsession.ErrorType;
import com.iab.omid.library.pubmatic.p014d.C1772c;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubmatic.b.e */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/b/e.class */
public class C1760e {

    /* renamed from: a */
    private static C1760e f244a = new C1760e();

    private C1760e() {
    }

    /* renamed from: a */
    public static C1760e m1285a() {
        return f244a;
    }

    /* renamed from: a */
    public void m1284a(WebView webView) {
        m1277a(webView, "finishSession", new Object[0]);
    }

    /* renamed from: a */
    public void m1283a(WebView webView, float f) {
        m1277a(webView, "setDeviceVolume", Float.valueOf(f));
    }

    /* renamed from: a */
    public void m1282a(WebView webView, ErrorType errorType, String str) {
        m1277a(webView, "error", errorType.toString(), str);
    }

    /* renamed from: a */
    public void m1280a(WebView webView, String str, String str2) {
        if (str == null || TextUtils.isEmpty(str2)) {
            return;
        }
        m1281a(webView, "(function() {this.omidVerificationProperties = this.omidVerificationProperties || {};this.omidVerificationProperties.injectionId = '%INJECTION_ID%';var script=document.createElement('script');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");document.body.appendChild(script);})();".replace("%SCRIPT_SRC%", str).replace("%INJECTION_ID%", str2));
    }

    /* renamed from: a */
    public void m1279a(WebView webView, String str, JSONObject jSONObject) {
        if (jSONObject != null) {
            m1277a(webView, "publishMediaEvent", str, jSONObject);
        } else {
            m1277a(webView, "publishMediaEvent", str);
        }
    }

    /* renamed from: a */
    public void m1278a(WebView webView, String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        m1277a(webView, "startSession", str, jSONObject, jSONObject2, jSONObject3);
    }

    /* renamed from: a */
    void m1277a(WebView webView, String str, Object... objArr) {
        if (webView == null) {
            C1772c.m1228a("The WebView is null for " + str);
            return;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append("javascript: if(window.omidBridge!==undefined){omidBridge.");
        sb.append(str);
        sb.append("(");
        m1274a(sb, objArr);
        sb.append(")}");
        m1276a(webView, sb);
    }

    /* renamed from: a */
    void m1276a(final WebView webView, StringBuilder sb) {
        final String sb2 = sb.toString();
        Handler handler = webView.getHandler();
        if (handler == null || Looper.myLooper() == handler.getLooper()) {
            webView.loadUrl(sb2);
        } else {
            handler.post(new Runnable() { // from class: com.iab.omid.library.pubmatic.b.e.1
                @Override // java.lang.Runnable
                public void run() {
                    webView.loadUrl(sb2);
                }
            });
        }
    }

    /* renamed from: a */
    public void m1275a(WebView webView, JSONObject jSONObject) {
        m1277a(webView, "init", jSONObject);
    }

    /* renamed from: a */
    void m1274a(StringBuilder sb, Object[] objArr) {
        if (objArr == null || objArr.length <= 0) {
            return;
        }
        for (Object obj : objArr) {
            if (obj == null) {
                sb.append('\"');
            } else {
                if (obj instanceof String) {
                    String obj2 = obj.toString();
                    if (obj2.startsWith("{")) {
                        sb.append(obj2);
                    } else {
                        sb.append('\"');
                        sb.append(obj2);
                    }
                } else {
                    sb.append(obj);
                }
                sb.append(",");
            }
            sb.append('\"');
            sb.append(",");
        }
        sb.setLength(sb.length() - 1);
    }

    /* renamed from: a */
    public boolean m1281a(WebView webView, String str) {
        if (webView == null || TextUtils.isEmpty(str)) {
            return false;
        }
        webView.loadUrl("javascript: " + str);
        return true;
    }

    /* renamed from: b */
    public void m1273b(WebView webView) {
        m1277a(webView, "publishImpressionEvent", new Object[0]);
    }

    /* renamed from: b */
    public void m1272b(WebView webView, String str) {
        m1277a(webView, "setNativeViewHierarchy", str);
    }

    /* renamed from: b */
    public void m1271b(WebView webView, JSONObject jSONObject) {
        m1277a(webView, "publishLoadedEvent", jSONObject);
    }

    /* renamed from: c */
    public void m1270c(WebView webView) {
        m1277a(webView, "publishLoadedEvent", new Object[0]);
    }

    /* renamed from: c */
    public void m1269c(WebView webView, String str) {
        m1277a(webView, "setState", str);
    }
}
