package com.mopub.common.util;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/util/JavaScriptWebViewCallbacks.class */
public enum JavaScriptWebViewCallbacks {
    WEB_VIEW_DID_APPEAR("webviewDidAppear();"),
    WEB_VIEW_DID_CLOSE("webviewDidClose();");
    

    /* renamed from: a */
    public String f4522a;

    JavaScriptWebViewCallbacks(String str) {
        this.f4522a = str;
    }

    public String getJavascript() {
        return this.f4522a;
    }

    public String getUrl() {
        return "javascript:" + this.f4522a;
    }
}
