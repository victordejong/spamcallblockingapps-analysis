package com.mopub.mraid;

import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import com.mopub.common.VisibleForTesting;
@VisibleForTesting
/* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidWebViewDebugListener.class */
public interface MraidWebViewDebugListener {
    boolean onConsoleMessage(ConsoleMessage consoleMessage);

    boolean onJsAlert(String str, JsResult jsResult);
}
