package com.lidroid.xutils.http.callback;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpRequestBase;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/callback/DefaultHttpRedirectHandler.class */
public class DefaultHttpRedirectHandler implements HttpRedirectHandler {
    @Override // com.lidroid.xutils.http.callback.HttpRedirectHandler
    public HttpRequestBase getDirectRequest(HttpResponse httpResponse) {
        if (httpResponse.containsHeader("Location")) {
            HttpGet httpGet = new HttpGet(httpResponse.getFirstHeader("Location").getValue());
            if (httpResponse.containsHeader("Set-Cookie")) {
                httpGet.addHeader("Cookie", httpResponse.getFirstHeader("Set-Cookie").getValue());
            }
            return httpGet;
        }
        return null;
    }
}
