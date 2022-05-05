package com.amazonaws.http;

import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPInputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/http/HttpResponse.class */
public class HttpResponse {
    public InputStream content;
    public final Map<String, String> headers;
    public final InputStream rawContent;
    public final int statusCode;
    public final String statusText;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/http/HttpResponse$Builder.class */
    public static class Builder {
        public InputStream content;
        public final Map<String, String> headers = new HashMap();
        public int statusCode;
        public String statusText;

        public HttpResponse build() {
            return new HttpResponse(this.statusText, this.statusCode, Collections.unmodifiableMap(this.headers), this.content);
        }

        public Builder content(InputStream inputStream) {
            this.content = inputStream;
            return this;
        }

        public Builder header(String str, String str2) {
            this.headers.put(str, str2);
            return this;
        }

        public Builder statusCode(int i) {
            this.statusCode = i;
            return this;
        }

        public Builder statusText(String str) {
            this.statusText = str;
            return this;
        }
    }

    public HttpResponse(String str, int i, Map<String, String> map, InputStream inputStream) {
        this.statusText = str;
        this.statusCode = i;
        this.headers = map;
        this.rawContent = inputStream;
    }

    public static Builder builder() {
        return new Builder();
    }

    public InputStream getContent() throws IOException {
        if (this.content == null) {
            synchronized (this) {
                if (this.rawContent == null || !"gzip".equals(this.headers.get("Content-Encoding"))) {
                    this.content = this.rawContent;
                } else {
                    this.content = new GZIPInputStream(this.rawContent);
                }
            }
        }
        return this.content;
    }

    public Map<String, String> getHeaders() {
        return this.headers;
    }

    public InputStream getRawContent() throws IOException {
        return this.rawContent;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public String getStatusText() {
        return this.statusText;
    }
}
