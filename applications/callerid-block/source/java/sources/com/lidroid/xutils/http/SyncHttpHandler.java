package com.lidroid.xutils.http;

import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.callback.DefaultHttpRedirectHandler;
import com.lidroid.xutils.http.callback.HttpRedirectHandler;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.protocol.HttpContext;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/SyncHttpHandler.class */
public class SyncHttpHandler {
    private String charset;
    private final AbstractHttpClient client;
    private final HttpContext context;
    private HttpRedirectHandler httpRedirectHandler;
    private String requestMethod;
    private String requestUrl;
    private int retriedTimes = 0;
    private long expiry = HttpCache.getDefaultExpiryTime();

    public SyncHttpHandler(AbstractHttpClient abstractHttpClient, HttpContext httpContext, String str) {
        this.client = abstractHttpClient;
        this.context = httpContext;
        this.charset = str;
    }

    private ResponseStream handleResponse(HttpResponse httpResponse) {
        if (httpResponse != null) {
            StatusLine statusLine = httpResponse.getStatusLine();
            int statusCode = statusLine.getStatusCode();
            if (statusCode < 300) {
                ResponseStream responseStream = new ResponseStream(httpResponse, this.charset, this.requestUrl, this.expiry);
                responseStream.setRequestMethod(this.requestMethod);
                return responseStream;
            } else if (statusCode != 301 && statusCode != 302) {
                if (statusCode != 416) {
                    throw new HttpException(statusCode, statusLine.getReasonPhrase());
                }
                throw new HttpException(statusCode, "maybe the file has downloaded completely");
            } else {
                if (this.httpRedirectHandler == null) {
                    this.httpRedirectHandler = new DefaultHttpRedirectHandler();
                }
                HttpRequestBase directRequest = this.httpRedirectHandler.getDirectRequest(httpResponse);
                if (directRequest == null) {
                    return null;
                }
                return sendRequest(directRequest);
            }
        }
        throw new HttpException("response is null");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00d1 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.lidroid.xutils.http.ResponseStream sendRequest(org.apache.http.client.methods.HttpRequestBase r6) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lidroid.xutils.http.SyncHttpHandler.sendRequest(org.apache.http.client.methods.HttpRequestBase):com.lidroid.xutils.http.ResponseStream");
    }

    public void setExpiry(long j) {
        this.expiry = j;
    }

    public void setHttpRedirectHandler(HttpRedirectHandler httpRedirectHandler) {
        this.httpRedirectHandler = httpRedirectHandler;
    }
}
