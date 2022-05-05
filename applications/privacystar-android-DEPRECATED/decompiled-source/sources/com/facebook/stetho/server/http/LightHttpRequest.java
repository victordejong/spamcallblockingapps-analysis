package com.facebook.stetho.server.http;

import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/server/http/LightHttpRequest.class */
public class LightHttpRequest extends LightHttpMessage {
    public String method;
    public String protocol;
    public Uri uri;

    @Override // com.facebook.stetho.server.http.LightHttpMessage
    public void reset() {
        super.reset();
        this.method = null;
        this.uri = null;
        this.protocol = null;
    }
}
