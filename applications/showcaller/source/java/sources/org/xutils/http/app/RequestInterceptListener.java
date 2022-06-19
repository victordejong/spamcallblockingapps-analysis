package org.xutils.http.app;

import org.xutils.http.request.UriRequest;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/app/RequestInterceptListener.class */
public interface RequestInterceptListener {
    void afterRequest(UriRequest uriRequest);

    void beforeRequest(UriRequest uriRequest);
}
