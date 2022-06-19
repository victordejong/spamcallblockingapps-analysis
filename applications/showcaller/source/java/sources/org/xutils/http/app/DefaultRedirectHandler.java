package org.xutils.http.app;

import android.text.TextUtils;
import android.webkit.URLUtil;
import com.yanzhenjie.nohttp.Headers;
import org.xutils.http.HttpMethod;
import org.xutils.http.RequestParams;
import org.xutils.http.request.HttpRequest;
import org.xutils.http.request.UriRequest;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/app/DefaultRedirectHandler.class */
public class DefaultRedirectHandler implements RedirectHandler {
    @Override // org.xutils.http.app.RedirectHandler
    public RequestParams getRedirectParams(UriRequest uriRequest) {
        String str;
        if (uriRequest instanceof HttpRequest) {
            HttpRequest httpRequest = (HttpRequest) uriRequest;
            RequestParams params = httpRequest.getParams();
            String responseHeader = httpRequest.getResponseHeader(Headers.HEAD_KEY_LOCATION);
            if (TextUtils.isEmpty(responseHeader)) {
                return null;
            }
            String str2 = responseHeader;
            if (!URLUtil.isHttpsUrl(responseHeader)) {
                str2 = responseHeader;
                if (!URLUtil.isHttpUrl(responseHeader)) {
                    String uri = params.getUri();
                    if (responseHeader.startsWith("/")) {
                        int indexOf = uri.indexOf("/", 8);
                        str = uri;
                        if (indexOf != -1) {
                            str = uri.substring(0, indexOf);
                        }
                    } else {
                        int lastIndexOf = uri.lastIndexOf("/");
                        if (lastIndexOf >= 8) {
                            str = uri.substring(0, lastIndexOf + 1);
                        } else {
                            str = uri + "/";
                        }
                    }
                    str2 = str + responseHeader;
                }
            }
            params.setUri(str2);
            int responseCode = uriRequest.getResponseCode();
            if (responseCode == 301 || responseCode == 302 || responseCode == 303) {
                params.clearParams();
                params.setMethod(HttpMethod.GET);
            }
            return params;
        }
        return null;
    }
}
