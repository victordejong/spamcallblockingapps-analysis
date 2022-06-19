package com.iab.omid.library.mopub.p430b;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import com.iab.omid.library.mopub.p432d.C16381c;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.mopub.b.e */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/b/e.class */
public final class C16368e {

    /* renamed from: a */
    private static C16368e f57809a = new C16368e();

    private C16368e() {
    }

    /* renamed from: a */
    public static C16368e m7358a() {
        return f57809a;
    }

    /* renamed from: a */
    private void m7352a(final WebView webView, StringBuilder sb) {
        final String sb2 = sb.toString();
        Handler handler = webView.getHandler();
        if (handler == null || Looper.myLooper() == handler.getLooper()) {
            webView.loadUrl(sb2);
        } else {
            handler.post(new Runnable() { // from class: com.iab.omid.library.mopub.b.e.1
                @Override // java.lang.Runnable
                public final void run() {
                    webView.loadUrl(sb2);
                }
            });
        }
    }

    /* renamed from: a */
    private static void m7351a(StringBuilder sb, Object[] objArr) {
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
    public static boolean m7356a(WebView webView, String str) {
        if (webView == null || TextUtils.isEmpty(str)) {
            return false;
        }
        webView.loadUrl("javascript: ".concat(String.valueOf(str)));
        return true;
    }

    /* renamed from: a */
    public final void m7357a(WebView webView, float f) {
        m7353a(webView, "setDeviceVolume", Float.valueOf(f));
    }

    /* renamed from: a */
    public final void m7355a(WebView webView, String str, JSONObject jSONObject) {
        if (jSONObject != null) {
            m7353a(webView, "publishMediaEvent", str, jSONObject);
        } else {
            m7353a(webView, "publishMediaEvent", str);
        }
    }

    /* renamed from: a */
    public final void m7354a(WebView webView, String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        m7353a(webView, "startSession", str, jSONObject, jSONObject2, jSONObject3);
    }

    /* renamed from: a */
    public final void m7353a(WebView webView, String str, Object... objArr) {
        if (webView == null) {
            C16381c.m7328a("The WebView is null for ".concat(String.valueOf(str)));
            return;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append("javascript: if(window.omidBridge!==undefined){omidBridge.");
        sb.append(str);
        sb.append("(");
        m7351a(sb, objArr);
        sb.append(")}");
        m7352a(webView, sb);
    }

    /* renamed from: b */
    public final void m7350b(WebView webView, String str) {
        m7353a(webView, "setNativeViewHierarchy", str);
    }
}
