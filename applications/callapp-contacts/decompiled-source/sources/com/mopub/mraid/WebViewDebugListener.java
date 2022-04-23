package com.mopub.mraid;

import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
/* loaded from: classes4-dex2jar.jar:com/mopub/mraid/WebViewDebugListener.class */
public interface WebViewDebugListener {
    boolean onConsoleMessage(ConsoleMessage consoleMessage);

    boolean onJsAlert(String str, JsResult jsResult);
}
