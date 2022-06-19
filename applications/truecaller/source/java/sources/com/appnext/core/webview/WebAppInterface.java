package com.appnext.core.webview;

import android.content.Context;
import android.webkit.JavascriptInterface;
/* loaded from: classes-dex2jar.jar:com/appnext/core/webview/WebAppInterface.class */
public class WebAppInterface {
    public Context context;

    public WebAppInterface(Context context) {
        this.context = context;
    }

    @JavascriptInterface
    public void destroy() {
    }

    @JavascriptInterface
    public void destroy(String str) {
        new StringBuilder("destroy with error code: ").append(str);
    }

    @JavascriptInterface
    public String filterAds(String str) {
        new StringBuilder("filterAds: ").append(str);
        return str;
    }

    @JavascriptInterface
    public String getAdAt(int i) {
        new StringBuilder("getAdAt ").append(i);
        return "";
    }

    @JavascriptInterface
    public int getAdCount() {
        return 0;
    }

    @JavascriptInterface
    public void gotoAppWall() {
    }

    @JavascriptInterface
    public String init() {
        return "";
    }

    @JavascriptInterface
    public void jsError(String str) {
        new StringBuilder("jsError ").append(str);
    }

    @JavascriptInterface
    public String loadAds() {
        return "";
    }

    @JavascriptInterface
    public void logSTP(String str, String str2) {
        new StringBuilder("logSTP ").append(str);
    }

    @JavascriptInterface
    public void notifyImpression(String str) {
    }

    @JavascriptInterface
    public void openLink(String str) {
        new StringBuilder("openLink ").append(str);
    }

    @JavascriptInterface
    public void openResultPage(String str) {
        new StringBuilder("openResultPage ").append(str);
    }

    @JavascriptInterface
    public void openStore(String str) {
        new StringBuilder("openStore: ").append(str);
    }

    @JavascriptInterface
    public void play() {
    }

    @JavascriptInterface
    public void postView(String str) {
        new StringBuilder("postView: ").append(str);
    }

    @JavascriptInterface
    public void videoPlayed() {
    }
}
