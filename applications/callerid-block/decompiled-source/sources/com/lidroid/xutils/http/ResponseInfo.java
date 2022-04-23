package com.lidroid.xutils.http;

import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolVersion;
import org.apache.http.StatusLine;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/ResponseInfo.class */
public final class ResponseInfo<T> {
    public final Header contentEncoding;
    public final long contentLength;
    public final Header contentType;
    public final Locale locale;
    public final ProtocolVersion protocolVersion;
    public final String reasonPhrase;
    private final HttpResponse response;
    public T result;
    public final boolean resultFormCache;
    public final int statusCode;

    public ResponseInfo(HttpResponse httpResponse, T t, boolean z) {
        this.response = httpResponse;
        this.result = t;
        this.resultFormCache = z;
        if (httpResponse != null) {
            this.locale = httpResponse.getLocale();
            StatusLine statusLine = httpResponse.getStatusLine();
            if (statusLine != null) {
                this.statusCode = statusLine.getStatusCode();
                this.protocolVersion = statusLine.getProtocolVersion();
                this.reasonPhrase = statusLine.getReasonPhrase();
            } else {
                this.statusCode = 0;
                this.protocolVersion = null;
                this.reasonPhrase = null;
            }
            HttpEntity entity = httpResponse.getEntity();
            if (entity != null) {
                this.contentLength = entity.getContentLength();
                this.contentType = entity.getContentType();
                this.contentEncoding = entity.getContentEncoding();
                return;
            }
        } else {
            this.locale = null;
            this.statusCode = 0;
            this.protocolVersion = null;
            this.reasonPhrase = null;
        }
        this.contentLength = 0L;
        this.contentType = null;
        this.contentEncoding = null;
    }

    public Header[] getAllHeaders() {
        HttpResponse httpResponse = this.response;
        if (httpResponse == null) {
            return null;
        }
        return httpResponse.getAllHeaders();
    }

    public Header getFirstHeader(String str) {
        HttpResponse httpResponse = this.response;
        if (httpResponse == null) {
            return null;
        }
        return httpResponse.getFirstHeader(str);
    }

    public Header[] getHeaders(String str) {
        HttpResponse httpResponse = this.response;
        if (httpResponse == null) {
            return null;
        }
        return httpResponse.getHeaders(str);
    }

    public Header getLastHeader(String str) {
        HttpResponse httpResponse = this.response;
        if (httpResponse == null) {
            return null;
        }
        return httpResponse.getLastHeader(str);
    }
}
