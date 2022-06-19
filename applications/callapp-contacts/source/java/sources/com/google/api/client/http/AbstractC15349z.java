package com.google.api.client.http;

import com.google.api.client.p379a.AbstractC15211ad;
import java.io.IOException;
/* renamed from: com.google.api.client.http.z */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/z.class */
public abstract class AbstractC15349z {
    private String contentEncoding;
    private long contentLength = -1;
    private String contentType;
    private AbstractC15211ad streamingContent;

    public abstract void addHeader(String str, String str2) throws IOException;

    public abstract AbstractC15313aa execute() throws IOException;

    public final String getContentEncoding() {
        return this.contentEncoding;
    }

    public final long getContentLength() {
        return this.contentLength;
    }

    public final String getContentType() {
        return this.contentType;
    }

    public final AbstractC15211ad getStreamingContent() {
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

    public final void setStreamingContent(AbstractC15211ad abstractC15211ad) throws IOException {
        this.streamingContent = abstractC15211ad;
    }

    public void setTimeout(int i, int i2) throws IOException {
    }

    public void setWriteTimeout(int i) throws IOException {
    }
}
