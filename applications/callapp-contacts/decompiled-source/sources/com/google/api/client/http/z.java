package com.google.api.client.http;

import com.google.api.client.a.ad;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/z.class */
public abstract class z {
    private String contentEncoding;
    private long contentLength = -1;
    private String contentType;
    private ad streamingContent;

    public abstract void addHeader(String str, String str2) throws IOException;

    public abstract aa execute() throws IOException;

    public final String getContentEncoding() {
        return this.contentEncoding;
    }

    public final long getContentLength() {
        return this.contentLength;
    }

    public final String getContentType() {
        return this.contentType;
    }

    public final ad getStreamingContent() {
        return this.streamingContent;
    }

    public final void setContentEncoding(String str) throws IOException {
        this.contentEncoding = str;
    }

    public final void setContentLength(long j) throws IOException {
        this.contentLength = j;
    }

    public final void setContentType(String str) throws IOException {
        this.contentType = str;
    }

    public final void setStreamingContent(ad adVar) throws IOException {
        this.streamingContent = adVar;
    }

    public void setTimeout(int i, int i2) throws IOException {
    }

    public void setWriteTimeout(int i) throws IOException {
    }
}
