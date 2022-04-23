package p131c.p135b.p136a.p138b;

import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
/* renamed from: c.b.a.b.c */
/* loaded from: classes-dex2jar.jar:c/b/a/b/c.class */
public class C2069c extends WebChromeClient {

    /* renamed from: a */
    public final C2374t f8028a;

    public C2069c(C2341l lVar) {
        this.f8028a = lVar.m30262d0();
    }

    @Override // android.webkit.WebChromeClient
    public void onConsoleMessage(String str, int i, String str2) {
        C2374t tVar = this.f8028a;
        tVar.m30040d("AdWebView", "console.log[" + i + "] :" + str);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        this.f8028a.m30044b("AdWebView", consoleMessage.sourceId() + ": " + consoleMessage.lineNumber() + ": " + consoleMessage.message());
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        C2374t tVar = this.f8028a;
        tVar.m30040d("AdWebView", "Alert attempted: " + str2);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        C2374t tVar = this.f8028a;
        tVar.m30040d("AdWebView", "JS onBeforeUnload attempted: " + str2);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        C2374t tVar = this.f8028a;
        tVar.m30040d("AdWebView", "JS confirm attempted: " + str2);
        return true;
    }
}
