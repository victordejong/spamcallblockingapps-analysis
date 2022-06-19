package com.iab.omid.library.applovin.p060b;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import com.iab.omid.library.applovin.adsession.ErrorType;
import com.iab.omid.library.applovin.p062d.C1948c;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.applovin.b.e */
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/b/e.class */
public class C1936e {

    /* renamed from: a */
    private static C1936e f7175a = new C1936e();

    private C1936e() {
    }

    /* renamed from: a */
    public static final C1936e m4149a() {
        return f7175a;
    }

    /* renamed from: a */
    public void m4148a(WebView webView) {
        m4141a(webView, "finishSession", new Object[0]);
    }

    /* renamed from: a */
    public void m4147a(WebView webView, float f) {
        m4141a(webView, "setDeviceVolume", Float.valueOf(f));
    }

    /* renamed from: a */
    public void m4146a(WebView webView, ErrorType errorType, String str) {
        m4141a(webView, "error", errorType.toString(), str);
    }

    /* renamed from: a */
    public void m4144a(WebView webView, String str, String str2) {
        if (str == null || TextUtils.isEmpty(str2)) {
            return;
        }
        m4145a(webView, "(function() {this.omidVerificationProperties = this.omidVerificationProperties || {};this.omidVerificationProperties.injectionId = '%INJECTION_ID%';var script=document.createElement('script');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");document.body.appendChild(script);})();".replace("%SCRIPT_SRC%", str).replace("%INJECTION_ID%", str2));
    }

    /* renamed from: a */
    public void m4143a(WebView webView, String str, JSONObject jSONObject) {
        if (jSONObject != null) {
            m4141a(webView, "publishMediaEvent", str, jSONObject);
        } else {
            m4141a(webView, "publishMediaEvent", str);
        }
    }

    /* renamed from: a */
    public void m4142a(WebView webView, String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        m4141a(webView, "startSession", str, jSONObject, jSONObject2, jSONObject3);
    }

    /* renamed from: a */
    public void m4141a(WebView webView, String str, Object... objArr) {
        if (webView == null) {
            C1948c.m4089a("The WebView is null for " + str);
            return;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append("javascript: if(window.omidBridge!==undefined){omidBridge.");
        sb.append(str);
        sb.append("(");
        m4138a(sb, objArr);
        sb.append(")}");
        m4140a(webView, sb);
    }

    /* renamed from: a */
    public void m4140a(final WebView webView, StringBuilder sb) {
        final String sb2 = sb.toString();
        Handler handler = webView.getHandler();
        if (handler == null || Looper.myLooper() == handler.getLooper()) {
            webView.loadUrl(sb2);
        } else {
            handler.post(new Runnable() { // from class: com.iab.omid.library.applovin.b.e.1
                @Override // java.lang.Runnable
                public void run() {
                    webView.loadUrl(sb2);
                }
            });
        }
    }

    /* renamed from: a */
    public void m4139a(WebView webView, JSONObject jSONObject) {
        m4141a(webView, "init", jSONObject);
    }

    /* renamed from: a */
    public void m4138a(StringBuilder sb, Object[] objArr) {
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
    public boolean m4145a(WebView webView, String str) {
        if (webView == null || TextUtils.isEmpty(str)) {
            return false;
        }
        webView.loadUrl("javascript: " + str);
        return true;
    }

    /* renamed from: b */
    public void m4137b(WebView webView) {
        m4141a(webView, "publishImpressionEvent", new Object[0]);
    }

    /* renamed from: b */
    public void m4136b(WebView webView, String str) {
        m4141a(webView, "setNativeViewHierarchy", str);
    }

    /* renamed from: b */
    public void m4135b(WebView webView, JSONObject jSONObject) {
        m4141a(webView, "publishLoadedEvent", jSONObject);
    }

    /* renamed from: c */
    public void m4134c(WebView webView) {
        m4141a(webView, "publishLoadedEvent", new Object[0]);
    }

    /* renamed from: c */
    public void m4133c(WebView webView, String str) {
        m4141a(webView, "setState", str);
    }
}
