package com.mopub.common.util;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/util/JavaScriptWebViewCallbacks.class */
public enum JavaScriptWebViewCallbacks {
    WEB_VIEW_DID_APPEAR("webviewDidAppear();"),
    WEB_VIEW_DID_CLOSE("webviewDidClose();");
    

    /* renamed from: a */
    public String f8709a;

    JavaScriptWebViewCallbacks(String str) {
        this.f8709a = str;
    }

    public String getJavascript() {
        return this.f8709a;
    }

    public String getUrl() {
        StringBuilder m8728C = C22128a.m8728C("javascript:");
        m8728C.append(this.f8709a);
        return m8728C.toString();
    }
}
