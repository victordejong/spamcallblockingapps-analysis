package com.aotter.net.trek.util;

import android.annotation.TargetApi;
import android.os.Build;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import com.aotter.net.trek.common.util.Reflection;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/util/WebViews.class */
public class WebViews {
    @TargetApi(11)
    public static void onPause(@NonNull WebView webView, boolean z) {
        if (z) {
            webView.stopLoading();
            webView.loadUrl("");
        }
        if (Build.VERSION.SDK_INT >= 11) {
            webView.onPause();
            return;
        }
        try {
            new Reflection.MethodBuilder(webView, "onPause").setAccessible().execute();
        } catch (Exception e) {
        }
    }

    @TargetApi(11)
    public static void onResume(@NonNull WebView webView) {
        if (Build.VERSION.SDK_INT >= 11) {
            webView.onResume();
            return;
        }
        try {
            new Reflection.MethodBuilder(webView, "onResume").setAccessible().execute();
        } catch (Exception e) {
        }
    }

    public static void setDisableJSChromeClient(@NonNull WebView webView) {
        webView.setWebChromeClient(new C1767d());
    }
}
