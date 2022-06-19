package org.xutils.http.app;

import javax.net.ssl.SSLSocketFactory;
import org.xutils.http.RequestParams;
import org.xutils.http.annotation.HttpRequest;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/app/ParamsBuilder.class */
public interface ParamsBuilder {
    String buildCacheKey(RequestParams requestParams, String[] strArr);

    void buildParams(RequestParams requestParams);

    void buildSign(RequestParams requestParams, String[] strArr);

    String buildUri(RequestParams requestParams, HttpRequest httpRequest);

    SSLSocketFactory getSSLSocketFactory();
}
