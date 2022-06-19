package com.google.android.gms.internal.consent_sdk;

import android.annotation.TargetApi;
import android.webkit.WebView;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzce.class */
public final class zzce {
    private static Boolean zza;

    private zzce() {
    }

    @TargetApi(19)
    public static void zza(WebView webView, String str) {
        boolean booleanValue;
        synchronized (zzce.class) {
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
        if (booleanValue) {
            webView.evaluateJavascript(str, null);
            return;
        }
        String valueOf = String.valueOf(str);
        webView.loadUrl(valueOf.length() != 0 ? "javascript:".concat(valueOf) : new String("javascript:"));
    }
}
