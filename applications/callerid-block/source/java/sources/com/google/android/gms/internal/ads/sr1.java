package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sr1.class */
public final class sr1 {

    /* renamed from: a */
    private static final sr1 f8550a = new sr1();

    private sr1() {
    }

    /* renamed from: a */
    public static sr1 m5623a() {
        return f8550a;
    }

    /* renamed from: b */
    public final void m5622b(WebView webView, JSONObject jSONObject) {
        m5617g(webView, "init", jSONObject);
    }

    /* renamed from: c */
    public final void m5621c(WebView webView, String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        m5617g(webView, "startSession", str, jSONObject, jSONObject2, jSONObject3);
    }

    /* renamed from: d */
    public final void m5620d(WebView webView) {
        m5617g(webView, "finishSession", new Object[0]);
    }

    /* renamed from: e */
    public final void m5619e(WebView webView, String str) {
        m5617g(webView, "setNativeViewHierarchy", str);
    }

    /* renamed from: f */
    public final void m5618f(WebView webView, float f) {
        m5617g(webView, "setDeviceVolume", Float.valueOf(f));
    }

    /* renamed from: g */
    public final void m5617g(WebView webView, String str, Object... objArr) {
        String obj;
        if (webView == null) {
            String concat = str.length() != 0 ? "The WebView is null for ".concat(str) : new String("The WebView is null for ");
            if (!yq1.f9240a.booleanValue() || TextUtils.isEmpty(concat)) {
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
            for (Object obj2 : objArr) {
                if (obj2 == null) {
                    obj = "\"\"";
                } else {
                    if (obj2 instanceof String) {
                        obj = obj2.toString();
                        if (!obj.startsWith("{")) {
                            sb.append('\"');
                            sb.append(obj);
                            sb.append('\"');
                        }
                    } else {
                        sb.append(obj2);
                    }
                    sb.append(",");
                }
                sb.append(obj);
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
            handler.post(new rr1(this, webView, sb2));
        }
    }
}
