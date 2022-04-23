package com.aotter.net.trek.util;

import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import androidx.annotation.NonNull;
/* renamed from: com.aotter.net.trek.util.d */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/util/d.class */
public final class C1767d extends WebChromeClient {
    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(@NonNull WebView webView, @NonNull String str, @NonNull String str2, @NonNull JsResult jsResult) {
        TrekLog.m36319d(str2);
        jsResult.confirm();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsBeforeUnload(@NonNull WebView webView, @NonNull String str, @NonNull String str2, @NonNull JsResult jsResult) {
        TrekLog.m36319d(str2);
        jsResult.confirm();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(@NonNull WebView webView, @NonNull String str, @NonNull String str2, @NonNull JsResult jsResult) {
        TrekLog.m36319d(str2);
        jsResult.confirm();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(@NonNull WebView webView, @NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull JsPromptResult jsPromptResult) {
        TrekLog.m36319d(str2);
        jsPromptResult.confirm();
        return true;
    }
}
