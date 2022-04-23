package com.google.android.gms.internal.consent_sdk;

import android.os.Build;
import android.webkit.WebView;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bi.class */
public class bi {

    /* renamed from: a  reason: collision with root package name */
    private static Boolean f28758a;

    private bi() {
    }

    public static void a(WebView webView, String str) {
        if (Build.VERSION.SDK_INT < 19 || !a(webView)) {
            String valueOf = String.valueOf(str);
            webView.loadUrl(valueOf.length() != 0 ? "javascript:".concat(valueOf) : new String("javascript:"));
            return;
        }
        webView.evaluateJavascript(str, null);
    }

    private static boolean a(WebView webView) {
        boolean booleanValue;
        synchronized (bi.class) {
            try {
                if (f28758a == null) {
                    try {
                        webView.evaluateJavascript("(function(){})()", null);
                        f28758a = Boolean.TRUE;
                    } catch (IllegalStateException e) {
                        f28758a = Boolean.FALSE;
                    }
                }
                booleanValue = f28758a.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue;
    }
}
