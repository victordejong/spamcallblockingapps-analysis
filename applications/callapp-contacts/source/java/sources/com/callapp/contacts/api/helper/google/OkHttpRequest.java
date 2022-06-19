package com.callapp.contacts.api.helper.google;

import com.google.api.client.http.AbstractC15313aa;
import com.google.api.client.http.AbstractC15349z;
import com.google.common.base.C15391m;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/google/OkHttpRequest.class */
final class OkHttpRequest extends AbstractC15349z {

    /* renamed from: a */
    private final HttpURLConnection f24848a;

    public OkHttpRequest(HttpURLConnection httpURLConnection) {
        this.f24848a = httpURLConnection;
        httpURLConnection.setInstanceFollowRedirects(false);
    }

    @Override // com.google.api.client.http.AbstractC15349z
    public final void addHeader(String str, String str2) {
        this.f24848a.addRequestProperty(str, str2);
    }

    @Override // com.google.api.client.http.AbstractC15349z
    public final AbstractC15313aa execute() throws IOException {
        HttpURLConnection httpURLConnection = this.f24848a;
        if (getStreamingContent() != null) {
            String contentType = getContentType();
            if (contentType != null) {
                addHeader("Content-Type", contentType);
            }
            String contentEncoding = getContentEncoding();
            if (contentEncoding != null) {
                addHeader("Content-Encoding", contentEncoding);
            }
            long contentLength = getContentLength();
            int i = (contentLength > 0L ? 1 : (contentLength == 0L ? 0 : -1));
            if (i >= 0) {
                addHeader("Content-Length", Long.toString(contentLength));
            }
            String requestMethod = httpURLConnection.getRequestMethod();
            if ("POST".equals(requestMethod) || "PUT".equals(requestMethod)) {
                httpURLConnection.setDoOutput(true);
                if (i < 0 || contentLength > 2147483647L) {
                    httpURLConnection.setChunkedStreamingMode(0);
                } else {
                    httpURLConnection.setFixedLengthStreamingMode((int) contentLength);
                }
                OutputStream outputStream = httpURLConnection.getOutputStream();
                try {
                    getStreamingContent().writeTo(outputStream);
                    if (outputStream != null) {
                        outputStream.close();
                    }
                } finally {
                    try {
                        throw th;
                    } catch (Throwable th) {
                    }
                }
            } else {
                C15391m.m8936a(i == 0, "%s with non-zero content length is not supported", requestMethod);
            }
        }
        try {
            httpURLConnection.connect();
            return new OkHttpResponse(httpURLConnection);
        } catch (Throwable th2) {
            httpURLConnection.disconnect();
            throw th2;
        }
    }

    @Override // com.google.api.client.http.AbstractC15349z
    public final void setTimeout(int i, int i2) {
        this.f24848a.setReadTimeout(i2);
        this.f24848a.setConnectTimeout(i);
    }
}
