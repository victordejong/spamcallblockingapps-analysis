package com.iab.omid.library.verizonmedia.p448b;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import com.iab.omid.library.verizonmedia.p450d.C16513c;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.verizonmedia.b.e */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/b/e.class */
public final class C16500e {

    /* renamed from: a */
    private static C16500e f58070a = new C16500e();

    private C16500e() {
    }

    /* renamed from: a */
    public static C16500e m7136a() {
        return f58070a;
    }

    /* renamed from: a */
    private void m7130a(final WebView webView, StringBuilder sb) {
        final String sb2 = sb.toString();
        Handler handler = webView.getHandler();
        if (handler == null || Looper.myLooper() == handler.getLooper()) {
            webView.loadUrl(sb2);
        } else {
            handler.post(new Runnable() { // from class: com.iab.omid.library.verizonmedia.b.e.1
                @Override // java.lang.Runnable
                public final void run() {
                    webView.loadUrl(sb2);
                }
            });
        }
    }

    /* renamed from: a */
    private static void m7129a(StringBuilder sb, Object[] objArr) {
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
    public static boolean m7134a(WebView webView, String str) {
        if (webView == null || TextUtils.isEmpty(str)) {
            return false;
        }
        webView.loadUrl("javascript: ".concat(String.valueOf(str)));
        return true;
    }

    /* renamed from: a */
    public final void m7135a(WebView webView, float f) {
        m7131a(webView, "setDeviceVolume", Float.valueOf(f));
    }

    /* renamed from: a */
    public final void m7133a(WebView webView, String str, JSONObject jSONObject) {
        if (jSONObject != null) {
            m7131a(webView, "publishMediaEvent", str, jSONObject);
        } else {
            m7131a(webView, "publishMediaEvent", str);
        }
    }

    /* renamed from: a */
    public final void m7132a(WebView webView, String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        m7131a(webView, "startSession", str, jSONObject, jSONObject2, jSONObject3);
    }

    /* renamed from: a */
    public final void m7131a(WebView webView, String str, Object... objArr) {
        if (webView == null) {
            C16513c.m7105a("The WebView is null for ".concat(String.valueOf(str)));
            return;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append("javascript: if(window.omidBridge!==undefined){omidBridge.");
        sb.append(str);
        sb.append("(");
        m7129a(sb, objArr);
        sb.append(")}");
        m7130a(webView, sb);
    }

    /* renamed from: b */
    public final void m7128b(WebView webView, String str) {
        m7131a(webView, "setNativeViewHierarchy", str);
    }
}
