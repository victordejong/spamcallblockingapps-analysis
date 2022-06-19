package com.lidroid.xutils.http.callback;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpRequestBase;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/callback/HttpRedirectHandler.class */
public interface HttpRedirectHandler {
    HttpRequestBase getDirectRequest(HttpResponse httpResponse);
}
