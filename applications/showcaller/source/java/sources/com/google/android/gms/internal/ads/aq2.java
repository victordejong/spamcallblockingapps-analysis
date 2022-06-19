package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/aq2.class */
public final class aq2 {

    /* renamed from: a */
    private static final aq2 f20084a = new aq2();

    private aq2() {
    }

    /* renamed from: a */
    public static aq2 m16505a() {
        return f20084a;
    }

    /* renamed from: b */
    public final void m16504b(WebView webView, JSONObject jSONObject) {
        m16499g(webView, "init", jSONObject);
    }

    /* renamed from: c */
    public final void m16503c(WebView webView, String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        m16499g(webView, "startSession", str, jSONObject, jSONObject2, jSONObject3);
    }

    /* renamed from: d */
    public final void m16502d(WebView webView) {
        m16499g(webView, "finishSession", new Object[0]);
    }

    /* renamed from: e */
    public final void m16501e(WebView webView, String str) {
        m16499g(webView, "setNativeViewHierarchy", str);
    }

    /* renamed from: f */
    public final void m16500f(WebView webView, float f) {
        m16499g(webView, "setDeviceVolume", Float.valueOf(f));
    }

    /* renamed from: g */
    public final void m16499g(WebView webView, String str, Object... objArr) {
        if (webView == null) {
            String concat = str.length() != 0 ? "The WebView is null for ".concat(str) : new String("The WebView is null for ");
            if (!gp2.f23438a.booleanValue() || TextUtils.isEmpty(concat)) {
                return;
            }
            Log.i("OMIDLIB", concat);
            return;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append("javascript: if(window.omidBridge!==undefined){omidBridge.");
        sb.append(str);
        sb.append("(");
        if (objArr.length > 0) {
            for (Object obj : objArr) {
                if (obj == null) {
                    sb.append("\"\"");
                } else if (obj instanceof String) {
                    String obj2 = obj.toString();
                    if (obj2.startsWith("{")) {
                        sb.append(obj2);
                    } else {
                        sb.append('\"');
                        sb.append(obj2);
                        sb.append('\"');
                    }
                } else {
                    sb.append(obj);
                }
                sb.append(",");
            }
            sb.setLength(sb.length() - 1);
        }
        sb.append(")}");
        String sb2 = sb.toString();
        Handler handler = webView.getHandler();
        if (handler == null || Looper.myLooper() == handler.getLooper()) {
            webView.loadUrl(sb2);
        } else {
            handler.post(new zp2(this, webView, sb2));
        }
    }
}
