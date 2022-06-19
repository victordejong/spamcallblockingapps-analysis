package com.google.android.gms.internal.consent_sdk;

import android.webkit.WebView;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzch.class */
public class zzch {
    private static Boolean zza;

    private zzch() {
    }

    public static void zza(WebView webView, String str) {
        if (zza(webView)) {
            webView.evaluateJavascript(str, null);
            return;
        }
        String valueOf = String.valueOf(str);
        webView.loadUrl(valueOf.length() != 0 ? "javascript:".concat(valueOf) : new String("javascript:"));
    }

    private static boolean zza(WebView webView) {
        boolean booleanValue;
        synchronized (zzch.class) {
            try {
                if (zza == null) {
                    try {
                        webView.evaluateJavascript("(function(){})()", null);
                        zza = Boolean.TRUE;
                    } catch (IllegalStateException e) {
                        zza = Boolean.FALSE;
                    }
                }
                booleanValue = zza.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue;
    }
}
