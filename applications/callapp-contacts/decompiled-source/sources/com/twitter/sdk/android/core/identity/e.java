package com.twitter.sdk.android.core.identity;

import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/e.class */
final class e extends WebChromeClient {
    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        return true;
    }
}
