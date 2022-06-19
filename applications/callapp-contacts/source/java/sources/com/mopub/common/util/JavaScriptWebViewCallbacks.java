package com.mopub.common.util;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/util/JavaScriptWebViewCallbacks.class */
public enum JavaScriptWebViewCallbacks {
    WEB_VIEW_DID_APPEAR("webviewDidAppear();"),
    WEB_VIEW_DID_CLOSE("webviewDidClose();");
    
    private String mJavascript;

    JavaScriptWebViewCallbacks(String str) {
        this.mJavascript = str;
    }

    public final String getJavascript() {
        return this.mJavascript;
    }

    public final String getUrl() {
        return "javascript:" + this.mJavascript;
    }
}
