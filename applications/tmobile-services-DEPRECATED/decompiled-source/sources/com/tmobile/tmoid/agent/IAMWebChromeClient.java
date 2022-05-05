package com.tmobile.tmoid.agent;

import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.tmobile.tmoid.helperlib.util.Log;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/IAMWebChromeClient.class */
public class IAMWebChromeClient extends WebChromeClient {

    /* renamed from: a */
    ActivityInterface f14669a;

    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/IAMWebChromeClient$ActivityInterface.class */
    public interface ActivityInterface {
        /* renamed from: a */
        void mo5132a(int i);
    }

    public IAMWebChromeClient(ActivityInterface activityInterface) {
        this.f14669a = activityInterface;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        Log.m4648v("TMO-Agent", "JS CONSOLE: " + consoleMessage.sourceId() + "@" + consoleMessage.lineNumber() + ": " + consoleMessage.messageLevel() + ": " + consoleMessage.message());
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        this.f14669a.mo5132a(i);
    }
}
