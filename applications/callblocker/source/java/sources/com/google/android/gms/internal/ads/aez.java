package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebView;
import com.google.android.gms.common.util.C2716m;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aez.class */
final class aez {
    @GuardedBy("InvokeJavascriptWorkaround.class")

    /* renamed from: a */
    private static Boolean f8091a;

    private aez() {
    }

    @TargetApi(19)
    /* renamed from: a */
    public static void m13413a(WebView webView, String str) {
        if (C2716m.m13837f() && m13414a(webView)) {
            webView.evaluateJavascript(str, null);
            return;
        }
        String valueOf = String.valueOf(str);
        webView.loadUrl(valueOf.length() != 0 ? "javascript:".concat(valueOf) : new String("javascript:"));
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0026 -> B:7:0x0019). Please submit an issue!!! */
    @TargetApi(19)
    /* renamed from: a */
    private static boolean m13414a(WebView webView) {
        boolean booleanValue;
        synchronized (aez.class) {
            try {
                if (f8091a == null) {
                    try {
                        webView.evaluateJavascript("(function(){})()", null);
                        f8091a = true;
                    } catch (IllegalStateException e) {
                        f8091a = false;
                    }
                }
                booleanValue = f8091a.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue;
    }
}
