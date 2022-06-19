package com.iab.omid.library.mopub.p125b;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.text.TextUtils;
import android.webkit.WebView;
import com.iab.omid.library.mopub.adsession.ErrorType;
import com.iab.omid.library.mopub.p127d.C2616c;
import com.razorpay.AnalyticsConstants;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.mopub.b.e */
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/b/e.class */
public class C2607e {

    /* renamed from: a */
    private static C2607e f8359a = new C2607e();

    private C2607e() {
    }

    /* renamed from: a */
    public static C2607e m36452a() {
        return f8359a;
    }

    /* renamed from: a */
    public void m36451a(WebView webView) {
        m36444a(webView, "finishSession", new Object[0]);
    }

    /* renamed from: a */
    public void m36450a(WebView webView, float f) {
        m36444a(webView, "setDeviceVolume", Float.valueOf(f));
    }

    /* renamed from: a */
    public void m36449a(WebView webView, ErrorType errorType, String str) {
        m36444a(webView, "error", errorType.toString(), str);
    }

    /* renamed from: a */
    public void m36447a(WebView webView, String str, String str2) {
        if (str == null || TextUtils.isEmpty(str2)) {
            return;
        }
        m36448a(webView, "(function() {this.omidVerificationProperties = this.omidVerificationProperties || {};this.omidVerificationProperties.injectionId = '%INJECTION_ID%';var script=document.createElement('script');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");document.body.appendChild(script);})();".replace("%SCRIPT_SRC%", str).replace("%INJECTION_ID%", str2));
    }

    /* renamed from: a */
    public void m36446a(WebView webView, String str, JSONObject jSONObject) {
        if (jSONObject != null) {
            m36444a(webView, "publishMediaEvent", str, jSONObject);
        } else {
            m36444a(webView, "publishMediaEvent", str);
        }
    }

    /* renamed from: a */
    public void m36445a(WebView webView, String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        m36444a(webView, "startSession", str, jSONObject, jSONObject2, jSONObject3);
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m36444a(WebView webView, String str, Object... objArr) {
        if (webView == null) {
            C2616c.m36404a("The WebView is null for " + str);
            return;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append("javascript: if(window.omidBridge!==undefined){omidBridge.");
        sb.append(str);
        sb.append("(");
        m36441a(sb, objArr);
        sb.append(")}");
        m36443a(webView, sb);
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m36443a(final WebView webView, StringBuilder sb) {
        final String sb2 = sb.toString();
        Handler handler = webView.getHandler();
        if (handler == null || Looper.myLooper() == handler.getLooper()) {
            webView.loadUrl(sb2);
        } else {
            handler.post(new Runnable() { // from class: com.iab.omid.library.mopub.b.e.1
                @Override // java.lang.Runnable
                public void run() {
                    webView.loadUrl(sb2);
                }
            });
        }
    }

    /* renamed from: a */
    public void m36442a(WebView webView, JSONObject jSONObject) {
        m36444a(webView, AnalyticsConstants.INIT, jSONObject);
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m36441a(StringBuilder sb, Object[] objArr) {
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
    public boolean m36448a(WebView webView, String str) {
        if (webView == null || TextUtils.isEmpty(str)) {
            return false;
        }
        webView.loadUrl("javascript: " + str);
        return true;
    }

    /* renamed from: b */
    public void m36440b(WebView webView) {
        m36444a(webView, "publishImpressionEvent", new Object[0]);
    }

    /* renamed from: b */
    public void m36439b(WebView webView, String str) {
        m36444a(webView, "setNativeViewHierarchy", str);
    }

    /* renamed from: b */
    public void m36438b(WebView webView, @NonNull JSONObject jSONObject) {
        m36444a(webView, "publishLoadedEvent", jSONObject);
    }

    /* renamed from: c */
    public void m36437c(WebView webView) {
        m36444a(webView, "publishLoadedEvent", new Object[0]);
    }

    /* renamed from: c */
    public void m36436c(WebView webView, String str) {
        m36444a(webView, "setState", str);
    }
}
