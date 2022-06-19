package com.iab.omid.library.pubnativenet.p439b;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import com.iab.omid.library.pubnativenet.p441d.C16447c;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubnativenet.b.e */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/b/e.class */
public final class C16434e {

    /* renamed from: a */
    private static C16434e f57938a = new C16434e();

    private C16434e() {
    }

    /* renamed from: a */
    public static final C16434e m7257a() {
        return f57938a;
    }

    /* renamed from: a */
    private void m7251a(final WebView webView, StringBuilder sb) {
        final String sb2 = sb.toString();
        Handler handler = webView.getHandler();
        if (handler == null || Looper.myLooper() == handler.getLooper()) {
            webView.loadUrl(sb2);
        } else {
            handler.post(new Runnable() { // from class: com.iab.omid.library.pubnativenet.b.e.1
                @Override // java.lang.Runnable
                public final void run() {
                    webView.loadUrl(sb2);
                }
            });
        }
    }

    /* renamed from: a */
    private static void m7250a(StringBuilder sb, Object[] objArr) {
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
    public static boolean m7255a(WebView webView, String str) {
        if (webView == null || TextUtils.isEmpty(str)) {
            return false;
        }
        webView.loadUrl("javascript: ".concat(String.valueOf(str)));
        return true;
    }

    /* renamed from: a */
    public final void m7256a(WebView webView, float f) {
        m7252a(webView, "setDeviceVolume", Float.valueOf(f));
    }

    /* renamed from: a */
    public final void m7254a(WebView webView, String str, JSONObject jSONObject) {
        if (jSONObject != null) {
            m7252a(webView, "publishMediaEvent", str, jSONObject);
        } else {
            m7252a(webView, "publishMediaEvent", str);
        }
    }

    /* renamed from: a */
    public final void m7253a(WebView webView, String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        m7252a(webView, "startSession", str, jSONObject, jSONObject2, jSONObject3);
    }

    /* renamed from: a */
    public final void m7252a(WebView webView, String str, Object... objArr) {
        if (webView == null) {
            C16447c.m7226a("The WebView is null for ".concat(String.valueOf(str)));
            return;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append("javascript: if(window.omidBridge!==undefined){omidBridge.");
        sb.append(str);
        sb.append("(");
        m7250a(sb, objArr);
        sb.append(")}");
        m7251a(webView, sb);
    }

    /* renamed from: b */
    public final void m7249b(WebView webView, String str) {
        m7252a(webView, "setNativeViewHierarchy", str);
    }

    /* renamed from: c */
    public final void m7248c(WebView webView, String str) {
        m7252a(webView, "setState", str);
    }
}
