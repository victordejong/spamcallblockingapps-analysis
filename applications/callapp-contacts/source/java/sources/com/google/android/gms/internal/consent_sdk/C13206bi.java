package com.google.android.gms.internal.consent_sdk;

import android.os.Build;
import android.webkit.WebView;
/* renamed from: com.google.android.gms.internal.consent_sdk.bi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bi.class */
public class C13206bi {

    /* renamed from: a */
    private static Boolean f50389a;

    private C13206bi() {
    }

    /* renamed from: a */
    public static void m13560a(WebView webView, String str) {
        if (Build.VERSION.SDK_INT >= 19 && m13561a(webView)) {
            webView.evaluateJavascript(str, null);
            return;
        }
        String valueOf = String.valueOf(str);
        webView.loadUrl(valueOf.length() != 0 ? "javascript:".concat(valueOf) : new String("javascript:"));
    }

    /* renamed from: a */
    private static boolean m13561a(WebView webView) {
        boolean booleanValue;
        synchronized (C13206bi.class) {
            try {
                if (f50389a == null) {
                    try {
                        webView.evaluateJavascript("(function(){})()", null);
                        f50389a = Boolean.TRUE;
                    } catch (IllegalStateException e) {
                        f50389a = Boolean.FALSE;
                    }
                }
                booleanValue = f50389a.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue;
    }
}
